# Changelog

All notable changes to the High Chart package will be documented in this file.

## [2.8.1]
### Fixes
- Boolean-typed options (e.g. `chart.polar`, `series.visible`) are now properly typed as `bool?` instead of always falling back to `dynamic` — a latent bug in the previous generator affected every boolean-typed field across the ~4,900 generated classes (TypeScript internally represents `boolean` as a union of the `true`/`false` literal types, which tripped the old generator's union-handling before it ever reached its `boolean` check)
- Fixed the two `options`-reach-the-WebView end-to-end tests failing in CI: `io.dart` only builds a real WebView-backed widget on Android/iOS/macOS/Windows, and CI's `ubuntu-latest` runner is none of those, so the tests now skip (with a clear reason) rather than fail on hosts with no WebView implementation to test against
### Changed
- Rewrote `tool/generate_options/` as a standalone Dart tool: a real tokenizer/parser for the `.d.ts` syntax Highcharts' type definitions use, plus a resolver reimplementing the specific pieces of TypeScript's type-checking this schema depends on (declaration merging, `extends` flattening, alias chasing, union collapsing). No Node.js/npm/TypeScript Compiler API needed to regenerate anymore — run `dart run tool/generate_options/bin/generate.dart`; see `tool/generate_options/README.md` for details, including the (small, enumerated) divergences from the old generator's output
- Generated classes are now grouped into ~75 files under `lib/src/options/` by Highcharts option module (e.g. `hc_plot_*.dart`, `hc_axis.dart`, `hc_tooltip.dart`) instead of one file per class, cutting the file count from ~4,900 to ~75

## [2.8.0]
### Features
- Added `options`, a fully typed, IDE-autocompleted alternative to the raw `data` string: `HCOptions` plus ~4,900 generated `HC*Options` classes (one per Highcharts option group and series type, generated against Highcharts 13), covering the full Highcharts option tree. `data` and `options` are mutually exclusive; provide exactly one
  - Generated from Highcharts' own TypeScript definitions using the real TypeScript compiler API (not hand-maintained) — run `tool/generate_options/generate.sh` to regenerate against whatever Highcharts currently publishes as `latest`; see `tool/generate_options/README.md` for details
  - Any `dynamic`-typed slot (e.g. `series`, whose real type is a ~100-way union of series-specific option types Dart can't model as one type) still accepts either a typed `HC*Options` object or a raw `Map`/`List`/primitive, so existing untyped payloads keep working unchanged, including mixed with typed options in the same tree
  - Function-typed options (formatters/callbacks) aren't represented in the typed API — Highcharts can't receive a JS function from a JSON payload either way; use `data` for charts that need them
  - Each generated class lives in its own `hc_<snake_case_name>.dart` file under `lib/src/options/`
### Documentation
- Corrected the README's platform support claims: Linux was listed as fully supported, but `HighCharts` has no real implementation on Linux (it falls through to an "Unsupported Platform" placeholder) — the `linux/` native plugin is still the unmodified `flutter create` template stub

## [2.7.0]
### Features
- Added native "save exported chart to disk" support on Android, iOS, macOS, and Windows. The plugin now intercepts the exporting module's client-side download (requires `offline-exporting.js`, see below) and writes the file to the platform's Downloads folder where one exists, falling back to app storage elsewhere. Adds a new dependency: `path_provider` (#24)
- `onEvent` now also reports export outcomes as `{event: 'export', status: 'success'|'error', ...}`
### Fixes
- Fixed asset-loading errors printing a generic "not found" message regardless of the actual failure (permission issues, corrupt bundles, etc. all looked identical); the real exception is now included
- Fixed `getLocalAssetString` swallowing the original exception with `catch (_)`, making local script failures hard to diagnose

## [2.6.0]
### Features
- Added `globalOptions`, applied via `Highcharts.setOptions()` before the chart is created, for settings such as `lang` that live outside a single chart's configuration (#29)
- Added `onEvent`, delivering data sent from the chart's JavaScript back to Flutter via an injected `sendToFlutter(data)` helper, so chart interactions (selection, click, zoom, etc.) can be handled in Dart (#25)
- Forwarded WebView JS console output (including runtime errors) to the Flutter debug console on Android/iOS/macOS, making chart configuration mistakes visible instead of silently failing in the WebView (#24)
### Fixes
- Fixed dark mode rendering title, subtitle, axis labels, legend, and tooltip text unreadably (nearly invisible against the dark background). Highcharts hard-codes light-theme colors as inline styles for these elements, which silently overrode the plugin's `.highcharts-dark` CSS; the plugin now re-points those inline defaults at the same dark palette via `Highcharts.setOptions()`
- Fixed `themeMode` changes at runtime not actually reloading the chart on Android/iOS/macOS/Web, so toggling an app's theme never updated an already-rendered chart
- Fixed the Web implementation not updating the chart container's theme class after its first render, since `registerViewFactory` only takes effect once per view
- Fixed the Windows implementation calling an undefined `senthilnasa` JS function and never rendering the chart at all, since `Highcharts.chart(...)` was registered with `addScriptToExecuteOnDocumentCreated`, which only applies to future navigations and never fires for the already-loaded page
- Closed the unclosed `<body>`/`<html>` tags in the Windows HTML template
- Fixed a JS evaluation error (e.g. from a malformed chart config) crashing the app with an unhandled exception instead of being caught and logged, on all platforms
- Documented that the exporting menu needs `offline-exporting.js` alongside `exporting.js` — without it, export relies on a round-trip to Highcharts' cloud server and a browser-style file download that the embedded WebView engines generally can't complete (#24)

## [2.5.2]
### Maintenance
- Updated package dependencies to the latest version
### Documentation
- Rewrote README with clearer usage examples, feature overview, and platform support table

## [2.5.1]
### Maintenance
- Updated package dependencies to the latest version

## [2.5.0]
### Features
- Added full Dart support across all platforms

## [2.4.1]
### Fixes
- Fixed issue with the web HighChartPlatformInterface registration

## [2.4.0]
### Features
- Added support for macOS platform
- Added support for local file scripts
### Maintenance
- Updated package dependencies to the latest version

## [2.3.1]
### Maintenance
- Updated package dependencies to the latest version

## [2.3.0]
### Features
- Added support for Windows platform

## [2.2.0]
### Features
- Added support for macOS platform
### Maintenance
- Updated package dependencies to the latest version

## [2.1.0]
### Fixes
- Fixed issue with Android Gradle version
- Fixed chart rendering issue in WebView
### Maintenance
- Updated package dependencies to the latest version

## [2.0.3]
### Fixes
- Fixed loading issue in iOS
### Maintenance
- Updated package dependencies to the latest version

## [2.0.2]
### Maintenance
- Updated package dependencies to the latest version

## [2.0.1]
### Fixes
- Fixed Highcharts link behavior to open in external browser instead of WebView

## [1.2.0]
### Features
- Added null safety support

## [1.0.1]
### Documentation
- Updated README.md

## [1.0.0]
### Features
- Initial stable release of High Chart

## [0.0.1]
- Initial release
