<p align="center">
  <img src="https://raw.githubusercontent.com/senthilnasa/high_chart/master/img/high_chart_logo.jpg" alt="High Chart logo">
</p>

<p align="center">
  <a href="https://pub.dev/packages/high_chart"><img src="https://img.shields.io/pub/v/high_chart.svg?label=high_chart&color=blue" alt="pub package"></a>
  <a href="https://pub.dev/packages/high_chart/score"><img src="https://img.shields.io/pub/popularity/high_chart?logo=dart" alt="popularity"></a>
  <a href="https://pub.dev/packages/high_chart/score"><img src="https://img.shields.io/pub/points/high_chart?logo=dart" alt="pub points"></a>
  <a href="https://github.com/senthilnasa/high_chart/actions"><img src="https://github.com/senthilnasa/high_chart/workflows/build/badge.svg" alt="build"></a>
  <a href="https://github.com/senthilnasa/high_chart/blob/master/LICENSE"><img src="https://img.shields.io/github/license/senthilnasa/high_chart" alt="license"></a>
</p>

# High Chart for Flutter

A Flutter wrapper around [Highcharts (.JS)](https://www.highcharts.com/) for building rich, interactive charts — line, column, pie, area, combination charts, and more — with a single, consistent API.

**Supports all Flutter platforms:** Android, iOS, Web, Windows, macOS, and Linux.

## Features

- 🎯 Full access to the [Highcharts JS API](https://api.highcharts.com/highcharts) via a simple JSON/JS configuration string
- 🌐 Works everywhere Flutter runs — mobile, desktop, and web from the same codebase
- 🌗 Built-in light, dark, and system theme support
- 📦 Load Highcharts scripts from the network or bundle them locally as assets
- 🔗 External links inside charts open in the system browser instead of hijacking the in-app WebView

## Installation

Add `high_chart` to your `pubspec.yaml`:

```yaml
dependencies:
  high_chart: ^2.5.2
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

## Platform support

| Android | iOS | Web | Windows | macOS | Linux |
|:-------:|:---:|:---:|:-------:|:-----:|:-----:|
|    ✅    |  ✅  |  ✅  |    ✅    |   ✅   |   ✅   |

## Example

A complete, runnable example is available in the [`example/`](example) directory, demonstrating network scripts, local scripts, and theme modes.

## Documentation

For a deeper dive into configuration and advanced usage, see the [project wiki](https://github.com/senthilnasa/high_chart/wiki).

## Contributing

Issues and pull requests are welcome on [GitHub](https://github.com/senthilnasa/high_chart). Please check the [changelog](CHANGELOG.md) before reporting a bug that may already be fixed.

## License

This project is licensed under the terms of the [LICENSE](LICENSE) file included in this repository.
