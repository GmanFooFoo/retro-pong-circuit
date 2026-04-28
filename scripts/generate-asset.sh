#!/usr/bin/env bash
#
# generate-asset.sh — Generate a pixel-art asset via the Retro Diffusion API.
#
# Usage:
#   scripts/generate-asset.sh <prompt-file> <out-png> [style] [width] [height] [check_cost] [num_images]
#
# Examples:
#   # Estimate cost only (no credits spent), 2 variants:
#   scripts/generate-asset.sh prompts/startscreen-no-text.txt assets/startscreen.png rd_pro__scifi 256 256 true 2
#
#   # Generate 2 actual variants:
#   scripts/generate-asset.sh prompts/startscreen-no-text.txt assets/startscreen.png rd_pro__scifi 256 256 false 2
#
# Defaults:
#   style       = rd_pro__scifi
#   width       = 256
#   height      = 256
#   check_cost  = false
#   num_images  = 1
#
# Output naming:
#   - If num_images = 1: writes <out-png> directly, plus <out-png-stem>-upscaled.png
#   - If num_images > 1: writes <out-png-stem>-01.png, -02.png, ... plus matching -NN-upscaled.png
#
# Requirements:
#   - bash, curl, jq (install: brew install jq)
#   - .env.local in repo root with: RETRO_DIFFUSION_API_KEY=rd_pk_...
#
# Optional (for nearest-neighbor upscaling to 1024x1024 — preserves crisp pixels):
#   - ImageMagick (brew install imagemagick), OR
#   - Python 3 with Pillow (pip3 install Pillow)
#
# Output:
#   - <out-png>            : raw API output (256x256 by default)
#   - <out-png>.upscaled.png : 1024x1024 nearest-neighbor upscale (if upscaler available)

set -euo pipefail

# --- Resolve repo root and load .env.local ---
REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
ENV_FILE="${REPO_ROOT}/.env.local"

if [ ! -f "${ENV_FILE}" ]; then
  echo "ERROR: ${ENV_FILE} not found." >&2
  echo "Create it with: echo 'RETRO_DIFFUSION_API_KEY=rd_pk_your_key' > ${ENV_FILE}" >&2
  exit 1
fi

# shellcheck disable=SC1090
set -a; . "${ENV_FILE}"; set +a
: "${RETRO_DIFFUSION_API_KEY:?RETRO_DIFFUSION_API_KEY not set in ${ENV_FILE}}"

# --- Dependencies ---
command -v curl > /dev/null || { echo "ERROR: curl not found." >&2; exit 1; }
command -v jq   > /dev/null || { echo "ERROR: jq not found. Install: brew install jq" >&2; exit 1; }

# --- Arguments ---
PROMPT_FILE="${1:-}"
OUT_FILE="${2:-}"
STYLE="${3:-rd_pro__scifi}"
WIDTH="${4:-256}"
HEIGHT="${5:-256}"
CHECK_COST="${6:-false}"
NUM_IMAGES="${7:-1}"

if [ -z "${PROMPT_FILE}" ] || [ -z "${OUT_FILE}" ]; then
  echo "Usage: $0 <prompt-file> <out-png> [style] [width] [height] [check_cost] [num_images]" >&2
  exit 1
fi

if [ ! -f "${PROMPT_FILE}" ]; then
  echo "ERROR: prompt file not found: ${PROMPT_FILE}" >&2
  exit 1
fi

PROMPT_TEXT="$(cat "${PROMPT_FILE}")"

# --- Build request body ---
BODY=$(jq -n \
  --arg prompt       "${PROMPT_TEXT}" \
  --arg style        "${STYLE}" \
  --argjson width      "${WIDTH}" \
  --argjson height     "${HEIGHT}" \
  --argjson check_cost "${CHECK_COST}" \
  --argjson num_images "${NUM_IMAGES}" \
  '{
    prompt:       $prompt,
    prompt_style: $style,
    width:        $width,
    height:       $height,
    num_images:   $num_images,
    check_cost:   $check_cost
  }')

# --- Call API ---
echo "→ POST https://api.retrodiffusion.ai/v1/inferences"
echo "  style=${STYLE}  size=${WIDTH}x${HEIGHT}  num_images=${NUM_IMAGES}  check_cost=${CHECK_COST}"

RESPONSE=$(curl -sS -X POST https://api.retrodiffusion.ai/v1/inferences \
  -H "X-RD-Token: ${RETRO_DIFFUSION_API_KEY}" \
  -H "Content-Type: application/json" \
  -d "${BODY}")

# --- Surface API errors ---
if echo "${RESPONSE}" | jq -e 'has("error") or has("detail")' > /dev/null 2>&1; then
  echo "API ERROR:" >&2
  echo "${RESPONSE}" | jq . >&2
  exit 1
fi

COST=$(echo "${RESPONSE}"      | jq -r '.balance_cost      // "?"')
REMAINING=$(echo "${RESPONSE}" | jq -r '.remaining_balance // "?"')
MODEL=$(echo "${RESPONSE}"     | jq -r '.model             // "?"')

echo "  cost=${COST} credits  remaining=${REMAINING}  model=${MODEL}"

if [ "${CHECK_COST}" = "true" ]; then
  echo "✓ Check-cost mode complete — no image generated."
  exit 0
fi

# --- Decode base64 images ---
IMG_COUNT=$(echo "${RESPONSE}" | jq '.base64_images | length')
if [ "${IMG_COUNT}" = "0" ]; then
  echo "ERROR: response contains no base64_images." >&2
  echo "${RESPONSE}" | jq . >&2
  exit 1
fi
echo "  generated=${IMG_COUNT} image(s)"

OUT_DIR="$(dirname "${OUT_FILE}")"
OUT_BASE="$(basename "${OUT_FILE}" .png)"
OUT_EXT="png"
mkdir -p "${OUT_DIR}"

# Helper: upscale a single PNG nearest-neighbor to 1024x1024
upscale_pixel() {
  local IN="$1" OUT="$2"
  if command -v magick > /dev/null 2>&1; then
    magick "${IN}" -filter point -resize 1024x1024 "${OUT}"
    echo "  ✓ Upscaled (ImageMagick): ${OUT}"
  elif command -v convert > /dev/null 2>&1; then
    convert "${IN}" -filter point -resize 1024x1024 "${OUT}"
    echo "  ✓ Upscaled (ImageMagick legacy): ${OUT}"
  elif python3 -c "from PIL import Image" > /dev/null 2>&1; then
    python3 - <<PYEOF
from PIL import Image
img = Image.open("${IN}")
img.resize((1024, 1024), Image.NEAREST).save("${OUT}")
PYEOF
    echo "  ✓ Upscaled (Pillow): ${OUT}"
  else
    echo "  ⚠ No upscaler available — raw ${IN} only." >&2
    echo "    Install one: brew install imagemagick   OR   pip3 install Pillow" >&2
  fi
}

# Loop over generated images and save + upscale each
for i in $(seq 0 $((IMG_COUNT - 1))); do
  if [ "${IMG_COUNT}" -eq 1 ]; then
    OUT_PATH="${OUT_FILE}"
    UP_PATH="${OUT_DIR}/${OUT_BASE}-upscaled.${OUT_EXT}"
  else
    SUFFIX="$(printf "%02d" $((i + 1)))"
    OUT_PATH="${OUT_DIR}/${OUT_BASE}-${SUFFIX}.${OUT_EXT}"
    UP_PATH="${OUT_DIR}/${OUT_BASE}-${SUFFIX}-upscaled.${OUT_EXT}"
  fi

  echo "${RESPONSE}" | jq -r ".base64_images[${i}]" | base64 --decode > "${OUT_PATH}"
  echo "✓ Saved: ${OUT_PATH} ($(file -b "${OUT_PATH}"))"
  upscale_pixel "${OUT_PATH}" "${UP_PATH}"
done
