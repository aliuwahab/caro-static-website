#!/usr/bin/env bash
# Download HD hero image – free stock from Unsplash (Africa/rural community).
# Run from project root: ./scripts/download-hero-image.sh

DIR="$(cd "$(dirname "$0")/.." && pwd)/images"
mkdir -p "$DIR"

# Unsplash: African village, community (free license). 1920px width.
URL="https://images.unsplash.com/photo-1547471080-7cc2caa01a7e?ixlib=rb-4.0.3&auto=format&fit=crop&w=1920&q=85"

echo "Downloading HD hero image to $DIR/hero.jpg ..."
if curl -sL --max-time 45 -o "$DIR/hero.jpg" "$URL"; then
  echo "Done. Refresh the site to see the new hero image."
else
  echo "Download failed. Try: unsplash.com/s/photos/rural-africa or pexels.com/search/rural%20community%20africa"
fi
