#!/usr/bin/env bash
# Downloads the Highcharts TypeScript definitions (the main highcharts.d.ts
# plus every per-series-module augmentation it references) that
# extract.js parses. Defaults to whatever Highcharts version npm/jsdelivr
# currently resolve "latest" to, so a plain run always regenerates against
# the newest release; pass a version (e.g. `./fetch_dts.sh 12.1.0`) to pin.
set -euo pipefail

HIGHCHARTS_VERSION="${1:-latest}"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
OUT_DIR="$SCRIPT_DIR/.dts_cache"

rm -rf "$OUT_DIR"
mkdir -p "$OUT_DIR/options"

echo "Resolving highcharts@${HIGHCHARTS_VERSION}..."
RESOLVED_VERSION="$(curl -sf "https://data.jsdelivr.com/v1/packages/npm/highcharts/resolved?specifier=${HIGHCHARTS_VERSION}" \
  | node -e 'process.stdout.write(JSON.parse(require("fs").readFileSync(0,"utf8")).version)')"
echo "$RESOLVED_VERSION" > "$SCRIPT_DIR/.highcharts_version"
BASE_URL="https://cdn.jsdelivr.net/npm/highcharts@${RESOLVED_VERSION}"

echo "Fetching highcharts@${RESOLVED_VERSION} highcharts.d.ts..."
curl -sf "$BASE_URL/highcharts.d.ts" -o "$OUT_DIR/highcharts.d.ts"

# The main file pulls in one .d.ts per series/indicator via bare
# `import "./options/<name>";` statements; each augments shared interfaces
# (declare module "../highcharts") rather than exporting standalone types,
# so they all need to be fetched and parsed together.
grep -oE '"\./options/[a-z0-9_-]+"' "$OUT_DIR/highcharts.d.ts" \
  | tr -d '"' | sed 's#^\./##' | sort -u > "$OUT_DIR/.submodules"

echo "Fetching $(wc -l < "$OUT_DIR/.submodules" | tr -d ' ') series/indicator modules..."
# Batched (not rolling) concurrency: `wait -n` needs bash 4.3+, which macOS
# doesn't ship (its default /bin/bash is 3.2). Plain `wait` after every
# batch works on both and is still plenty fast for ~100 small files.
batch=0
while read -r mod; do
  curl -sf "$BASE_URL/${mod}.d.ts" -o "$OUT_DIR/${mod}.d.ts" &
  batch=$((batch + 1))
  if [ "$batch" -ge 12 ]; then
    wait
    batch=0
  fi
done < "$OUT_DIR/.submodules"
wait
rm "$OUT_DIR/.submodules"

echo "Done: $(find "$OUT_DIR" -name '*.d.ts' | wc -l | tr -d ' ') files in $OUT_DIR"
