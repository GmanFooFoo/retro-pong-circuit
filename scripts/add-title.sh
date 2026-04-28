#!/usr/bin/env bash
#
# add-title.sh — Composite a title and subtitle on top of a pixel-art image.
#
# Uses Press Start 2P (8-bit arcade font) for an authentic retro feel.
# Neon palette: cyan title, magenta subtitle.
#
# Usage:
#   scripts/add-title.sh <input.png> <output.png> [title] [subtitle] [title_size] [subtitle_size]
#
# Defaults:
#   title         = "RETRO PONG CIRCUIT"
#   subtitle      = "LAST ARCADE OF THE GALAXY"
#   title_size    = 36
#   subtitle_size = 18

set -euo pipefail

INPUT="${1:-}"
OUTPUT="${2:-}"
TITLE="${3:-RETRO PONG CIRCUIT}"
SUBTITLE="${4:-LAST ARCADE OF THE GALAXY}"
TITLE_SIZE="${5:-26}"
SUBTITLE_SIZE="${6:-13}"
TITLE_Y_OFFSET="${7:-160}"      # px down from center
SUBTITLE_Y_OFFSET="${8:-210}"   # px down from center

if [ -z "${INPUT}" ] || [ -z "${OUTPUT}" ]; then
  echo "Usage: $0 <input.png> <output.png> [title] [subtitle] [title_size] [subtitle_size]" >&2
  exit 1
fi

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
FONT="${REPO_ROOT}/assets/fonts/PressStart2P-Regular.ttf"

if [ ! -f "${FONT}" ]; then
  echo "ERROR: font not found at ${FONT}" >&2
  exit 1
fi

command -v magick > /dev/null || { echo "ERROR: ImageMagick not found." >&2; exit 1; }

mkdir -p "$(dirname "${OUTPUT}")"

# Title (cyan) + subtitle (magenta), positioned below the paddles in the
# dark band between paddle-bottoms and the floor grid.
magick "${INPUT}" \
  -font "${FONT}" \
  -pointsize "${TITLE_SIZE}"    -fill "#00FFFF" -gravity center -annotate "+0+${TITLE_Y_OFFSET}"    "${TITLE}" \
  -pointsize "${SUBTITLE_SIZE}" -fill "#FF66FF" -gravity center -annotate "+0+${SUBTITLE_Y_OFFSET}" "${SUBTITLE}" \
  "${OUTPUT}"

echo "✓ Title overlay written: ${OUTPUT}"
