#!/usr/bin/env bash
# Download partner/sponsor images from caroghana.org into images/
# Run from project root: ./scripts/download-partner-images.sh
# (Requires network access to caroghana.org.)

BASE="https://caroghana.org/wp-content/uploads"
DIR="$(cd "$(dirname "$0")/.." && pwd)/images"
mkdir -p "$DIR"
cd "$DIR"

echo "Downloading partner images to $DIR ..."

download() {
  local out="$1"
  local url="$2"
  if curl -sL --max-time 30 -o "$out" "$url" 2>/dev/null; then
    echo "  $out"
  else
    echo "  $out (failed)"
  fi
}

download partner-sdg.jpeg "$BASE/2024/04/SDG-LOGO-e1660843178519.jpeg"
download partner-coniwas.png "$BASE/2024/04/coniwas-logo.png"
download partner-8471809.jpeg "$BASE/2024/04/8471809-logo-1024x241.jpeg"

echo "Done."
