part of 'hc_options.dart';

class HCLangStockToolsGuiOptions implements HCOption {
  const HCLangStockToolsGuiOptions({
    this.advanced,
    this.arrowInfinityLine,
    this.arrowRay,
    this.arrowSegment,
    this.circle,
    this.crooked3,
    this.crooked5,
    this.crookedLines,
    this.currentPriceIndicator,
    this.elliott3,
    this.elliott5,
    this.ellipse,
    this.fibonacci,
    this.fibonacciTimeZones,
    this.flagCirclepin,
    this.flagDiamondpin,
    this.flags,
    this.flagSimplepin,
    this.flagSquarepin,
    this.fullScreen,
    this.horizontalLine,
    this.indicators,
    this.infinityLine,
    this.label,
    this.line,
    this.lines,
    this.measure,
    this.measureX,
    this.measureXY,
    this.measureY,
    this.parallelChannel,
    this.pitchfork,
    this.ray,
    this.rectangle,
    this.saveChart,
    this.segment,
    this.simpleShapes,
    this.timeCycles,
    this.toggleAnnotations,
    this.typeCandlestick,
    this.typeChange,
    this.typeHeikinAshi,
    this.typeHLC,
    this.typeHollowCandlestick,
    this.typeLine,
    this.typeOHLC,
    this.verticalArrow,
    this.verticalCounter,
    this.verticalLabel,
    this.verticalLabels,
    this.verticalLine,
    this.zoomChange,
    this.zoomX,
    this.zoomXY,
    this.zoomY,
  });

  final String? advanced;

  final String? arrowInfinityLine;

  final String? arrowRay;

  final String? arrowSegment;

  final String? circle;

  final String? crooked3;

  final String? crooked5;

  final String? crookedLines;

  final String? currentPriceIndicator;

  final String? elliott3;

  final String? elliott5;

  final String? ellipse;

  final String? fibonacci;

  final String? fibonacciTimeZones;

  final String? flagCirclepin;

  final String? flagDiamondpin;

  final String? flags;

  final String? flagSimplepin;

  final String? flagSquarepin;

  final String? fullScreen;

  final String? horizontalLine;

  final String? indicators;

  final String? infinityLine;

  final String? label;

  final String? line;

  final String? lines;

  final String? measure;

  final String? measureX;

  final String? measureXY;

  final String? measureY;

  final String? parallelChannel;

  final String? pitchfork;

  final String? ray;

  final String? rectangle;

  final String? saveChart;

  final String? segment;

  final String? simpleShapes;

  final String? timeCycles;

  final String? toggleAnnotations;

  final String? typeCandlestick;

  final String? typeChange;

  final String? typeHeikinAshi;

  final String? typeHLC;

  final String? typeHollowCandlestick;

  final String? typeLine;

  final String? typeOHLC;

  final String? verticalArrow;

  final String? verticalCounter;

  final String? verticalLabel;

  final String? verticalLabels;

  final String? verticalLine;

  final String? zoomChange;

  final String? zoomX;

  final String? zoomXY;

  final String? zoomY;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (advanced != null) {
      json["advanced"] = advanced;
    }
    if (arrowInfinityLine != null) {
      json["arrowInfinityLine"] = arrowInfinityLine;
    }
    if (arrowRay != null) {
      json["arrowRay"] = arrowRay;
    }
    if (arrowSegment != null) {
      json["arrowSegment"] = arrowSegment;
    }
    if (circle != null) {
      json["circle"] = circle;
    }
    if (crooked3 != null) {
      json["crooked3"] = crooked3;
    }
    if (crooked5 != null) {
      json["crooked5"] = crooked5;
    }
    if (crookedLines != null) {
      json["crookedLines"] = crookedLines;
    }
    if (currentPriceIndicator != null) {
      json["currentPriceIndicator"] = currentPriceIndicator;
    }
    if (elliott3 != null) {
      json["elliott3"] = elliott3;
    }
    if (elliott5 != null) {
      json["elliott5"] = elliott5;
    }
    if (ellipse != null) {
      json["ellipse"] = ellipse;
    }
    if (fibonacci != null) {
      json["fibonacci"] = fibonacci;
    }
    if (fibonacciTimeZones != null) {
      json["fibonacciTimeZones"] = fibonacciTimeZones;
    }
    if (flagCirclepin != null) {
      json["flagCirclepin"] = flagCirclepin;
    }
    if (flagDiamondpin != null) {
      json["flagDiamondpin"] = flagDiamondpin;
    }
    if (flags != null) {
      json["flags"] = flags;
    }
    if (flagSimplepin != null) {
      json["flagSimplepin"] = flagSimplepin;
    }
    if (flagSquarepin != null) {
      json["flagSquarepin"] = flagSquarepin;
    }
    if (fullScreen != null) {
      json["fullScreen"] = fullScreen;
    }
    if (horizontalLine != null) {
      json["horizontalLine"] = horizontalLine;
    }
    if (indicators != null) {
      json["indicators"] = indicators;
    }
    if (infinityLine != null) {
      json["infinityLine"] = infinityLine;
    }
    if (label != null) {
      json["label"] = label;
    }
    if (line != null) {
      json["line"] = line;
    }
    if (lines != null) {
      json["lines"] = lines;
    }
    if (measure != null) {
      json["measure"] = measure;
    }
    if (measureX != null) {
      json["measureX"] = measureX;
    }
    if (measureXY != null) {
      json["measureXY"] = measureXY;
    }
    if (measureY != null) {
      json["measureY"] = measureY;
    }
    if (parallelChannel != null) {
      json["parallelChannel"] = parallelChannel;
    }
    if (pitchfork != null) {
      json["pitchfork"] = pitchfork;
    }
    if (ray != null) {
      json["ray"] = ray;
    }
    if (rectangle != null) {
      json["rectangle"] = rectangle;
    }
    if (saveChart != null) {
      json["saveChart"] = saveChart;
    }
    if (segment != null) {
      json["segment"] = segment;
    }
    if (simpleShapes != null) {
      json["simpleShapes"] = simpleShapes;
    }
    if (timeCycles != null) {
      json["timeCycles"] = timeCycles;
    }
    if (toggleAnnotations != null) {
      json["toggleAnnotations"] = toggleAnnotations;
    }
    if (typeCandlestick != null) {
      json["typeCandlestick"] = typeCandlestick;
    }
    if (typeChange != null) {
      json["typeChange"] = typeChange;
    }
    if (typeHeikinAshi != null) {
      json["typeHeikinAshi"] = typeHeikinAshi;
    }
    if (typeHLC != null) {
      json["typeHLC"] = typeHLC;
    }
    if (typeHollowCandlestick != null) {
      json["typeHollowCandlestick"] = typeHollowCandlestick;
    }
    if (typeLine != null) {
      json["typeLine"] = typeLine;
    }
    if (typeOHLC != null) {
      json["typeOHLC"] = typeOHLC;
    }
    if (verticalArrow != null) {
      json["verticalArrow"] = verticalArrow;
    }
    if (verticalCounter != null) {
      json["verticalCounter"] = verticalCounter;
    }
    if (verticalLabel != null) {
      json["verticalLabel"] = verticalLabel;
    }
    if (verticalLabels != null) {
      json["verticalLabels"] = verticalLabels;
    }
    if (verticalLine != null) {
      json["verticalLine"] = verticalLine;
    }
    if (zoomChange != null) {
      json["zoomChange"] = zoomChange;
    }
    if (zoomX != null) {
      json["zoomX"] = zoomX;
    }
    if (zoomXY != null) {
      json["zoomXY"] = zoomXY;
    }
    if (zoomY != null) {
      json["zoomY"] = zoomY;
    }
    return json;
  }
}
