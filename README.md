<p align="center">
  <img src="https://raw.githubusercontent.com/senthilnasa/high_chart/master/img/high_chart_logo.jpg" alt="High Chart logo">
</p>

<p align="center">
  <a href="https://pub.dev/packages/high_chart"><img src="https://img.shields.io/pub/v/high_chart.svg?label=high_chart&color=blue" alt="pub package"></a>
  <a href="https://pub.dev/packages/high_chart/score"><img src="https://img.shields.io/pub/points/high_chart?logo=dart" alt="pub points"></a>
  <a href="https://pub.dev/packages/high_chart/score"><img src="https://img.shields.io/pub/likes/high_chart?logo=dart" alt="pub likes"></a>
  <a href="https://github.com/senthilnasa/high_chart/actions"><img src="https://github.com/senthilnasa/high_chart/workflows/build/badge.svg" alt="build"></a>
  <a href="https://github.com/senthilnasa/high_chart/blob/master/LICENSE"><img src="https://img.shields.io/github/license/senthilnasa/high_chart" alt="license"></a>
</p>

# High Chart for Flutter

A Flutter wrapper around [Highcharts (.JS)](https://www.highcharts.com/) for building rich, interactive charts — line, column, pie, area, combination charts, and more — with a single, consistent API.

**Supports Android, iOS, Web, Windows, and macOS.** Linux is declared as a
plugin platform but not yet actually implemented — see
[Platform support](#platform-support).

## Features

- 🎯 Full access to the [Highcharts JS API](https://api.highcharts.com/highcharts) via a simple JSON/JS configuration string, or a fully typed, IDE-autocompleted `HCOptions` API generated from Highcharts' own TypeScript definitions
- 🌐 Works everywhere Flutter runs — mobile, desktop, and web from the same codebase
- 🌗 Built-in light, dark, and system theme support
- 📦 Load Highcharts scripts from the network or bundle them locally as assets
- ⚙️ Global Highcharts configuration via `Highcharts.setOptions()` (e.g. `lang`)
- 📡 Two-way communication: chart events (selection, click, zoom, …) can call back into Flutter
- 💾 Native chart export to PNG/JPEG/SVG — saved straight to disk on Android, iOS, macOS, and Windows, no manual download plumbing
- 🔗 External links inside charts open in the system browser instead of hijacking the in-app WebView

## Installation

Add `high_chart` to your `pubspec.yaml`:

```yaml
dependencies:
  high_chart: ^2.8.1
```

Then fetch the package:

```sh
flutter pub get
```

## Usage

```dart
import 'package:flutter/material.dart';
import 'package:high_chart/high_chart.dart';

class ExampleChart extends StatelessWidget {
  const ExampleChart({super.key});

  final String _chartData = '''{
    title: { text: 'Monthly Sales' },
    xAxis: {
      categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May']
    },
    series: [{
      type: 'column',
      name: 'Revenue',
      data: [3, 2, 1, 3, 3]
    }]
  }''';

  @override
  Widget build(BuildContext context) {
    return HighCharts(
      size: const Size(400, 300),
      data: _chartData,
      networkScripts: const [
        'https://code.highcharts.com/highcharts.js',
      ],
    );
  }
}
```

The `data` string is standard Highcharts configuration — see the [Highcharts API reference](https://api.highcharts.com/highcharts) for every option available (series types, axes, tooltips, legends, exporting, and more).

### Typed options (`HCOptions`)

As an alternative to hand-writing a `data` string, pass `options` — a fully
typed, IDE-autocompleted configuration tree generated from Highcharts' own
TypeScript definitions (`HCOptions`, `HCChartOptions`, `HCSeriesLineOptions`,
`HCTitleOptions`, and ~4,900 more, one per Highcharts option group):

```dart
import 'package:high_chart/high_chart.dart';

HighCharts(
  size: const Size(400, 300),
  options: HCOptions(
    title: HCTitleOptions(text: 'Monthly Sales'),
    xAxis: HCXAxisOptions(
      categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May'],
    ),
    series: [
      HCSeriesColumnOptions(name: 'Revenue', data: [3, 2, 1, 3, 3]),
    ],
  ),
  networkScripts: const ['https://code.highcharts.com/highcharts.js'],
)
```

`data` and `options` are mutually exclusive — provide exactly one. Every
field is optional and only set fields are sent to the chart, so there's no
need to fill in an entire options tree just to change one value.

A few things worth knowing:

- **Callbacks/formatters aren't in the typed API.** A JS function can't be
  represented in a JSON payload sent from Dart, so properties like
  `tooltip.formatter` don't have a typed field. Use `data` for charts that
  need them, or combine both — see below.
- **`series` (and a few similarly "any one of ~100 shapes" properties) is
  `dynamic`.** Highcharts' `series` type is a union of one interface per
  series type, which Dart can't model as a single field type. The typed
  series classes (`HCSeriesLineOptions`, `HCSeriesPieOptions`, …) still
  exist and are still fully typed — just put them in the list directly:
  `series: [HCSeriesLineOptions(...), HCSeriesPieOptions(...)]`.
- **Raw maps still work inside typed options.** Any `dynamic` slot (like
  `series`) also accepts a plain `Map`/`List`/primitive — useful for the
  rare option the generator skipped, or for gradually migrating a `data`
  string over: `series: [{'type': 'line', 'data': [1, 2, 3]}]` serializes
  exactly as if you'd written it in a `data` string.

See `tool/generate_options/README.md` for how the typed API is generated
and how to regenerate it against a newer Highcharts release.

### Loading scripts

Highcharts JS can be loaded either from a CDN or bundled with your app:

```dart
HighCharts(
  size: const Size(400, 300),
  data: _chartData,
  // From the network
  networkScripts: const [
    'https://code.highcharts.com/highcharts.js',
    'https://code.highcharts.com/modules/exporting.js',
  ],
  // Or bundled as local assets (declared in pubspec.yaml)
  localScripts: const [
    'res/highcharts.js',
    'res/exporting.js',
  ],
)
```

> **Web platform:** Highcharts scripts must additionally be included directly in `web/index.html`.

### Exporting charts (PNG/JPEG/SVG)

Load `exporting.js` **and** `offline-exporting.js` together:

```dart
networkScripts: const [
  'https://code.highcharts.com/highcharts.js',
  'https://code.highcharts.com/modules/exporting.js',
  'https://code.highcharts.com/modules/offline-exporting.js',
],
```

Without `offline-exporting.js`, the export menu sends the chart to Highcharts'
cloud server and expects the response back as a browser file download.
`offline-exporting.js` renders the file **entirely client-side** as a `data:`
URI instead, removing that network round-trip.

On **Android, iOS, macOS, and Windows**, the plugin intercepts that
client-side download and saves the file natively — to the platform's real
Downloads folder where one exists (desktop), falling back to the app's own
storage elsewhere (iOS Documents; Android app-specific external storage, not
the public Downloads folder — reaching that on Android needs `MediaStore`,
which this plugin doesn't yet do). **Web** downloads the usual browser way
and needs no special handling.

> **macOS App Sandbox:** a sandboxed macOS app (the default for
> `flutter create`) can't write to `~/Downloads` at all until it declares
> that entitlement. Add to both
> `macos/Runner/DebugProfile.entitlements` and
> `macos/Runner/Release.entitlements`:
> ```xml
> <key>com.apple.security.files.downloads.read-write</key>
> <true/>
> ```
> Without it, the save fails with a `PathAccessException` (`Operation not
> permitted`) and is reported via `onEvent` as `{event: 'export', status:
> 'error', ...}` rather than crashing.

Pass `onEvent` to be notified when a save finishes:

```dart
HighCharts(
  size: const Size(400, 300),
  data: _chartData,
  networkScripts: const [
    'https://code.highcharts.com/highcharts.js',
    'https://code.highcharts.com/modules/exporting.js',
    'https://code.highcharts.com/modules/offline-exporting.js',
  ],
  onEvent: (event) {
    if (event is Map && event['event'] == 'export') {
      if (event['status'] == 'success') {
        print('Saved to ${event['path']}');
      } else {
        print('Export failed: ${event['message']}');
      }
    }
  },
)
```

### Theming

```dart
HighCharts(
  size: const Size(400, 300),
  data: _chartData,
  networkScripts: const ['https://code.highcharts.com/highcharts.js'],
  themeMode: ThemeMode.dark, // ThemeMode.system, ThemeMode.light, ThemeMode.dark
)
```

### Custom loader

```dart
HighCharts(
  size: const Size(400, 300),
  data: _chartData,
  networkScripts: const ['https://code.highcharts.com/highcharts.js'],
  loader: const SizedBox(
    width: 200,
    child: LinearProgressIndicator(),
  ),
)
```

### Global options

Settings that live outside a single chart's configuration — such as `lang` —
are applied via `Highcharts.setOptions()` before the chart is created, using
the `globalOptions` parameter:

```dart
HighCharts(
  size: const Size(400, 300),
  data: _chartData,
  networkScripts: const ['https://code.highcharts.com/highcharts.js'],
  globalOptions: '''{
    lang: { decimalPoint: ',', thousandsSep: '.' }
  }''',
)
```

### Receiving events from the chart

Register an `onEvent` callback to receive data sent from the chart's
JavaScript. Call the `sendToFlutter(data)` helper — injected into every
chart automatically — from any Highcharts event handler in `data`:

```dart
HighCharts(
  size: const Size(400, 300),
  data: '''{
    chart: { zoomType: 'x' },
    xAxis: {
      events: {
        setExtremes: function (e) {
          if (typeof e.min === 'number' && typeof e.max === 'number') {
            sendToFlutter({ min: e.min, max: e.max });
          }
        }
      }
    },
    series: [{ data: [1, 4, 3, 5, 2, 6] }]
  }''',
  networkScripts: const ['https://code.highcharts.com/highcharts.js'],
  onEvent: (event) {
    // event is the JSON-decoded payload passed to sendToFlutter(),
    // e.g. {min: 1.2, max: 4.8}
    print('Selected range: $event');
  },
)
```

> `onEvent` also delivers the plugin's own export-status reports (see
> [Exporting charts](#exporting-charts-pngjpegsvg) above) as
> `{event: 'export', status: ..., ...}` — check for that shape first if you
> handle both.

## Platform support

| Android | iOS | Web | Windows | macOS | Linux |
|:-------:|:---:|:---:|:-------:|:-----:|:-----:|
|    ✅    |  ✅  |  ✅  |    ✅    |   ✅   |   ❌   |

Linux is registered as a plugin platform (`pubspec.yaml` declares it, and
there's a native stub under `linux/`), but there's no actual chart-rendering
implementation behind it yet — a `HighCharts` widget on Linux currently
renders an "Unsupported Platform" placeholder. Contributions welcome; it'd
need a Linux-capable WebView (e.g. via a CEF-based package) wired up the
same way `lib/src/mobile/` and `lib/src/windows/` are.

## Example

A complete, runnable example gallery is available in the [`example/`](example) directory, demonstrating multiple chart types, theme switching, `globalOptions`, `onEvent`, and the typed `HCOptions` API.

## Documentation

For a deeper dive into configuration and advanced usage, see the [project wiki](https://github.com/senthilnasa/high_chart/wiki).

## Contributing

Issues and pull requests are welcome on [GitHub](https://github.com/senthilnasa/high_chart). Please check the [changelog](CHANGELOG.md) before reporting a bug that may already be fixed.

## License

This project is licensed under the terms of the [LICENSE](LICENSE) file included in this repository.
