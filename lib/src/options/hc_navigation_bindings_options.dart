part of 'hc_options.dart';

class HCNavigationBindingsOptions implements HCOption {
  const HCNavigationBindingsOptions({
    this.arrowInfinityLine,
    this.arrowRay,
    this.arrowSegment,
    this.crooked3,
    this.crooked5,
    this.currentPriceIndicator,
    this.elliott3,
    this.elliott5,
    this.fibonacci,
    this.fibonacciTimeZones,
    this.flagCirclepin,
    this.flagDiamondpin,
    this.flagSimplepin,
    this.flagSquarepin,
    this.fullScreen,
    this.horizontalLine,
    this.indicators,
    this.infinityLine,
    this.measureX,
    this.measureXY,
    this.measureY,
    this.parallelChannel,
    this.pitchfork,
    this.ray,
    this.saveChart,
    this.segment,
    this.seriesTypeCandlestick,
    this.seriesTypeHeikinAshi,
    this.seriesTypeHLC,
    this.seriesTypeHollowCandlestick,
    this.seriesTypeLine,
    this.seriesTypeOhlc,
    this.timeCycles,
    this.toggleAnnotations,
    this.verticalArrow,
    this.verticalCounter,
    this.verticalLabel,
    this.verticalLine,
    this.zoomX,
    this.zoomXY,
    this.zoomY,
  });

  /// (Highstock) A line with arrow annotation. Includes `start` and one event
  final dynamic arrowInfinityLine;

  /// (Highstock) A ray with an arrow annotation bindings. Includes `start` and
  final dynamic arrowRay;

  /// (Highstock) A segment with an arrow annotation bindings. Includes `start`
  final dynamic arrowSegment;

  /// (Highstock) Crooked line (three points) annotation bindings. Includes
  final dynamic crooked3;

  /// (Highstock) Crooked line (five points) annotation bindings. Includes
  final dynamic crooked5;

  /// (Highstock) Hides/shows two price indicators:
  final HCNavigationBindingsOptionsObject? currentPriceIndicator;

  /// (Highstock) Elliott wave (three points) annotation bindings. Includes
  final dynamic elliott3;

  /// (Highstock) Elliott wave (five points) annotation bindings. Includes
  final dynamic elliott5;

  /// (Highstock) A fibonacci annotation bindings. Includes `start` and two
  final dynamic fibonacci;

  /// (Highstock) The Fibonacci Time Zones annotation bindings. Includes
  final dynamic fibonacciTimeZones;

  /// (Highstock) A flag series bindings. Includes `start` event. On click,
  final HCNavigationBindingsOptionsObject? flagCirclepin;

  /// (Highstock) A flag series bindings. Includes `start` event. On click,
  final HCNavigationBindingsOptionsObject? flagDiamondpin;

  /// (Highstock) A flag series bindings. Includes `start` event. On click,
  final HCNavigationBindingsOptionsObject? flagSimplepin;

  /// (Highstock) A flag series bindings. Includes `start` event. On click,
  final HCNavigationBindingsOptionsObject? flagSquarepin;

  /// (Highstock) Displays chart in fullscreen.
  final HCNavigationBindingsOptionsObject? fullScreen;

  /// (Highstock) A horizontal line annotation. Includes `start` event.
  final dynamic horizontalLine;

  /// (Highstock) Indicators bindings. Includes `init` event to show a popup.
  final HCNavigationBindingsOptionsObject? indicators;

  /// (Highstock) A line annotation. Includes `start` and one event in `steps`
  final dynamic infinityLine;

  /// (Highstock) A measure (x-dimension) annotation bindings. Includes `start`
  final dynamic measureX;

  /// (Highstock) A measure (xy-dimension) annotation bindings. Includes
  final dynamic measureXY;

  /// (Highstock) A measure (y-dimension) annotation bindings. Includes `start`
  final dynamic measureY;

  /// (Highstock) A parallel channel (tunnel) annotation bindings. Includes
  final dynamic parallelChannel;

  /// (Highstock) An Andrew's pitchfork annotation bindings. Includes `start`
  final dynamic pitchfork;

  /// (Highstock) A ray annotation bindings. Includes `start` and one event in
  final dynamic ray;

  /// (Highstock) Save a chart in localStorage under `highcharts-chart` key.
  final HCNavigationBindingsOptionsObject? saveChart;

  /// (Highstock) A segment annotation bindings. Includes `start` and one event
  final dynamic segment;

  /// (Highstock) Changes main series to `'candlestick'` type.
  final HCNavigationBindingsOptionsObject? seriesTypeCandlestick;

  /// (Highstock) Changes main series to `'heikinashi'` type.
  final HCNavigationBindingsOptionsObject? seriesTypeHeikinAshi;

  /// (Highstock) Change main series to `'hlc'` type.
  final HCNavigationBindingsOptionsObject? seriesTypeHLC;

  /// (Highstock) Changes main series to `'hollowcandlestick'` type.
  final HCNavigationBindingsOptionsObject? seriesTypeHollowCandlestick;

  /// (Highstock) Changes main series to `'line'` type.
  final HCNavigationBindingsOptionsObject? seriesTypeLine;

  /// (Highstock) Changes main series to `'ohlc'` type.
  final HCNavigationBindingsOptionsObject? seriesTypeOhlc;

  /// (Highstock) A time cycles annotation bindings. Includes `start` event and
  final dynamic timeCycles;

  /// (Highstock) Hides/shows all annotations on a chart.
  final HCNavigationBindingsOptionsObject? toggleAnnotations;

  /// (Highstock) A vertical arrow annotation bindings. Includes `start` event.
  final dynamic verticalArrow;

  /// (Highstock) A vertical counter annotation bindings. Includes `start`
  final dynamic verticalCounter;

  final HCNavigationBindingsVerticalLabelOptions? verticalLabel;

  /// (Highstock) A vertical line annotation. Includes `start` event.
  final dynamic verticalLine;

  /// (Highstock) Enables zooming in xAxis on a chart. Includes `start` event
  final HCNavigationBindingsOptionsObject? zoomX;

  /// (Highstock) Enables zooming in xAxis and yAxis on a chart. Includes
  final HCNavigationBindingsOptionsObject? zoomXY;

  /// (Highstock) Enables zooming in yAxis on a chart. Includes `start` event
  final HCNavigationBindingsOptionsObject? zoomY;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (arrowInfinityLine != null) {
      json["arrowInfinityLine"] = hcJsonValue(arrowInfinityLine);
    }
    if (arrowRay != null) {
      json["arrowRay"] = hcJsonValue(arrowRay);
    }
    if (arrowSegment != null) {
      json["arrowSegment"] = hcJsonValue(arrowSegment);
    }
    if (crooked3 != null) {
      json["crooked3"] = hcJsonValue(crooked3);
    }
    if (crooked5 != null) {
      json["crooked5"] = hcJsonValue(crooked5);
    }
    if (currentPriceIndicator != null) {
      json["currentPriceIndicator"] = currentPriceIndicator!.toJson();
    }
    if (elliott3 != null) {
      json["elliott3"] = hcJsonValue(elliott3);
    }
    if (elliott5 != null) {
      json["elliott5"] = hcJsonValue(elliott5);
    }
    if (fibonacci != null) {
      json["fibonacci"] = hcJsonValue(fibonacci);
    }
    if (fibonacciTimeZones != null) {
      json["fibonacciTimeZones"] = hcJsonValue(fibonacciTimeZones);
    }
    if (flagCirclepin != null) {
      json["flagCirclepin"] = flagCirclepin!.toJson();
    }
    if (flagDiamondpin != null) {
      json["flagDiamondpin"] = flagDiamondpin!.toJson();
    }
    if (flagSimplepin != null) {
      json["flagSimplepin"] = flagSimplepin!.toJson();
    }
    if (flagSquarepin != null) {
      json["flagSquarepin"] = flagSquarepin!.toJson();
    }
    if (fullScreen != null) {
      json["fullScreen"] = fullScreen!.toJson();
    }
    if (horizontalLine != null) {
      json["horizontalLine"] = hcJsonValue(horizontalLine);
    }
    if (indicators != null) {
      json["indicators"] = indicators!.toJson();
    }
    if (infinityLine != null) {
      json["infinityLine"] = hcJsonValue(infinityLine);
    }
    if (measureX != null) {
      json["measureX"] = hcJsonValue(measureX);
    }
    if (measureXY != null) {
      json["measureXY"] = hcJsonValue(measureXY);
    }
    if (measureY != null) {
      json["measureY"] = hcJsonValue(measureY);
    }
    if (parallelChannel != null) {
      json["parallelChannel"] = hcJsonValue(parallelChannel);
    }
    if (pitchfork != null) {
      json["pitchfork"] = hcJsonValue(pitchfork);
    }
    if (ray != null) {
      json["ray"] = hcJsonValue(ray);
    }
    if (saveChart != null) {
      json["saveChart"] = saveChart!.toJson();
    }
    if (segment != null) {
      json["segment"] = hcJsonValue(segment);
    }
    if (seriesTypeCandlestick != null) {
      json["seriesTypeCandlestick"] = seriesTypeCandlestick!.toJson();
    }
    if (seriesTypeHeikinAshi != null) {
      json["seriesTypeHeikinAshi"] = seriesTypeHeikinAshi!.toJson();
    }
    if (seriesTypeHLC != null) {
      json["seriesTypeHLC"] = seriesTypeHLC!.toJson();
    }
    if (seriesTypeHollowCandlestick != null) {
      json["seriesTypeHollowCandlestick"] =
          seriesTypeHollowCandlestick!.toJson();
    }
    if (seriesTypeLine != null) {
      json["seriesTypeLine"] = seriesTypeLine!.toJson();
    }
    if (seriesTypeOhlc != null) {
      json["seriesTypeOhlc"] = seriesTypeOhlc!.toJson();
    }
    if (timeCycles != null) {
      json["timeCycles"] = hcJsonValue(timeCycles);
    }
    if (toggleAnnotations != null) {
      json["toggleAnnotations"] = toggleAnnotations!.toJson();
    }
    if (verticalArrow != null) {
      json["verticalArrow"] = hcJsonValue(verticalArrow);
    }
    if (verticalCounter != null) {
      json["verticalCounter"] = hcJsonValue(verticalCounter);
    }
    if (verticalLabel != null) {
      json["verticalLabel"] = verticalLabel!.toJson();
    }
    if (verticalLine != null) {
      json["verticalLine"] = hcJsonValue(verticalLine);
    }
    if (zoomX != null) {
      json["zoomX"] = zoomX!.toJson();
    }
    if (zoomXY != null) {
      json["zoomXY"] = zoomXY!.toJson();
    }
    if (zoomY != null) {
      json["zoomY"] = zoomY!.toJson();
    }
    return json;
  }
}
