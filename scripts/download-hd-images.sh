#!/usr/bin/env bash
# Download HD images from Unsplash (free license) for hero and cause cards.
# Run from project root: ./scripts/download-hd-images.sh
# Requires: curl, internet access

DIR="$(cd "$(dirname "$0")/.." && pwd)/images"
mkdir -p "$DIR"
BASE="https://images.unsplash.com"

download() {
  local out="$1"
  local url="$2"
  echo -n "  $out ... "
  if curl -sL --max-time 45 -o "$DIR/$out" "$url"; then
    echo "ok"
  else
    echo "failed"
  fi
}

echo "Downloading HD images to $DIR ..."

# Hero: rural Africa / community (photo-1547471080-7cc2caa01a7e)
download hero.jpg "$BASE/photo-1547471080-7cc2caa01a7e?ixlib=rb-4.0.3&auto=format&fit=crop&w=1920&q=85"

# Cause: community (use different Unsplash IDs for variety - search unsplash.com)
download cause-community.jpg "$BASE/photo-1547471080-7cc2caa01a7e?ixlib=rb-4.0.3&auto=format&fit=crop&w=1200&q=85"

# Cause: WASH / water
download cause-wash.jpg "$BASE/photo-1560493676-04071c5f467b?ixlib=rb-4.0.3&auto=format&fit=crop&w=1200&q=85"

# Cause: agriculture
download cause-agriculture.jpg "$BASE/photo-1500382017468-9049fed747ef?ixlib=rb-4.0.3&auto=format&fit=crop&w=1200&q=85"

echo "Done. Run with internet access if any failed."
