import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:high_chart/src/mobile/high_chart.dart';
import 'package:path_provider_platform_interface/path_provider_platform_interface.dart';
import 'package:webview_flutter_platform_interface/webview_flutter_platform_interface.dart';

void main() {
  late FakeWebViewPlatform platform;
  late Directory tempDir;

  setUp(() {
    platform = FakeWebViewPlatform();
    WebViewPlatform.instance = platform;
    tempDir = Directory.systemTemp.createTempSync('high_chart_export_test');
    PathProviderPlatform.instance = FakePathProviderPlatform(tempDir);
  });

  tearDown(() {
    tempDir.deleteSync(recursive: true);
  });

  testWidgets(
      'shows the loader and loads chart HTML with the requested network scripts',
      (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: HighCharts(
          data: "{title: {text: 'Test'}}",
          size: const Size(300, 300),
          networkScripts: const [
            'https://code.highcharts.com/highcharts.js',
          ],
        ),
      ),
    );

    expect(find.byType(CircularProgressIndicator), findsOneWidget);

    final controller = platform.controller!;
    expect(controller.loadedHtml,
        contains('https://code.highcharts.com/highcharts.js'));
    expect(controller.loadedHtml, contains('id="highChartsDiv"'));
  });

  testWidgets(
      'hides the loader and renders the chart once the page finishes loading',
      (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: HighCharts(
          data: "{title: {text: 'Test'}}",
          size: const Size(300, 300),
          networkScripts: const [
            'https://code.highcharts.com/highcharts.js',
          ],
        ),
      ),
    );

    platform.controller!.finishLoading();
    await tester.pump();

    expect(find.byType(CircularProgressIndicator), findsNothing);
    expect(
      platform.controller!.executedJavaScript
          .any((js) => js.contains("Highcharts.chart('highChartsDiv'")),
      isTrue,
    );
  });

  testWidgets('shows a custom loader until the page finishes loading',
      (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: HighCharts(
          data: '{}',
          size: const Size(300, 300),
          loader: const Text('loading...'),
        ),
      ),
    );

    expect(find.text('loading...'), findsOneWidget);

    platform.controller!.finishLoading();
    await tester.pump();

    expect(find.text('loading...'), findsNothing);
  });

  testWidgets('reloads the WebView content when the chart data changes',
      (tester) async {
    Widget buildChart(String data) => MaterialApp(
          home: HighCharts(
            data: data,
            size: const Size(300, 300),
            networkScripts: const [
              'https://code.highcharts.com/highcharts.js',
            ],
          ),
        );

    await tester.pumpWidget(buildChart("{title: {text: 'First'}}"));
    expect(platform.controller!.loadHtmlStringCallCount, 1);

    await tester.pumpWidget(buildChart("{title: {text: 'Second'}}"));
    expect(platform.controller!.loadHtmlStringCallCount, 2);

    // Rebuilding with identical properties should not trigger another reload.
    await tester.pumpWidget(buildChart("{title: {text: 'Second'}}"));
    expect(platform.controller!.loadHtmlStringCallCount, 2);
  });

  testWidgets('applies the highcharts-dark class when themeMode is dark',
      (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: HighCharts(
          data: '{}',
          size: const Size(300, 300),
          themeMode: ThemeMode.dark,
        ),
      ),
    );

    expect(platform.controller!.loadedHtml, contains('highcharts-dark'));
  });

  testWidgets('applies the highcharts-light class when themeMode is light',
      (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: HighCharts(
          data: '{}',
          size: const Size(300, 300),
          themeMode: ThemeMode.light,
        ),
      ),
    );

    expect(platform.controller!.loadedHtml, contains('highcharts-light'));
  });

  testWidgets(
      'overrides Highcharts default text colors for dark mode so title/labels stay readable',
      (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: HighCharts(
          data: '{}',
          size: const Size(300, 300),
          themeMode: ThemeMode.dark,
        ),
      ),
    );

    platform.controller!.finishLoading();
    await tester.pump();

    final script = platform.controller!.executedJavaScript.single;
    // Highcharts hard-codes light-theme colors (e.g. #333333) as inline
    // styles for title/legend/axis text, which would otherwise render
    // unreadably against the dark background regardless of the CSS class.
    expect(script, contains("Highcharts.setOptions({"));
    expect(script, contains("title: { style: { color: 'rgb(214,214,214)'"));
    final setOptionsIndex = script.indexOf('Highcharts.setOptions');
    final chartIndex = script.indexOf('Highcharts.chart');
    expect(setOptionsIndex, lessThan(chartIndex));
  });

  testWidgets(
      'does not override Highcharts default text colors when themeMode is light',
      (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: HighCharts(
          data: '{}',
          size: const Size(300, 300),
          themeMode: ThemeMode.light,
        ),
      ),
    );

    platform.controller!.finishLoading();
    await tester.pump();

    expect(platform.controller!.executedJavaScript.single,
        isNot(contains('rgb(214,214,214)')));
  });

  testWidgets('reloads the WebView content when themeMode changes',
      (tester) async {
    Widget buildChart(ThemeMode themeMode) => MaterialApp(
          home: HighCharts(
            data: '{}',
            size: const Size(300, 300),
            themeMode: themeMode,
          ),
        );

    await tester.pumpWidget(buildChart(ThemeMode.light));
    expect(platform.controller!.loadHtmlStringCallCount, 1);

    await tester.pumpWidget(buildChart(ThemeMode.dark));
    expect(platform.controller!.loadHtmlStringCallCount, 2);
    expect(platform.controller!.loadedHtml, contains('highcharts-dark'));
  });

  testWidgets('does not crash when a local script asset cannot be found',
      (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: HighCharts(
          data: '{}',
          size: const Size(300, 300),
          localScripts: const ['res/does_not_exist.js'],
        ),
      ),
    );

    platform.controller!.finishLoading();
    await tester.pumpAndSettle();

    expect(tester.takeException(), isNull);
    expect(find.byType(CircularProgressIndicator), findsNothing);
  });

  testWidgets('applies Highcharts.setOptions() before creating the chart',
      (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: HighCharts(
          data: '{}',
          size: const Size(300, 300),
          globalOptions: "{lang: {decimalPoint: ','}}",
        ),
      ),
    );

    platform.controller!.finishLoading();
    await tester.pump();

    final script = platform.controller!.executedJavaScript.single;
    final setOptionsIndex = script.indexOf('Highcharts.setOptions');
    final chartIndex = script.indexOf('Highcharts.chart');
    expect(setOptionsIndex, greaterThanOrEqualTo(0));
    expect(setOptionsIndex, lessThan(chartIndex));
  });

  testWidgets(
      'does not call Highcharts.setOptions() when globalOptions is null',
      (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: HighCharts(
          data: '{}',
          size: const Size(300, 300),
        ),
      ),
    );

    platform.controller!.finishLoading();
    await tester.pump();

    expect(platform.controller!.executedJavaScript.single,
        isNot(contains('Highcharts.setOptions')));
  });

  testWidgets('delivers JSON-decoded events sent from the chart to onEvent',
      (tester) async {
    dynamic received;
    await tester.pumpWidget(
      MaterialApp(
        home: HighCharts(
          data: '{}',
          size: const Size(300, 300),
          onEvent: (event) => received = event,
        ),
      ),
    );

    platform.controller!.sendChannelMessage('{"min": 1, "max": 5}');

    expect(received, {'min': 1, 'max': 5});
  });

  testWidgets('falls back to the raw string when the event is not valid JSON',
      (tester) async {
    dynamic received;
    await tester.pumpWidget(
      MaterialApp(
        home: HighCharts(
          data: '{}',
          size: const Size(300, 300),
          onEvent: (event) => received = event,
        ),
      ),
    );

    platform.controller!.sendChannelMessage('not json');

    expect(received, 'not json');
  });

  testWidgets('saves an exported chart to disk and reports success via onEvent',
      (tester) async {
    dynamic received;
    await tester.pumpWidget(
      MaterialApp(
        home: HighCharts(
          data: '{}',
          size: const Size(300, 300),
          onEvent: (event) => received = event,
        ),
      ),
    );

    final String base64Data = base64Encode(utf8.encode('fake png bytes'));
    await tester.runAsync(() async {
      platform.controller!.sendChannelMessage(jsonEncode({
        '__highChartsExport': true,
        'filename': 'chart.png',
        'dataUrl': 'data:image/png;base64,$base64Data',
      }));
      // The save happens asynchronously (file I/O); give it a moment.
      await Future<void>.delayed(const Duration(milliseconds: 50));
    });

    final File savedFile = File('${tempDir.path}/chart.png');
    expect(savedFile.existsSync(), isTrue);
    expect(utf8.decode(savedFile.readAsBytesSync()), 'fake png bytes');
    expect(received, {
      'event': 'export',
      'status': 'success',
      'path': savedFile.path,
    });
  });

  testWidgets('does not forward export payloads to onEvent as chart events',
      (tester) async {
    final List<dynamic> received = [];
    await tester.pumpWidget(
      MaterialApp(
        home: HighCharts(
          data: '{}',
          size: const Size(300, 300),
          onEvent: received.add,
        ),
      ),
    );

    final String base64Data = base64Encode(utf8.encode('x'));
    await tester.runAsync(() async {
      platform.controller!.sendChannelMessage(jsonEncode({
        '__highChartsExport': true,
        'filename': 'chart.png',
        'dataUrl': 'data:image/png;base64,$base64Data',
      }));
      await Future<void>.delayed(const Duration(milliseconds: 50));
    });

    // onEvent should only see the export status report, never the raw
    // export-request payload itself.
    expect(received, hasLength(1));
    expect(received.single, containsPair('event', 'export'));
  });
}

/// A [PathProviderPlatform] implementation that always resolves to a
/// temporary test directory, so export tests never touch the real
/// filesystem's Downloads/Documents folders.
class FakePathProviderPlatform extends PathProviderPlatform {
  FakePathProviderPlatform(this.directory);

  final Directory directory;

  @override
  Future<String?> getDownloadsPath() async => directory.path;

  @override
  Future<String?> getApplicationDocumentsPath() async => directory.path;

  @override
  Future<String?> getExternalStoragePath() async => directory.path;
}

/// A [WebViewPlatform] implementation that hands out [FakeWebViewController]s
/// so `HighCharts` can be built and driven in widget tests without a real
/// platform WebView.
class FakeWebViewPlatform extends WebViewPlatform {
  FakeWebViewController? controller;

  @override
  PlatformWebViewController createPlatformWebViewController(
    PlatformWebViewControllerCreationParams params,
  ) {
    return controller = FakeWebViewController(params);
  }

  @override
  PlatformWebViewWidget createPlatformWebViewWidget(
    PlatformWebViewWidgetCreationParams params,
  ) {
    return FakeWebViewWidget(params);
  }

  @override
  PlatformNavigationDelegate createPlatformNavigationDelegate(
    PlatformNavigationDelegateCreationParams params,
  ) {
    return FakeNavigationDelegate(params);
  }
}

class FakeWebViewController extends PlatformWebViewController {
  FakeWebViewController(super.params) : super.implementation();

  String? loadedHtml;
  int loadHtmlStringCallCount = 0;
  final List<String> executedJavaScript = [];
  FakeNavigationDelegate? _navigationDelegate;

  /// Simulates the native WebView finishing a page load.
  void finishLoading() {
    _navigationDelegate?.onPageFinished?.call('about:blank');
  }

  @override
  Future<void> loadHtmlString(String html, {String? baseUrl}) async {
    loadedHtml = html;
    loadHtmlStringCallCount++;
  }

  @override
  Future<void> setPlatformNavigationDelegate(
    PlatformNavigationDelegate handler,
  ) async {
    _navigationDelegate = handler as FakeNavigationDelegate;
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
  ) async {
    if (javaScriptChannelParams.name == 'HighChartsChannel') {
      _onMessageReceived = javaScriptChannelParams.onMessageReceived;
    }
  }

  /// Simulates the chart's JS calling `sendToFlutter(data)`.
  void sendChannelMessage(String message) {
    _onMessageReceived?.call(JavaScriptMessage(message: message));
  }

  void Function(JavaScriptMessage message)? _onMessageReceived;
}

class FakeWebViewWidget extends PlatformWebViewWidget {
  FakeWebViewWidget(super.params) : super.implementation();

  @override
  Widget build(BuildContext context) => Container();
}

class FakeNavigationDelegate extends PlatformNavigationDelegate {
  FakeNavigationDelegate(super.params) : super.implementation();

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
