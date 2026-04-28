#!/usr/bin/env bash
#
# generate-asset.sh — Generate a pixel-art asset via the Retro Diffusion API.
#
# Usage:
#   scripts/generate-asset.sh <prompt-file> <out-png> [style] [width] [height] [check_cost]
#
# Examples:
#   # Estimate cost only (no credits spent):
#   scripts/generate-asset.sh prompts/startscreen.txt assets/startscreen.png rd_pro__scifi 256 256 true
#
#   # Generate the actual image:
#   scripts/generate-asset.sh prompts/startscreen.txt assets/startscreen.png rd_pro__scifi 256 256 false
#
# Defaults:
#   style       = rd_pro__scifi
#   width       = 256
#   height      = 256
#   check_cost  = false
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

if [ -z "${PROMPT_FILE}" ] || [ -z "${OUT_FILE}" ]; then
  echo "Usage: $0 <prompt-file> <out-png> [style] [width] [height] [check_cost]" >&2
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
  '{
    prompt:       $prompt,
    prompt_style: $style,
    width:        $width,
    height:       $height,
    num_images:   1,
    check_cost:   $check_cost
  }')

# --- Call API ---
echo "→ POST https://api.retrodiffusion.ai/v1/inferences"
echo "  style=${STYLE}  size=${WIDTH}x${HEIGHT}  check_cost=${CHECK_COST}"

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

# --- Decode base64 image ---
IMG_COUNT=$(echo "${RESPONSE}" | jq '.base64_images | length')
if [ "${IMG_COUNT}" = "0" ]; then
  echo "ERROR: response contains no base64_images." >&2
  echo "${RESPONSE}" | jq . >&2
  exit 1
fi

mkdir -p "$(dirname "${OUT_FILE}")"
echo "${RESPONSE}" | jq -r '.base64_images[0]' | base64 --decode > "${OUT_FILE}"
echo "✓ Saved: ${OUT_FILE} ($(file -b "${OUT_FILE}"))"

# --- Optional: nearest-neighbor upscale to 1024x1024 ---
UP_FILE="${OUT_FILE%.*}-upscaled.${OUT_FILE##*.}"

if command -v magick > /dev/null 2>&1; then
  magick "${OUT_FILE}" -filter point -resize 1024x1024 "${UP_FILE}"
  echo "✓ Upscaled (ImageMagick): ${UP_FILE}"
elif command -v convert > /dev/null 2>&1; then
  convert "${OUT_FILE}" -filter point -resize 1024x1024 "${UP_FILE}"
  echo "✓ Upscaled (ImageMagick legacy): ${UP_FILE}"
elif python3 -c "from PIL import Image" > /dev/null 2>&1; then
  python3 - <<PYEOF
from PIL import Image
img = Image.open("${OUT_FILE}")
img.resize((1024, 1024), Image.NEAREST).save("${UP_FILE}")
PYEOF
  echo "✓ Upscaled (Pillow): ${UP_FILE}"
else
  echo "⚠ No upscaler available. Skip upscale (raw ${OUT_FILE} is fine for direct use)." >&2
  echo "  Install one: brew install imagemagick   OR   pip3 install Pillow" >&2
fi
