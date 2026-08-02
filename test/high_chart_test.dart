import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:high_chart/high_chart.dart';
import 'package:webview_flutter_platform_interface/webview_flutter_platform_interface.dart';

void main() {
  group('HighCharts widget configuration', () {
    test('exposes the values passed to its constructor', () {
      const data = '{"title": {"text": "Test"}}';
      const size = Size(400, 300);
      const networkScripts = ['https://code.highcharts.com/highcharts.js'];
      const localScripts = ['res/highcharts.js'];

      const chart = HighCharts(
        data: data,
        size: size,
        networkScripts: networkScripts,
        localScripts: localScripts,
        themeMode: ThemeMode.dark,
      );

      expect(chart.data, data);
      expect(chart.size, size);
      expect(chart.networkScripts, networkScripts);
      expect(chart.localScripts, localScripts);
      expect(chart.themeMode, ThemeMode.dark);
    });

    test('defaults to empty script lists, system theme and a spinner loader',
        () {
      const chart = HighCharts(
        data: '{}',
        size: Size(100, 100),
      );

      expect(chart.networkScripts, isEmpty);
      expect(chart.localScripts, isEmpty);
      expect(chart.themeMode, ThemeMode.system);
      expect(chart.loader, isA<Center>());
    });

    test('accepts a custom loader widget', () {
      const loader = SizedBox(width: 10, height: 10);
      const chart = HighCharts(
        data: '{}',
        size: Size(100, 100),
        loader: loader,
      );

      expect(chart.loader, same(loader));
    });

    test('accepts typed options instead of a raw data string', () {
      const options = HCOptions(title: HCTitleOptions(text: 'Typed'));
      const chart = HighCharts(
        options: options,
        size: Size(100, 100),
      );

      expect(chart.data, isNull);
      expect(chart.options, same(options));
    });

    test('asserts when neither data nor options is provided', () {
      expect(
        () => HighCharts(size: const Size(100, 100)),
        throwsA(isA<AssertionError>()),
      );
    });

    test(
        'asserts when both data and options are provided, since options '
        'would silently win and data would be ignored otherwise', () {
      expect(
        () => HighCharts(
          data: '{}',
          options: const HCOptions(),
          size: const Size(100, 100),
        ),
        throwsA(isA<AssertionError>()),
      );
    });
  });

  group('HCOptions (typed API)', () {
    test('toJson() omits fields that were never set', () {
      const options = HCOptions(title: HCTitleOptions(text: 'Only title'));

      expect(options.toJson(), {
        'title': {'text': 'Only title'},
      });
    });

    test('toJson() serializes nested chart/title/xAxis/series options', () {
      const options = HCOptions(
        chart: HCChartOptions(type: 'line'),
        title: HCTitleOptions(text: 'Monthly Sales'),
        xAxis: HCXAxisOptions(categories: ['Jan', 'Feb', 'Mar']),
        series: [
          HCSeriesLineOptions(name: 'Revenue', data: [1, 2, 3]),
        ],
      );

      expect(options.toJson(), {
        'chart': {'type': 'line'},
        'title': {'text': 'Monthly Sales'},
        'xAxis': {
          'categories': ['Jan', 'Feb', 'Mar'],
        },
        'series': [
          {
            'name': 'Revenue',
            'data': [1, 2, 3],
          },
        ],
      });
    });

    test(
        'series accepts a mix of series-specific typed options via the '
        'dynamic union slot, each serialized through its own toJson()', () {
      const options = HCOptions(
        series: [
          HCSeriesLineOptions(name: 'Line', data: [1, 2]),
          HCSeriesPieOptions(name: 'Pie', data: [3, 4]),
        ],
      );

      expect(options.toJson()['series'], [
        {
          'name': 'Line',
          'data': [1, 2],
        },
        {
          'name': 'Pie',
          'data': [3, 4],
        },
      ]);
    });

    test(
        'hcJsonValue passes raw Maps/primitives through unchanged, '
        'so the untyped payload style keeps working inside typed options', () {
      const options = HCOptions(
        series: [
          {
            'type': 'line',
            'data': [5, 6, 7],
          },
        ],
      );

      expect(options.toJson()['series'], [
        {
          'type': 'line',
          'data': [5, 6, 7],
        },
      ]);
    });
  });

  group('HighCharts widget end-to-end: options actually reach the WebView', () {
    // io.dart (the top-level `HighCharts` this test imports) routes to
    // mobile/high_chart.dart on this test host, which has no `options`
    // field of its own — it only ever receives a resolved `data` string.
    // These tests prove `options` is actually converted and forwarded,
    // rather than just checking the widget's own properties like the
    // "HighCharts widget configuration" group above does.
    late _FakeWebViewPlatform platform;

    setUp(() {
      platform = _FakeWebViewPlatform();
      WebViewPlatform.instance = platform;
    });

    testWidgets(
        'passes the JSON-encoded options tree to Highcharts.chart() when '
        'options is used instead of data', (tester) async {
      const options = HCOptions(
        title: HCTitleOptions(text: 'From options'),
        series: [
          HCSeriesLineOptions(name: 'Revenue', data: [1, 2, 3]),
        ],
      );

      await tester.pumpWidget(
        const MaterialApp(
          home: HighCharts(
            options: options,
            size: Size(300, 300),
          ),
        ),
      );

      platform.controller!.finishLoading();
      await tester.pump();

      final script = platform.controller!.executedJavaScript.single;
      expect(script, contains('"title":{"text":"From options"}'));
      expect(script, contains('"name":"Revenue"'));
      expect(script, contains('Highcharts.chart(\'highChartsDiv\''));
    });

    testWidgets('still passes a raw data string through unchanged',
        (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: HighCharts(
            data: "{title: {text: 'From data'}}",
            size: Size(300, 300),
          ),
        ),
      );

      platform.controller!.finishLoading();
      await tester.pump();

      expect(
        platform.controller!.executedJavaScript.single,
        contains("{title: {text: 'From data'}}"),
      );
    });
  });
}

/// A [WebViewPlatform] implementation that hands out a [_FakeWebViewController]
/// so the top-level `HighCharts` widget (routed through io.dart's platform
/// dispatch to mobile/high_chart.dart on this test host) can be pumped and
/// driven without a real platform WebView.
class _FakeWebViewPlatform extends WebViewPlatform {
  _FakeWebViewController? controller;

  @override
  PlatformWebViewController createPlatformWebViewController(
    PlatformWebViewControllerCreationParams params,
  ) {
    return controller = _FakeWebViewController(params);
  }

  @override
  PlatformWebViewWidget createPlatformWebViewWidget(
    PlatformWebViewWidgetCreationParams params,
  ) {
    return _FakeWebViewWidget(params);
  }

  @override
  PlatformNavigationDelegate createPlatformNavigationDelegate(
    PlatformNavigationDelegateCreationParams params,
  ) {
    return _FakeNavigationDelegate(params);
  }
}

class _FakeWebViewController extends PlatformWebViewController {
  _FakeWebViewController(super.params) : super.implementation();

  String? loadedHtml;
  final List<String> executedJavaScript = [];
  _FakeNavigationDelegate? _navigationDelegate;

  /// Simulates the native WebView finishing a page load.
  void finishLoading() {
    _navigationDelegate?.onPageFinished?.call('about:blank');
  }

  @override
  Future<void> loadHtmlString(String html, {String? baseUrl}) async {
    loadedHtml = html;
  }

  @override
  Future<void> setPlatformNavigationDelegate(
    PlatformNavigationDelegate handler,
  ) async {
    _navigationDelegate = handler as _FakeNavigationDelegate;
  }

  @override
  Future<void> runJavaScript(String javaScript) async {
    executedJavaScript.add(javaScript);
  }

  @override
  Future<Object> runJavaScriptReturningResult(String javaScript) async {
    executedJavaScript.add(javaScript);
    return '';
  }

  @override
  Future<void> setJavaScriptMode(JavaScriptMode javaScriptMode) async {}

  @override
  Future<void> enableZoom(bool enabled) async {}

  @override
  Future<void> setBackgroundColor(Color color) async {}

  @override
  Future<void> setOnConsoleMessage(
    void Function(JavaScriptConsoleMessage message) onConsoleMessage,
  ) async {}

  @override
  Future<void> addJavaScriptChannel(
    JavaScriptChannelParams javaScriptChannelParams,
  ) async {}
}

class _FakeWebViewWidget extends PlatformWebViewWidget {
  _FakeWebViewWidget(super.params) : super.implementation();

  @override
  Widget build(BuildContext context) => Container();
}

class _FakeNavigationDelegate extends PlatformNavigationDelegate {
  _FakeNavigationDelegate(super.params) : super.implementation();

  PageEventCallback? onPageFinished;

  @override
  Future<void> setOnPageFinished(PageEventCallback onPageFinished) async {
    this.onPageFinished = onPageFinished;
  }

  @override
  Future<void> setOnNavigationRequest(
    NavigationRequestCallback onNavigationRequest,
  ) async {}

  @override
  Future<void> setOnPageStarted(PageEventCallback onPageStarted) async {}

  @override
  Future<void> setOnProgress(ProgressCallback onProgress) async {}

  @override
  Future<void> setOnWebResourceError(
    WebResourceErrorCallback onWebResourceError,
  ) async {}

  @override
  Future<void> setOnUrlChange(UrlChangeCallback onUrlChange) async {}

  @override
  Future<void> setOnHttpAuthRequest(
    HttpAuthRequestCallback onHttpAuthRequest,
  ) async {}

  @override
  Future<void> setOnHttpError(
    HttpResponseErrorCallback onHttpError,
  ) async {}
}
