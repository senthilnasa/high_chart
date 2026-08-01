import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:high_chart/high_chart.dart';
import 'package:high_chart_example/main.dart';
import 'package:webview_flutter_platform_interface/webview_flutter_platform_interface.dart';

void main() {
  setUp(() async {
    WebViewPlatform.instance = _FakeWebViewPlatform();
    _FakeWebViewController.lastChannelReceiver = null;
  });

  testWidgets('renders the gallery title and a card for every example',
      (WidgetTester tester) async {
    // The default 800x600 test surface is too small for the gallery grid
    // and would overflow; use a more realistic viewport.
    await tester.binding.setSurfaceSize(const Size(1200, 2400));
    addTearDown(() => tester.binding.setSurfaceSize(null));

    await tester.pumpWidget(const HighChartsGalleryApp());
    await tester.pump();

    expect(find.text('High Charts Gallery'), findsOneWidget);
    expect(find.byType(Card), findsNWidgets(chartExamples.length));
  });

  testWidgets('opens a chart detail page showing the HighCharts widget',
      (WidgetTester tester) async {
    await tester.binding.setSurfaceSize(const Size(1200, 2400));
    addTearDown(() => tester.binding.setSurfaceSize(null));

    await tester.pumpWidget(const HighChartsGalleryApp());
    await tester.pump();

    await tester.tap(find.text(chartExamples.first.title));
    // The chart's loader spinner animates indefinitely in this fake
    // WebView setup (it never signals page-finished), so pump a bounded
    // number of frames instead of pumpAndSettle.
    await tester.pump();
    await tester.pump(const Duration(seconds: 1));

    expect(find.byType(HighCharts), findsOneWidget);
  });

  testWidgets(
      'the Zoom & Events example shows its hint and displays events sent by the chart',
      (WidgetTester tester) async {
    await tester.binding.setSurfaceSize(const Size(1200, 2400));
    addTearDown(() => tester.binding.setSurfaceSize(null));

    final example =
        chartExamples.firstWhere((e) => e.title == 'Zoom & Events');
    expect(example.listensForEvents, isTrue);

    await tester.pumpWidget(const HighChartsGalleryApp());
    await tester.pump();

    await tester.tap(find.text(example.title));
    await tester.pump();
    await tester.pump(const Duration(seconds: 1));

    expect(find.text(example.eventHint!), findsOneWidget);
    expect(find.textContaining('Waiting for an event'), findsOneWidget);

    _FakeWebViewController.lastChannelReceiver
        ?.call(const JavaScriptMessage(message: '{"min": 1, "max": 5}'));
    await tester.pump();

    expect(find.textContaining('onEvent received'), findsOneWidget);
  });
}

/// Minimal fake so `HighCharts` (backed by `webview_flutter` on this host
/// platform) can build in a widget test without a real platform WebView.
class _FakeWebViewPlatform extends WebViewPlatform {
  @override
  PlatformWebViewController createPlatformWebViewController(
    PlatformWebViewControllerCreationParams params,
  ) {
    return _FakeWebViewController(params);
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

  @override
  Future<void> loadHtmlString(String html, {String? baseUrl}) async {}

  @override
  Future<void> setPlatformNavigationDelegate(
    PlatformNavigationDelegate handler,
  ) async {}

  @override
  Future<void> runJavaScript(String javaScript) async {}

  @override
  Future<Object> runJavaScriptReturningResult(String javaScript) async => '';

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
      lastChannelReceiver = javaScriptChannelParams.onMessageReceived;
    }
  }

  /// Captures the most recently registered channel handler so tests can
  /// simulate the chart's JS calling `sendToFlutter(data)`.
  static void Function(JavaScriptMessage message)? lastChannelReceiver;
}

class _FakeWebViewWidget extends PlatformWebViewWidget {
  _FakeWebViewWidget(super.params) : super.implementation();

  @override
  Widget build(BuildContext context) => Container();
}

class _FakeNavigationDelegate extends PlatformNavigationDelegate {
  _FakeNavigationDelegate(super.params) : super.implementation();

  @override
  Future<void> setOnPageFinished(PageEventCallback onPageFinished) async {}

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
