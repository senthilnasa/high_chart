import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:high_chart/high_chart.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const HighChartsGalleryApp());
}

/// Root widget. Sets up a Material 3 light/dark theme and hosts the chart
/// gallery, so the whole demo can be toggled between themes to show off
/// [HighCharts.themeMode].
class HighChartsGalleryApp extends StatefulWidget {
  const HighChartsGalleryApp({super.key});

  @override
  State<HighChartsGalleryApp> createState() => _HighChartsGalleryAppState();
}

class _HighChartsGalleryAppState extends State<HighChartsGalleryApp> {
  ThemeMode _themeMode = ThemeMode.system;

  void _toggleTheme() {
    final isDark = _themeMode == ThemeMode.system
        ? MediaQuery.platformBrightnessOf(context) == Brightness.dark
        : _themeMode == ThemeMode.dark;
    setState(() {
      _themeMode = isDark ? ThemeMode.light : ThemeMode.dark;
    });
  }

  @override
  Widget build(BuildContext context) {
    const seedColor = Color(0xFF00838F);
    return MaterialApp(
      title: 'High Charts Gallery',
      debugShowCheckedModeBanner: false,
      themeMode: _themeMode,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: seedColor),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: seedColor,
          brightness: Brightness.dark,
        ),
      ),
      home: GalleryHomePage(
        themeMode: _themeMode,
        onToggleTheme: _toggleTheme,
      ),
    );
  }
}

/// A single gallery entry: a chart preview plus the Highcharts config that
/// produced it, so users can inspect "how it works".
class ChartExample {
  const ChartExample({
    required this.title,
    required this.subtitle,
    required this.icon,
    this.data,
    this.options,
    this.optionsSource,
    this.globalOptions,
    this.listensForEvents = false,
    this.eventHint,
  })  : assert(
          (data != null) != (options != null),
          'Provide exactly one of data or options, not both and not neither.',
        ),
        assert(
          (options == null) == (optionsSource == null),
          '`optionsSource` must be provided alongside `options`.',
        );

  final String title;
  final String subtitle;
  final IconData icon;

  /// Raw Highcharts JS config. Mutually exclusive with [options].
  final String? data;

  /// Typed alternative to [data], built from the generated `HC*Options`
  /// classes. Mutually exclusive with [data].
  final HCOptions? options;

  /// The literal Dart source that constructs [options], shown in the "How
  /// it works" tab instead of `options`'s JSON so the tab demonstrates the
  /// typed API itself rather than what it compiles down to.
  final String? optionsSource;

  /// Applied via `Highcharts.setOptions()` before the chart is created.
  final String? globalOptions;

  /// Whether this example wires an `onEvent` callback so the chart can send
  /// data back to Flutter, e.g. from a `setExtremes` handler.
  final bool listensForEvents;

  /// Shown above the chart when [listensForEvents] is true, describing what
  /// interaction to try.
  final String? eventHint;
}

final List<ChartExample> chartExamples = [
  ChartExample(
    title: 'Combination Chart',
    subtitle: 'Columns, a spline and a pie sharing one canvas',
    icon: Icons.stacked_bar_chart_rounded,
    data: _combinationChartData,
  ),
  ChartExample(
    title: 'Line Chart',
    subtitle: 'Monthly average temperature across three cities',
    icon: Icons.show_chart_rounded,
    data: _lineChartData,
  ),
  ChartExample(
    title: 'Column Chart',
    subtitle: 'Fruit consumption grouped by person',
    icon: Icons.bar_chart_rounded,
    data: _columnChartData,
  ),
  ChartExample(
    title: 'Area Chart',
    subtitle: 'Stacked worldwide population growth by region',
    icon: Icons.area_chart,
    data: _areaChartData,
  ),
  ChartExample(
    title: 'Pie Chart',
    subtitle: 'Browser market share breakdown',
    icon: Icons.pie_chart_rounded,
    data: _pieChartData,
  ),
  ChartExample(
    title: 'Scatter Chart',
    subtitle: 'Height versus weight, split by gender',
    icon: Icons.scatter_plot_rounded,
    data: _scatterChartData,
  ),
  ChartExample(
    title: 'Zoom & Events',
    subtitle: 'Drag to select a range and see it reach Flutter',
    icon: Icons.pinch_rounded,
    data: _zoomEventsChartData,
    listensForEvents: true,
    eventHint: 'Drag across the chart to select a range on the X axis.',
  ),
  ChartExample(
    title: 'Global Options (lang)',
    subtitle: 'Highcharts.setOptions() switching to a European number format',
    icon: Icons.translate_rounded,
    data: _globalOptionsChartData,
    globalOptions: _globalOptionsLang,
  ),
  ChartExample(
    title: 'Typed Options (Dart)',
    subtitle: 'The same chart built with HCOptions instead of a JS string',
    icon: Icons.data_object_rounded,
    options: _typedOptionsChart,
    optionsSource: _typedOptionsChartSource,
  ),
];

/// Demonstrates the generated, IDE-autocompleted `HC*Options` API as an
/// alternative to hand-writing a `data` string — every option below is a
/// real typed field, checked at compile time.
const HCOptions _typedOptionsChart = HCOptions(
  chart: HCChartOptions(type: 'column'),
  title: HCTitleOptions(text: 'Monthly Sales (typed)'),
  subtitle: HCSubtitleOptions(text: 'Built with HCOptions, not a JS string'),
  xAxis: HCXAxisOptions(
    categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May'],
  ),
  yAxis: HCYAxisOptions(title: HCYAxisTitleOptions(text: 'Revenue')),
  series: [
    HCSeriesColumnOptions(
      name: 'Revenue',
      data: [3, 2, 1, 3, 3],
    ),
    HCSeriesSplineOptions(
      name: 'Trend',
      data: [2, 2.2, 2, 2.6, 2.8],
    ),
  ],
);

// Kept in sync with `_typedOptionsChart` above; shown verbatim in the "How
// it works" tab so it demonstrates the typed `HC*Options` API itself,
// rather than the JSON `options.toJson()` compiles down to.
const String _typedOptionsChartSource = '''
const HCOptions chart = HCOptions(
  chart: HCChartOptions(type: 'column'),
  title: HCTitleOptions(text: 'Monthly Sales (typed)'),
  subtitle: HCSubtitleOptions(text: 'Built with HCOptions, not a JS string'),
  xAxis: HCXAxisOptions(
    categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May'],
  ),
  yAxis: HCYAxisOptions(title: HCYAxisTitleOptions(text: 'Revenue')),
  series: [
    HCSeriesColumnOptions(
      name: 'Revenue',
      data: [3, 2, 1, 3, 3],
    ),
    HCSeriesSplineOptions(
      name: 'Trend',
      data: [2, 2.2, 2, 2.6, 2.8],
    ),
  ],
);''';

/// Landing page: a responsive grid of chart cards, Material-gallery style.
class GalleryHomePage extends StatelessWidget {
  const GalleryHomePage({
    super.key,
    required this.themeMode,
    required this.onToggleTheme,
  });

  final ThemeMode themeMode;
  final VoidCallback onToggleTheme;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('High Charts Gallery'),
        actions: [
          IconButton(
            tooltip: 'Toggle light / dark theme',
            icon: Icon(
              Theme.of(context).brightness == Brightness.dark
                  ? Icons.light_mode_outlined
                  : Icons.dark_mode_outlined,
            ),
            onPressed: onToggleTheme,
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final crossAxisCount = switch (constraints.maxWidth) {
            > 900 => 3,
            > 600 => 2,
            _ => 1,
          };
          return GridView.builder(
            padding: const EdgeInsets.all(16),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              mainAxisExtent: 184,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
            ),
            itemCount: chartExamples.length,
            itemBuilder: (context, index) {
              return _ExampleCard(example: chartExamples[index]);
            },
          );
        },
      ),
    );
  }
}

class _ExampleCard extends StatelessWidget {
  const _ExampleCard({required this.example});

  final ChartExample example;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => ChartDetailPage(example: example),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 22,
                backgroundColor: colorScheme.primaryContainer,
                child:
                    Icon(example.icon, color: colorScheme.onPrimaryContainer),
              ),
              const SizedBox(height: 12),
              Text(
                example.title,
                style: textTheme.titleMedium,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 4),
              Text(
                example.subtitle,
                style: textTheme.bodySmall?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const Spacer(),
              Align(
                alignment: Alignment.centerRight,
                child: Icon(
                  Icons.arrow_forward_rounded,
                  size: 18,
                  color: colorScheme.primary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum _ViewMode { chart, source }

/// Detail page for one example: a "Chart" / "How it works" toggle switches
/// between the rendered HighCharts widget and the raw config that drives it.
class ChartDetailPage extends StatefulWidget {
  const ChartDetailPage({super.key, required this.example});

  final ChartExample example;

  @override
  State<ChartDetailPage> createState() => _ChartDetailPageState();
}

class _ChartDetailPageState extends State<ChartDetailPage> {
  _ViewMode _mode = _ViewMode.chart;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.example.title)),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
            child: SegmentedButton<_ViewMode>(
              segments: const [
                ButtonSegment(
                  value: _ViewMode.chart,
                  label: Text('Chart'),
                  icon: Icon(Icons.show_chart_rounded),
                ),
                ButtonSegment(
                  value: _ViewMode.source,
                  label: Text('How it works'),
                  icon: Icon(Icons.code_rounded),
                ),
              ],
              selected: {_mode},
              onSelectionChanged: (selection) {
                setState(() => _mode = selection.first);
              },
            ),
          ),
          Expanded(
            child: switch (_mode) {
              _ViewMode.chart => _ChartView(example: widget.example),
              _ViewMode.source => _SourceView(example: widget.example),
            },
          ),
        ],
      ),
    );
  }
}

class _ChartView extends StatefulWidget {
  const _ChartView({required this.example});

  final ChartExample example;

  @override
  State<_ChartView> createState() => _ChartViewState();
}

class _ChartViewState extends State<_ChartView> {
  Object? _lastEvent;

  // Handles every message the chart sends back via `sendToFlutter`: the
  // plugin's own export-status reports, plus (for the Zoom & Events
  // example) the chart's own custom selection events.
  void _onEvent(BuildContext context, ChartExample example, dynamic event) {
    if (event is Map && event['event'] == 'export') {
      final bool success = event['status'] == 'success';
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            success
                ? 'Exported to ${event['path']}'
                : 'Export failed: ${event['message']}',
          ),
        ),
      );
      return;
    }
    if (example.listensForEvents) {
      setState(() => _lastEvent = event);
    }
  }

  @override
  Widget build(BuildContext context) {
    final example = widget.example;
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (example.eventHint != null) ...[
            Card(
              color: Theme.of(context).colorScheme.secondaryContainer,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    Icon(
                      Icons.touch_app_rounded,
                      color: Theme.of(context).colorScheme.onSecondaryContainer,
                    ),
                    const SizedBox(width: 12),
                    Expanded(child: Text(example.eventHint!)),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),
          ],
          LayoutBuilder(
            builder: (context, constraints) {
              final width = constraints.maxWidth;
              final height = (width * 0.65).clamp(280.0, 480.0);
              final brightness = Theme.of(context).brightness;
              final themeMode = brightness == Brightness.dark
                  ? ThemeMode.dark
                  : ThemeMode.light;
              return Card(
                clipBehavior: Clip.antiAlias,
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: HighCharts(
                    key: ValueKey('${example.title}-$themeMode'),
                    loader: const Center(child: CircularProgressIndicator()),
                    size: Size(width - 24, height),
                    data: example.data,
                    options: example.options,
                    themeMode: themeMode,
                    globalOptions: example.globalOptions,
                    onEvent: (event) => _onEvent(context, example, event),
                    localScripts: const [
                      'res/highcharts.js',
                      'res/exporting.js',
                      'res/offline-exporting.js',
                      'res/accessibility.js',
                      'res/networkgraph.js',
                    ],
                  ),
                ),
              );
            },
          ),
          if (example.listensForEvents) ...[
            const SizedBox(height: 12),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    const Icon(Icons.arrow_downward_rounded, size: 18),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        _lastEvent == null
                            ? 'Waiting for an event from the chart…'
                            : 'onEvent received: $_lastEvent',
                        style: const TextStyle(fontFamily: 'monospace'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class _SourceView extends StatelessWidget {
  const _SourceView({required this.example});

  final ChartExample example;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final bool isTyped = example.options != null;
    final String source =
        isTyped ? example.optionsSource!.trim() : example.data!.trim();
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            isTyped
                ? 'This chart is built from the generated, IDE-autocompleted '
                    '`HC*Options` classes below instead of a hand-written '
                    'JS config string.'
                : 'This is the Highcharts configuration passed to the `data` '
                    'parameter of the HighCharts widget for this example.',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 12),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: colorScheme.surfaceContainerHighest,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Stack(
                children: [
                  SingleChildScrollView(
                    padding: const EdgeInsets.fromLTRB(16, 16, 48, 16),
                    child: SelectableText(
                      source,
                      style: const TextStyle(
                        fontFamily: 'monospace',
                        fontSize: 13,
                        height: 1.5,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 4,
                    right: 4,
                    child: IconButton(
                      tooltip: 'Copy to clipboard',
                      icon: const Icon(Icons.copy_rounded, size: 20),
                      onPressed: () {
                        Clipboard.setData(ClipboardData(text: source));
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Copied to clipboard')),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _combinationChartData = '''{
    title: {
        text: 'Combination chart'
    },
    xAxis: {
        categories: ['Apples', 'Oranges', 'Pears', 'Bananas', 'Plums']
    },
    labels: {
        items: [{
            html: 'Total fruit consumption',
            style: {
                left: '50px',
                top: '18px',
                color: (
                    Highcharts.defaultOptions.title.style &&
                    Highcharts.defaultOptions.title.style.color
                ) || 'black'
            }
        }]
    },
    series: [{
        type: 'column',
        name: 'Jane',
        data: [3, 2, 1, 3, 3]
    }, {
        type: 'column',
        name: 'John',
        data: [2, 4, 5, 7, 6]
    }, {
        type: 'column',
        name: 'Joe',
        data: [4, 3, 3, 5, 0]
    }, {
        type: 'spline',
        name: 'Average',
        data: [3, 2.67, 3, 6.33, 3.33],
        marker: {
            lineWidth: 2,
            lineColor: Highcharts.getOptions().colors[3],
            fillColor: 'white'
        }
    }, {
        type: 'pie',
        name: 'Total consumption',
        data: [{
            name: 'Jane',
            y: 13,
            color: Highcharts.getOptions().colors[0]
        }, {
            name: 'John',
            y: 23,
            color: Highcharts.getOptions().colors[1]
        }, {
            name: 'Joe',
            y: 19,
            color: Highcharts.getOptions().colors[2]
        }],
        center: [100, 80],
        size: 100,
        showInLegend: false,
        dataLabels: {
            enabled: false
        }
    }]
}''';

const String _lineChartData = '''{
    title: {
        text: 'Monthly Average Temperature'
    },
    subtitle: {
        text: 'Source: openweathermap.org'
    },
    xAxis: {
        categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
    },
    yAxis: {
        title: {
            text: 'Temperature (°C)'
        }
    },
    plotOptions: {
        series: {
            marker: {
                enabled: true
            }
        }
    },
    series: [{
        name: 'Tokyo',
        data: [7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6]
    }, {
        name: 'New York',
        data: [-0.2, 0.8, 5.7, 11.3, 17.0, 22.0, 24.8, 24.1, 20.1, 14.1, 8.6, 2.5]
    }, {
        name: 'London',
        data: [3.9, 4.2, 5.7, 8.5, 11.9, 15.2, 17.0, 16.6, 14.2, 10.3, 6.6, 4.8]
    }]
}''';

const String _columnChartData = '''{
    chart: {
        type: 'column'
    },
    title: {
        text: 'Fruit Consumption by Person'
    },
    xAxis: {
        categories: ['Apples', 'Bananas', 'Oranges']
    },
    yAxis: {
        title: {
            text: 'Fruit eaten'
        }
    },
    series: [{
        name: 'Jane',
        data: [1, 0, 4]
    }, {
        name: 'John',
        data: [5, 7, 3]
    }, {
        name: 'Joe',
        data: [3, 4, 4]
    }]
}''';

const String _areaChartData = '''{
    chart: {
        type: 'area'
    },
    title: {
        text: 'Historic and Estimated Worldwide Population Growth'
    },
    subtitle: {
        text: 'Source: Wikipedia.org'
    },
    xAxis: {
        categories: ['1750', '1800', '1850', '1900', '1950', '1999', '2050'],
        tickmarkPlacement: 'on'
    },
    yAxis: {
        title: {
            text: 'Population (millions)'
        }
    },
    tooltip: {
        shared: true,
        valueSuffix: 'M'
    },
    plotOptions: {
        area: {
            stacking: 'normal',
            lineColor: '#666666',
            lineWidth: 1,
            marker: {
                lineWidth: 1,
                lineColor: '#666666'
            }
        }
    },
    series: [{
        name: 'Asia',
        data: [502, 635, 809, 947, 1402, 3634, 5268]
    }, {
        name: 'Africa',
        data: [106, 107, 111, 133, 221, 767, 1766]
    }, {
        name: 'Europe',
        data: [163, 203, 276, 408, 547, 729, 628]
    }, {
        name: 'America',
        data: [18, 31, 54, 156, 339, 818, 1201]
    }]
}''';

const String _pieChartData = '''{
    chart: {
        type: 'pie'
    },
    title: {
        text: 'Browser Market Shares in 2024'
    },
    tooltip: {
        valueSuffix: '%'
    },
    plotOptions: {
        pie: {
            allowPointSelect: true,
            cursor: 'pointer',
            dataLabels: {
                enabled: true,
                format: '<b>{point.name}</b>: {point.percentage:.1f} %'
            }
        }
    },
    series: [{
        name: 'Share',
        colorByPoint: true,
        data: [
            { name: 'Chrome', y: 63.6, sliced: true, selected: true },
            { name: 'Safari', y: 19.2 },
            { name: 'Edge', y: 6.7 },
            { name: 'Firefox', y: 4.3 },
            { name: 'Other', y: 6.2 }
        ]
    }]
}''';

const String _scatterChartData = '''{
    chart: {
        type: 'scatter',
        zoomType: 'xy'
    },
    title: {
        text: 'Height Versus Weight'
    },
    xAxis: {
        title: {
            text: 'Height (cm)'
        }
    },
    yAxis: {
        title: {
            text: 'Weight (kg)'
        }
    },
    legend: {
        layout: 'vertical',
        align: 'left',
        verticalAlign: 'top'
    },
    plotOptions: {
        scatter: {
            marker: {
                radius: 4,
                states: {
                    hover: {
                        enabled: true,
                        lineColor: 'rgb(100,100,100)'
                    }
                }
            },
            states: {
                hover: {
                    marker: {
                        enabled: false
                    }
                }
            }
        }
    },
    series: [{
        name: 'Female',
        color: 'rgba(223, 83, 83, .5)',
        data: [[161.2, 51.6], [167.5, 59.0], [159.5, 49.2], [157.0, 63.0], [155.8, 53.6], [170.0, 59.0], [159.1, 47.6], [166.0, 69.8], [176.2, 66.8], [160.2, 75.2]]
    }, {
        name: 'Male',
        color: 'rgba(119, 152, 191, .5)',
        data: [[174.0, 65.6], [175.3, 71.8], [193.5, 80.7], [186.5, 72.6], [187.2, 78.8], [181.5, 74.8], [184.0, 86.4], [184.5, 78.4], [175.0, 62.0], [184.0, 81.6]]
    }]
}''';

// Demonstrates `onEvent`: dragging across the plot area fires Highcharts'
// `setExtremes` axis event, which calls the `sendToFlutter` helper the
// package injects into every chart's page.
const String _zoomEventsChartData = '''{
    chart: {
        zoomType: 'x'
    },
    title: {
        text: 'Daily Active Users'
    },
    subtitle: {
        text: 'Drag-select a range to send it back to Flutter'
    },
    xAxis: {
        type: 'category',
        events: {
            setExtremes: function (e) {
                if (typeof e.min === 'number' && typeof e.max === 'number') {
                    sendToFlutter({ event: 'setExtremes', min: e.min, max: e.max });
                }
            }
        }
    },
    yAxis: {
        title: {
            text: 'Active users'
        }
    },
    legend: {
        enabled: false
    },
    series: [{
        name: 'Active users',
        data: [
            ['Jul 1', 2100], ['Jul 2', 2350], ['Jul 3', 2200], ['Jul 4', 2600],
            ['Jul 5', 2800], ['Jul 6', 2450], ['Jul 7', 2300], ['Jul 8', 2900],
            ['Jul 9', 3100], ['Jul 10', 2950], ['Jul 11', 3200], ['Jul 12', 3400],
            ['Jul 13', 3050], ['Jul 14', 2800]
        ]
    }]
}''';

// Demonstrates `globalOptions`: applied via Highcharts.setOptions() before
// the chart below is created, switching number formatting to a European
// convention (comma decimal point, period thousands separator).
const String _globalOptionsLang = '''{
    lang: {
        decimalPoint: ',',
        thousandsSep: '.'
    }
}''';

const String _globalOptionsChartData = '''{
    chart: {
        type: 'column'
    },
    title: {
        text: 'Quarterly Revenue'
    },
    subtitle: {
        text: 'Numbers formatted via Highcharts.setOptions({ lang })'
    },
    xAxis: {
        categories: ['Q1', 'Q2', 'Q3', 'Q4']
    },
    yAxis: {
        title: {
            text: 'Revenue'
        }
    },
    tooltip: {
        valuePrefix: '€'
    },
    series: [{
        name: 'Revenue',
        data: [1234567.8, 1876543.2, 1456789.1, 2345678.9]
    }]
}''';
