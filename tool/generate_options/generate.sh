#!/usr/bin/env bash
# Regenerates lib/src/options/ from Highcharts' TypeScript definitions.
# Defaults to the current "latest" Highcharts release — run with no
# arguments to always pick up whatever's newest:
#
#   ./generate.sh            # latest
#   ./generate.sh 12.1.0     # pinned version
#
# Then, from the package root: flutter analyze && flutter test
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PACKAGE_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"
OPTIONS_DIR="$PACKAGE_ROOT/lib/src/options"

cd "$SCRIPT_DIR"

echo "==> Installing generator dependencies..."
npm install --no-audit --no-fund --silent

echo "==> Fetching Highcharts TypeScript definitions..."
./fetch_dts.sh "${1:-latest}"

echo "==> Extracting options schema..."
node extract.js .dts_cache .schema.json

echo "==> Generating Dart classes..."
rm -rf .dart_out
node generate_dart.js .schema.json .dart_out
cp hc_option_base.dart .dart_out/hc_option_base.dart

echo "==> Syncing into ${OPTIONS_DIR#"$PACKAGE_ROOT/"}..."
rm -rf "$OPTIONS_DIR"
mkdir -p "$OPTIONS_DIR"
cp .dart_out/*.dart "$OPTIONS_DIR/"

# generate_dart.js emits raw joined strings, not canonically-formatted
# Dart — `dart format` disagreeing costs real pub.dev/pana score points
# (this has happened before), so format the output as part of generating
# it rather than relying on remembering to do it by hand.
echo "==> Formatting generated output..."
(cd "$PACKAGE_ROOT" && dart format "$OPTIONS_DIR" > /dev/null)

HC_VERSION="$(cat .highcharts_version 2>/dev/null || echo unknown)"

echo "==> Cleaning up intermediate files..."
rm -rf .dart_out .schema.json .dts_cache .highcharts_version

echo ""
echo "Done — generated typed options for Highcharts ${HC_VERSION}."
echo "Now verify from ${PACKAGE_ROOT}:"
echo "  flutter analyze && flutter test"
