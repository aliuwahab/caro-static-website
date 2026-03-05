#!/usr/bin/env bash
# Download HD hero image from Unsplash (free license).
# Cause/project images stay from caroghana.org (real project photos) – use download-cause-images.sh to restore.
# Run from project root: ./scripts/download-hd-images.sh

DIR="$(cd "$(dirname "$0")/.." && pwd)/images"
mkdir -p "$DIR"
BASE="https://images.unsplash.com"

echo "Downloading HD hero image to $DIR/hero.jpg ..."
if curl -sL --max-time 45 -o "$DIR/hero.jpg" "$BASE/photo-1547471080-7cc2caa01a7e?ixlib=rb-4.0.3&auto=format&fit=crop&w=1920&q=85"; then
  echo "Done."
else
  echo "Failed. Run with internet access."
fi
