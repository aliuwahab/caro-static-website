#!/usr/bin/env bash
# Restore real project/cause images from caroghana.org (actual project photos).
# Run from project root: ./scripts/download-cause-images.sh

BASE="https://caroghana.org/wp-content/uploads"
DIR="$(cd "$(dirname "$0")/.." && pwd)/images"
mkdir -p "$DIR"

download() {
  local out="$1"
  local url="$2"
  echo -n "  $out ... "
  if curl -sL --max-time 30 -o "$DIR/$out" "$url" 2>/dev/null; then
    echo "ok"
  else
    echo "failed"
  fi
}

echo "Downloading cause images from caroghana.org ..."

download cause-community.jpg "$BASE/2024/03/SAM_0659-scaled-924x500.jpg"
download cause-wash.jpg "$BASE/2016/04/SAM_2308-924x500.jpg"
download cause-agriculture.jpg "$BASE/2017/01/SAM_0810-1-scaled-924x500.jpg"

echo "Done."
