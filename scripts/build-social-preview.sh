#!/usr/bin/env bash
#
# build-social-preview.sh — Compose the GitHub social-preview card.
#
# GitHub recommends 1280×640 with a 40pt safe zone. This script builds a
# split layout: title block on the left, hero arena on the right, dark
# navy background matching the in-game palette.
#
# Usage:
#   scripts/build-social-preview.sh
#
# Output:
#   assets/social-preview.png (1280×640)

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
FONT="${REPO_ROOT}/assets/fonts/PressStart2P-Regular.ttf"
HERO_NO_TEXT="${REPO_ROOT}/assets/startscreen-upscaled.png"
OUT="${REPO_ROOT}/assets/social-preview.png"

if [ ! -f "${FONT}" ]; then
  echo "ERROR: font not found at ${FONT}" >&2
  exit 1
fi
if [ ! -f "${HERO_NO_TEXT}" ]; then
  echo "ERROR: hero source not found at ${HERO_NO_TEXT}" >&2
  exit 1
fi

mkdir -p "$(dirname "${OUT}")"

# 1) Build a 1280×640 dark-navy canvas matching the in-game palette.
# 2) Resize the no-text hero to 480×480 and composite into the right half.
# 3) Add title (cyan, two-line) and subtitle (magenta) in the left half.
# 4) Add a small footer line with the repo handle.

magick -size 1280x640 "xc:#0B0F2E" \
  \( "${HERO_NO_TEXT}" -resize 480x480 \) -gravity east -geometry +80+0 -composite \
  -font "${FONT}" \
  -pointsize 56 -fill "#00FFFF" -gravity west -annotate +80-100 "RETRO PONG" \
  -pointsize 56 -fill "#00FFFF" -gravity west -annotate +80-30  "CIRCUIT" \
  -pointsize 18 -fill "#FF66FF" -gravity west -annotate +80+50  "LAST ARCADE OF THE GALAXY" \
  -pointsize 12 -fill "#7A8AB8" -gravity west -annotate +80+220 "github.com/GmanFooFoo/retro-pong-circuit" \
  "${OUT}"

echo "✓ Social preview written: ${OUT}"
echo "  Upload via: GitHub repo → Settings → Social preview → Edit → upload assets/social-preview.png"
