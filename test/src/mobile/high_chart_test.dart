import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:high_chart/src/mobile/high_chart.dart';
import 'package:webview_flutter_platform_interface/webview_flutter_platform_interface.dart';

void main() {
  late FakeWebViewPlatform platform;

  setUp(() {
    platform = FakeWebViewPlatform();
    WebViewPlatform.instance = platform;
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
