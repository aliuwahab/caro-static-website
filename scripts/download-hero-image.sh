#!/usr/bin/env bash
# Download a high-resolution hero image from Pexels (free to use).
# Run from project root: ./scripts/download-hero-image.sh
# Replace images/hero.jpg with a clearer image for the hero section.

DIR="$(cd "$(dirname "$0")/.." && pwd)/images"
mkdir -p "$DIR"

# Pexels: rural community Africa (speakmediauganda). Free license.
URL="https://images.pexels.com/photos/18855930/pexels-photo-18855930.jpeg?auto=compress&cs=tinysrgb&w=1920&q=80"

echo "Downloading hero image to $DIR/hero.jpg ..."
if curl -sL --max-time 30 -o "$DIR/hero.jpg" "$URL"; then
  echo "Done. Refresh the site to see the new hero image."
else
  echo "Download failed. Try running from a machine with internet access, or replace images/hero.jpg manually with a free image from unsplash.com or pexels.com."
fi
