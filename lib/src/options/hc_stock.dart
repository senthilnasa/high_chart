part of 'hc_options.dart';

class HCStockToolsGuiDefinitionsAdvancedFibonacciOptions implements HCOption {
  const HCStockToolsGuiDefinitionsAdvancedFibonacciOptions({
    this.symbol,
  });

  /// (Highstock) A predefined background symbol for the button.
  final String? symbol;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (symbol != null) {
      json['symbol'] = symbol;
    }
    return json;
  }
}

class HCStockToolsGuiDefinitionsAdvancedFibonacciTimeZonesOptions
    implements HCOption {
  const HCStockToolsGuiDefinitionsAdvancedFibonacciTimeZonesOptions({
    this.symbol,
  });

  /// (Highstock) A predefined background symbol for the button.
  final String? symbol;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (symbol != null) {
      json['symbol'] = symbol;
    }
    return json;
  }
}

class HCStockToolsGuiDefinitionsAdvancedOptions implements HCOption {
  const HCStockToolsGuiDefinitionsAdvancedOptions({
    this.fibonacci,
    this.fibonacciTimeZones,
    this.items,
    this.parallelChannel,
    this.pitchfork,
    this.timeCycles,
  });

  final HCStockToolsGuiDefinitionsAdvancedFibonacciOptions? fibonacci;

  final HCStockToolsGuiDefinitionsAdvancedFibonacciTimeZonesOptions?
      fibonacciTimeZones;

  /// (Highstock) A collection of strings pointing to config options for the items.
  final List<String>? items;

  final HCStockToolsGuiDefinitionsAdvancedParallelChannelOptions?
      parallelChannel;

  final HCStockToolsGuiDefinitionsAdvancedPitchforkOptions? pitchfork;

  final HCStockToolsGuiDefinitionsAdvancedTimeCyclesOptions? timeCycles;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (fibonacci != null) {
      json['fibonacci'] = fibonacci!.toJson();
    }
    if (fibonacciTimeZones != null) {
      json['fibonacciTimeZones'] = fibonacciTimeZones!.toJson();
    }
    if (items != null) {
      json['items'] = items;
    }
    if (parallelChannel != null) {
      json['parallelChannel'] = parallelChannel!.toJson();
    }
    if (pitchfork != null) {
      json['pitchfork'] = pitchfork!.toJson();
    }
    if (timeCycles != null) {
      json['timeCycles'] = timeCycles!.toJson();
    }
    return json;
  }
}

class HCStockToolsGuiDefinitionsAdvancedParallelChannelOptions
    implements HCOption {
  const HCStockToolsGuiDefinitionsAdvancedParallelChannelOptions({
    this.symbol,
  });

  /// (Highstock) A predefined background symbol for the button.
  final String? symbol;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (symbol != null) {
      json['symbol'] = symbol;
    }
    return json;
  }
}

class HCStockToolsGuiDefinitionsAdvancedPitchforkOptions implements HCOption {
  const HCStockToolsGuiDefinitionsAdvancedPitchforkOptions({
    this.symbol,
  });

  /// (Highstock) A predefined background symbol for the button.
  final String? symbol;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (symbol != null) {
      json['symbol'] = symbol;
    }
    return json;
  }
}

class HCStockToolsGuiDefinitionsAdvancedTimeCyclesOptions implements HCOption {
  const HCStockToolsGuiDefinitionsAdvancedTimeCyclesOptions({
    this.symbol,
  });

  /// (Highstock) A predefined background symbol for the button.
  final String? symbol;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (symbol != null) {
      json['symbol'] = symbol;
    }
    return json;
  }
}

class HCStockToolsGuiDefinitionsCrookedLinesCrooked3Options
    implements HCOption {
  const HCStockToolsGuiDefinitionsCrookedLinesCrooked3Options({
    this.symbol,
  });

  /// (Highstock) A predefined background symbol for the button.
  final String? symbol;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (symbol != null) {
      json['symbol'] = symbol;
    }
    return json;
  }
}

class HCStockToolsGuiDefinitionsCrookedLinesCrooked5Options
    implements HCOption {
  const HCStockToolsGuiDefinitionsCrookedLinesCrooked5Options({
    this.symbol,
  });

  /// (Highstock) A predefined background symbol for the button.
  final String? symbol;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (symbol != null) {
      json['symbol'] = symbol;
    }
    return json;
  }
}

class HCStockToolsGuiDefinitionsCrookedLinesElliott3Options
    implements HCOption {
  const HCStockToolsGuiDefinitionsCrookedLinesElliott3Options({
    this.symbol,
  });

  /// (Highstock) A predefined background symbol for the button.
  final String? symbol;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (symbol != null) {
      json['symbol'] = symbol;
    }
    return json;
  }
}

class HCStockToolsGuiDefinitionsCrookedLinesElliott5Options
    implements HCOption {
  const HCStockToolsGuiDefinitionsCrookedLinesElliott5Options({
    this.symbol,
  });

  /// (Highstock) A predefined background symbol for the button.
  final String? symbol;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (symbol != null) {
      json['symbol'] = symbol;
    }
    return json;
  }
}

class HCStockToolsGuiDefinitionsCrookedLinesOptions implements HCOption {
  const HCStockToolsGuiDefinitionsCrookedLinesOptions({
    this.crooked3,
    this.crooked5,
    this.elliott3,
    this.elliott5,
    this.items,
  });

  final HCStockToolsGuiDefinitionsCrookedLinesCrooked3Options? crooked3;

  final HCStockToolsGuiDefinitionsCrookedLinesCrooked5Options? crooked5;

  final HCStockToolsGuiDefinitionsCrookedLinesElliott3Options? elliott3;

  final HCStockToolsGuiDefinitionsCrookedLinesElliott5Options? elliott5;

  /// (Highstock) A collection of strings pointing to config options for the items.
  final List<String>? items;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (crooked3 != null) {
      json['crooked3'] = crooked3!.toJson();
    }
    if (crooked5 != null) {
      json['crooked5'] = crooked5!.toJson();
    }
    if (elliott3 != null) {
      json['elliott3'] = elliott3!.toJson();
    }
    if (elliott5 != null) {
      json['elliott5'] = elliott5!.toJson();
    }
    if (items != null) {
      json['items'] = items;
    }
    return json;
  }
}

class HCStockToolsGuiDefinitionsCurrentPriceIndicatorOptions
    implements HCOption {
  const HCStockToolsGuiDefinitionsCurrentPriceIndicatorOptions({
    this.symbol,
  });

  /// (Highstock) A predefined background symbol for the button.
  final String? symbol;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (symbol != null) {
      json['symbol'] = symbol;
    }
    return json;
  }
}

class HCStockToolsGuiDefinitionsFlagsFlagCirclepinOptions implements HCOption {
  const HCStockToolsGuiDefinitionsFlagsFlagCirclepinOptions({
    this.symbol,
  });

  /// (Highstock) A predefined background symbol for the button.
  final String? symbol;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (symbol != null) {
      json['symbol'] = symbol;
    }
    return json;
  }
}

class HCStockToolsGuiDefinitionsFlagsFlagDiamondpinOptions implements HCOption {
  const HCStockToolsGuiDefinitionsFlagsFlagDiamondpinOptions({
    this.symbol,
  });

  /// (Highstock) A predefined background symbol for the button.
  final String? symbol;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (symbol != null) {
      json['symbol'] = symbol;
    }
    return json;
  }
}

class HCStockToolsGuiDefinitionsFlagsFlagSimplepinOptions implements HCOption {
  const HCStockToolsGuiDefinitionsFlagsFlagSimplepinOptions({
    this.symbol,
  });

  /// (Highstock) A predefined background symbol for the button.
  final String? symbol;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (symbol != null) {
      json['symbol'] = symbol;
    }
    return json;
  }
}

class HCStockToolsGuiDefinitionsFlagsFlagSquarepinOptions implements HCOption {
  const HCStockToolsGuiDefinitionsFlagsFlagSquarepinOptions({
    this.symbol,
  });

  /// (Highstock) A predefined background symbol for the button.
  final String? symbol;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (symbol != null) {
      json['symbol'] = symbol;
    }
    return json;
  }
}

class HCStockToolsGuiDefinitionsFlagsOptions implements HCOption {
  const HCStockToolsGuiDefinitionsFlagsOptions({
    this.flagCirclepin,
    this.flagDiamondpin,
    this.flagSimplepin,
    this.flagSquarepin,
    this.items,
  });

  final HCStockToolsGuiDefinitionsFlagsFlagCirclepinOptions? flagCirclepin;

  final HCStockToolsGuiDefinitionsFlagsFlagDiamondpinOptions? flagDiamondpin;

  final HCStockToolsGuiDefinitionsFlagsFlagSimplepinOptions? flagSimplepin;

  final HCStockToolsGuiDefinitionsFlagsFlagSquarepinOptions? flagSquarepin;

  /// (Highstock) A collection of strings pointing to config options for the items.
  final List<String>? items;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (flagCirclepin != null) {
      json['flagCirclepin'] = flagCirclepin!.toJson();
    }
    if (flagDiamondpin != null) {
      json['flagDiamondpin'] = flagDiamondpin!.toJson();
    }
    if (flagSimplepin != null) {
      json['flagSimplepin'] = flagSimplepin!.toJson();
    }
    if (flagSquarepin != null) {
      json['flagSquarepin'] = flagSquarepin!.toJson();
    }
    if (items != null) {
      json['items'] = items;
    }
    return json;
  }
}

class HCStockToolsGuiDefinitionsFullScreenOptions implements HCOption {
  const HCStockToolsGuiDefinitionsFullScreenOptions({
    this.symbol,
  });

  /// (Highstock) A predefined background symbol for the button.
  final String? symbol;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (symbol != null) {
      json['symbol'] = symbol;
    }
    return json;
  }
}

class HCStockToolsGuiDefinitionsIndicatorsOptions implements HCOption {
  const HCStockToolsGuiDefinitionsIndicatorsOptions({
    this.symbol,
  });

  /// (Highstock) A predefined background symbol for the button.
  final String? symbol;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (symbol != null) {
      json['symbol'] = symbol;
    }
    return json;
  }
}

class HCStockToolsGuiDefinitionsLinesArrowInfinityLineOptions
    implements HCOption {
  const HCStockToolsGuiDefinitionsLinesArrowInfinityLineOptions({
    this.symbol,
  });

  /// (Highstock) A predefined background symbol for the button.
  final String? symbol;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (symbol != null) {
      json['symbol'] = symbol;
    }
    return json;
  }
}

class HCStockToolsGuiDefinitionsLinesArrowRayOptions implements HCOption {
  const HCStockToolsGuiDefinitionsLinesArrowRayOptions({
    this.symbol,
  });

  /// (Highstock) A predefined background symbol for the button.
  final String? symbol;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (symbol != null) {
      json['symbol'] = symbol;
    }
    return json;
  }
}

class HCStockToolsGuiDefinitionsLinesArrowSegmentOptions implements HCOption {
  const HCStockToolsGuiDefinitionsLinesArrowSegmentOptions({
    this.symbol,
  });

  /// (Highstock) A predefined background symbol for the button.
  final String? symbol;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (symbol != null) {
      json['symbol'] = symbol;
    }
    return json;
  }
}

class HCStockToolsGuiDefinitionsLinesHorizontalLineOptions implements HCOption {
  const HCStockToolsGuiDefinitionsLinesHorizontalLineOptions({
    this.symbol,
  });

  /// (Highstock) A predefined background symbol for the button.
  final String? symbol;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (symbol != null) {
      json['symbol'] = symbol;
    }
    return json;
  }
}

class HCStockToolsGuiDefinitionsLinesLineOptions implements HCOption {
  const HCStockToolsGuiDefinitionsLinesLineOptions({
    this.symbol,
  });

  /// (Highstock) A predefined background symbol for the button.
  final String? symbol;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (symbol != null) {
      json['symbol'] = symbol;
    }
    return json;
  }
}

class HCStockToolsGuiDefinitionsLinesOptions implements HCOption {
  const HCStockToolsGuiDefinitionsLinesOptions({
    this.arrowInfinityLine,
    this.arrowRay,
    this.arrowSegment,
    this.horizontalLine,
    this.items,
    this.line,
    this.ray,
    this.segment,
    this.verticalLine,
  });

  final HCStockToolsGuiDefinitionsLinesArrowInfinityLineOptions?
      arrowInfinityLine;

  final HCStockToolsGuiDefinitionsLinesArrowRayOptions? arrowRay;

  final HCStockToolsGuiDefinitionsLinesArrowSegmentOptions? arrowSegment;

  final HCStockToolsGuiDefinitionsLinesHorizontalLineOptions? horizontalLine;

  /// (Highstock) A collection of strings pointing to config options for the items.
  final List<String>? items;

  final HCStockToolsGuiDefinitionsLinesLineOptions? line;

  final HCStockToolsGuiDefinitionsLinesRayOptions? ray;

  final HCStockToolsGuiDefinitionsLinesSegmentOptions? segment;

  final HCStockToolsGuiDefinitionsLinesVerticalLineOptions? verticalLine;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (arrowInfinityLine != null) {
      json['arrowInfinityLine'] = arrowInfinityLine!.toJson();
    }
    if (arrowRay != null) {
      json['arrowRay'] = arrowRay!.toJson();
    }
    if (arrowSegment != null) {
      json['arrowSegment'] = arrowSegment!.toJson();
    }
    if (horizontalLine != null) {
      json['horizontalLine'] = horizontalLine!.toJson();
    }
    if (items != null) {
      json['items'] = items;
    }
    if (line != null) {
      json['line'] = line!.toJson();
    }
    if (ray != null) {
      json['ray'] = ray!.toJson();
    }
    if (segment != null) {
      json['segment'] = segment!.toJson();
    }
    if (verticalLine != null) {
      json['verticalLine'] = verticalLine!.toJson();
    }
    return json;
  }
}

class HCStockToolsGuiDefinitionsLinesRayOptions implements HCOption {
  const HCStockToolsGuiDefinitionsLinesRayOptions({
    this.symbol,
  });

  /// (Highstock) A predefined background symbol for the button.
  final String? symbol;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (symbol != null) {
      json['symbol'] = symbol;
    }
    return json;
  }
}

class HCStockToolsGuiDefinitionsLinesSegmentOptions implements HCOption {
  const HCStockToolsGuiDefinitionsLinesSegmentOptions({
    this.symbol,
  });

  /// (Highstock) A predefined background symbol for the button.
  final String? symbol;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (symbol != null) {
      json['symbol'] = symbol;
    }
    return json;
  }
}

class HCStockToolsGuiDefinitionsLinesVerticalLineOptions implements HCOption {
  const HCStockToolsGuiDefinitionsLinesVerticalLineOptions({
    this.symbol,
  });

  /// (Highstock) A predefined background symbol for the button.
  final String? symbol;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (symbol != null) {
      json['symbol'] = symbol;
    }
    return json;
  }
}

class HCStockToolsGuiDefinitionsMeasureMeasureXOptions implements HCOption {
  const HCStockToolsGuiDefinitionsMeasureMeasureXOptions({
    this.symbol,
  });

  /// (Highstock) A predefined background symbol for the button.
  final String? symbol;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (symbol != null) {
      json['symbol'] = symbol;
    }
    return json;
  }
}

class HCStockToolsGuiDefinitionsMeasureMeasureXYOptions implements HCOption {
  const HCStockToolsGuiDefinitionsMeasureMeasureXYOptions({
    this.symbol,
  });

  /// (Highstock) A predefined background symbol for the button.
  final String? symbol;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (symbol != null) {
      json['symbol'] = symbol;
    }
    return json;
  }
}

class HCStockToolsGuiDefinitionsMeasureMeasureYOptions implements HCOption {
  const HCStockToolsGuiDefinitionsMeasureMeasureYOptions({
    this.symbol,
  });

  /// (Highstock) A predefined background symbol for the button.
  final String? symbol;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (symbol != null) {
      json['symbol'] = symbol;
    }
    return json;
  }
}

class HCStockToolsGuiDefinitionsMeasureOptions implements HCOption {
  const HCStockToolsGuiDefinitionsMeasureOptions({
    this.items,
    this.measureX,
    this.measureXY,
    this.measureY,
  });

  /// (Highstock) A collection of strings pointing to config options for the items.
  final List<String>? items;

  final HCStockToolsGuiDefinitionsMeasureMeasureXOptions? measureX;

  final HCStockToolsGuiDefinitionsMeasureMeasureXYOptions? measureXY;

  final HCStockToolsGuiDefinitionsMeasureMeasureYOptions? measureY;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (items != null) {
      json['items'] = items;
    }
    if (measureX != null) {
      json['measureX'] = measureX!.toJson();
    }
    if (measureXY != null) {
      json['measureXY'] = measureXY!.toJson();
    }
    if (measureY != null) {
      json['measureY'] = measureY!.toJson();
    }
    return json;
  }
}

/// (Highstock) An options object of the buttons definitions. Each name refers to unique key from buttons array.
class HCStockToolsGuiDefinitionsOptions implements HCOption {
  const HCStockToolsGuiDefinitionsOptions({
    this.advanced,
    this.crookedLines,
    this.currentPriceIndicator,
    this.flags,
    this.fullScreen,
    this.indicators,
    this.lines,
    this.measure,
    this.saveChart,
    this.separator,
    this.simpleShapes,
    this.toggleAnnotations,
    this.typeChange,
    this.verticalLabels,
    this.zoomChange,
  });

  final HCStockToolsGuiDefinitionsAdvancedOptions? advanced;

  final HCStockToolsGuiDefinitionsCrookedLinesOptions? crookedLines;

  final HCStockToolsGuiDefinitionsCurrentPriceIndicatorOptions?
      currentPriceIndicator;

  final HCStockToolsGuiDefinitionsFlagsOptions? flags;

  final HCStockToolsGuiDefinitionsFullScreenOptions? fullScreen;

  final HCStockToolsGuiDefinitionsIndicatorsOptions? indicators;

  final HCStockToolsGuiDefinitionsLinesOptions? lines;

  final HCStockToolsGuiDefinitionsMeasureOptions? measure;

  final HCStockToolsGuiDefinitionsSaveChartOptions? saveChart;

  final HCStockToolsGuiDefinitionsSeparatorOptions? separator;

  final HCStockToolsGuiDefinitionsSimpleShapesOptions? simpleShapes;

  final HCStockToolsGuiDefinitionsToggleAnnotationsOptions? toggleAnnotations;

  final HCStockToolsGuiDefinitionsTypeChangeOptions? typeChange;

  final HCStockToolsGuiDefinitionsVerticalLabelsOptions? verticalLabels;

  final HCStockToolsGuiDefinitionsZoomChangeOptions? zoomChange;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (advanced != null) {
      json['advanced'] = advanced!.toJson();
    }
    if (crookedLines != null) {
      json['crookedLines'] = crookedLines!.toJson();
    }
    if (currentPriceIndicator != null) {
      json['currentPriceIndicator'] = currentPriceIndicator!.toJson();
    }
    if (flags != null) {
      json['flags'] = flags!.toJson();
    }
    if (fullScreen != null) {
      json['fullScreen'] = fullScreen!.toJson();
    }
    if (indicators != null) {
      json['indicators'] = indicators!.toJson();
    }
    if (lines != null) {
      json['lines'] = lines!.toJson();
    }
    if (measure != null) {
      json['measure'] = measure!.toJson();
    }
    if (saveChart != null) {
      json['saveChart'] = saveChart!.toJson();
    }
    if (separator != null) {
      json['separator'] = separator!.toJson();
    }
    if (simpleShapes != null) {
      json['simpleShapes'] = simpleShapes!.toJson();
    }
    if (toggleAnnotations != null) {
      json['toggleAnnotations'] = toggleAnnotations!.toJson();
    }
    if (typeChange != null) {
      json['typeChange'] = typeChange!.toJson();
    }
    if (verticalLabels != null) {
      json['verticalLabels'] = verticalLabels!.toJson();
    }
    if (zoomChange != null) {
      json['zoomChange'] = zoomChange!.toJson();
    }
    return json;
  }
}

class HCStockToolsGuiDefinitionsSaveChartOptions implements HCOption {
  const HCStockToolsGuiDefinitionsSaveChartOptions({
    this.symbol,
  });

  /// (Highstock) A predefined background symbol for the button.
  final String? symbol;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (symbol != null) {
      json['symbol'] = symbol;
    }
    return json;
  }
}

class HCStockToolsGuiDefinitionsSeparatorOptions implements HCOption {
  const HCStockToolsGuiDefinitionsSeparatorOptions({
    this.elementType,
    this.symbol,
  });

  final String? elementType;

  /// (Highstock) A predefined background symbol for the button.
  final String? symbol;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (elementType != null) {
      json['elementType'] = elementType;
    }
    if (symbol != null) {
      json['symbol'] = symbol;
    }
    return json;
  }
}

class HCStockToolsGuiDefinitionsSimpleShapesCircleOptions implements HCOption {
  const HCStockToolsGuiDefinitionsSimpleShapesCircleOptions({
    this.symbol,
  });

  /// (Highstock) A predefined background symbol for the button.
  final String? symbol;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (symbol != null) {
      json['symbol'] = symbol;
    }
    return json;
  }
}

class HCStockToolsGuiDefinitionsSimpleShapesEllipseOptions implements HCOption {
  const HCStockToolsGuiDefinitionsSimpleShapesEllipseOptions({
    this.symbol,
  });

  /// (Highstock) A predefined background symbol for the button.
  final String? symbol;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (symbol != null) {
      json['symbol'] = symbol;
    }
    return json;
  }
}

class HCStockToolsGuiDefinitionsSimpleShapesLabelOptions implements HCOption {
  const HCStockToolsGuiDefinitionsSimpleShapesLabelOptions({
    this.symbol,
  });

  /// (Highstock) A predefined background symbol for the button.
  final String? symbol;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (symbol != null) {
      json['symbol'] = symbol;
    }
    return json;
  }
}

class HCStockToolsGuiDefinitionsSimpleShapesOptions implements HCOption {
  const HCStockToolsGuiDefinitionsSimpleShapesOptions({
    this.circle,
    this.ellipse,
    this.items,
    this.label,
    this.rectangle,
  });

  final HCStockToolsGuiDefinitionsSimpleShapesCircleOptions? circle;

  final HCStockToolsGuiDefinitionsSimpleShapesEllipseOptions? ellipse;

  /// (Highstock) A collection of strings pointing to config options for the items.
  final List<String>? items;

  final HCStockToolsGuiDefinitionsSimpleShapesLabelOptions? label;

  final HCStockToolsGuiDefinitionsSimpleShapesRectangleOptions? rectangle;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (circle != null) {
      json['circle'] = circle!.toJson();
    }
    if (ellipse != null) {
      json['ellipse'] = ellipse!.toJson();
    }
    if (items != null) {
      json['items'] = items;
    }
    if (label != null) {
      json['label'] = label!.toJson();
    }
    if (rectangle != null) {
      json['rectangle'] = rectangle!.toJson();
    }
    return json;
  }
}

class HCStockToolsGuiDefinitionsSimpleShapesRectangleOptions
    implements HCOption {
  const HCStockToolsGuiDefinitionsSimpleShapesRectangleOptions({
    this.symbol,
  });

  /// (Highstock) A predefined background symbol for the button.
  final String? symbol;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (symbol != null) {
      json['symbol'] = symbol;
    }
    return json;
  }
}

class HCStockToolsGuiDefinitionsToggleAnnotationsOptions implements HCOption {
  const HCStockToolsGuiDefinitionsToggleAnnotationsOptions({
    this.symbol,
  });

  /// (Highstock) A predefined background symbol for the button.
  final String? symbol;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (symbol != null) {
      json['symbol'] = symbol;
    }
    return json;
  }
}

class HCStockToolsGuiDefinitionsTypeChangeOptions implements HCOption {
  const HCStockToolsGuiDefinitionsTypeChangeOptions({
    this.items,
    this.typeCandlestick,
    this.typeHeikinAshi,
    this.typeHLC,
    this.typeHollowCandlestick,
    this.typeLine,
    this.typeOHLC,
  });

  /// (Highstock) A collection of strings pointing to config options for the items.
  final List<String>? items;

  final HCStockToolsGuiDefinitionsTypeChangeTypeCandlestickOptions?
      typeCandlestick;

  final HCStockToolsGuiDefinitionsTypeChangeTypeHeikinAshiOptions?
      typeHeikinAshi;

  final HCStockToolsGuiDefinitionsTypeChangeTypeHLCOptions? typeHLC;

  final HCStockToolsGuiDefinitionsTypeChangeTypeHollowCandlestickOptions?
      typeHollowCandlestick;

  final HCStockToolsGuiDefinitionsTypeChangeTypeLineOptions? typeLine;

  final HCStockToolsGuiDefinitionsTypeChangeTypeOHLCOptions? typeOHLC;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (items != null) {
      json['items'] = items;
    }
    if (typeCandlestick != null) {
      json['typeCandlestick'] = typeCandlestick!.toJson();
    }
    if (typeHeikinAshi != null) {
      json['typeHeikinAshi'] = typeHeikinAshi!.toJson();
    }
    if (typeHLC != null) {
      json['typeHLC'] = typeHLC!.toJson();
    }
    if (typeHollowCandlestick != null) {
      json['typeHollowCandlestick'] = typeHollowCandlestick!.toJson();
    }
    if (typeLine != null) {
      json['typeLine'] = typeLine!.toJson();
    }
    if (typeOHLC != null) {
      json['typeOHLC'] = typeOHLC!.toJson();
    }
    return json;
  }
}

class HCStockToolsGuiDefinitionsTypeChangeTypeCandlestickOptions
    implements HCOption {
  const HCStockToolsGuiDefinitionsTypeChangeTypeCandlestickOptions({
    this.symbol,
  });

  /// (Highstock) A predefined background symbol for the button.
  final String? symbol;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (symbol != null) {
      json['symbol'] = symbol;
    }
    return json;
  }
}

class HCStockToolsGuiDefinitionsTypeChangeTypeHLCOptions implements HCOption {
  const HCStockToolsGuiDefinitionsTypeChangeTypeHLCOptions({
    this.symbol,
  });

  /// (Highstock) A predefined background symbol for the button.
  final String? symbol;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (symbol != null) {
      json['symbol'] = symbol;
    }
    return json;
  }
}

class HCStockToolsGuiDefinitionsTypeChangeTypeHeikinAshiOptions
    implements HCOption {
  const HCStockToolsGuiDefinitionsTypeChangeTypeHeikinAshiOptions({
    this.symbol,
  });

  /// (Highstock) A predefined background symbol for the button.
  final String? symbol;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (symbol != null) {
      json['symbol'] = symbol;
    }
    return json;
  }
}

class HCStockToolsGuiDefinitionsTypeChangeTypeHollowCandlestickOptions
    implements HCOption {
  const HCStockToolsGuiDefinitionsTypeChangeTypeHollowCandlestickOptions({
    this.symbol,
  });

  /// (Highstock) A predefined background symbol for the button.
  final String? symbol;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (symbol != null) {
      json['symbol'] = symbol;
    }
    return json;
  }
}

class HCStockToolsGuiDefinitionsTypeChangeTypeLineOptions implements HCOption {
  const HCStockToolsGuiDefinitionsTypeChangeTypeLineOptions({
    this.symbol,
  });

  /// (Highstock) A predefined background symbol for the button.
  final String? symbol;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (symbol != null) {
      json['symbol'] = symbol;
    }
    return json;
  }
}

class HCStockToolsGuiDefinitionsTypeChangeTypeOHLCOptions implements HCOption {
  const HCStockToolsGuiDefinitionsTypeChangeTypeOHLCOptions({
    this.symbol,
  });

  /// (Highstock) A predefined background symbol for the button.
  final String? symbol;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (symbol != null) {
      json['symbol'] = symbol;
    }
    return json;
  }
}

class HCStockToolsGuiDefinitionsVerticalLabelsOptions implements HCOption {
  const HCStockToolsGuiDefinitionsVerticalLabelsOptions({
    this.items,
    this.verticalArrow,
    this.verticalCounter,
    this.verticalLabel,
  });

  /// (Highstock) A collection of strings pointing to config options for the items.
  final List<String>? items;

  final HCStockToolsGuiDefinitionsVerticalLabelsVerticalArrowOptions?
      verticalArrow;

  final HCStockToolsGuiDefinitionsVerticalLabelsVerticalCounterOptions?
      verticalCounter;

  final HCStockToolsGuiDefinitionsVerticalLabelsVerticalLabelOptions?
      verticalLabel;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (items != null) {
      json['items'] = items;
    }
    if (verticalArrow != null) {
      json['verticalArrow'] = verticalArrow!.toJson();
    }
    if (verticalCounter != null) {
      json['verticalCounter'] = verticalCounter!.toJson();
    }
    if (verticalLabel != null) {
      json['verticalLabel'] = verticalLabel!.toJson();
    }
    return json;
  }
}

class HCStockToolsGuiDefinitionsVerticalLabelsVerticalArrowOptions
    implements HCOption {
  const HCStockToolsGuiDefinitionsVerticalLabelsVerticalArrowOptions({
    this.symbol,
  });

  /// (Highstock) A predefined background symbol for the button.
  final String? symbol;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (symbol != null) {
      json['symbol'] = symbol;
    }
    return json;
  }
}

class HCStockToolsGuiDefinitionsVerticalLabelsVerticalCounterOptions
    implements HCOption {
  const HCStockToolsGuiDefinitionsVerticalLabelsVerticalCounterOptions({
    this.symbol,
  });

  /// (Highstock) A predefined background symbol for the button.
  final String? symbol;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (symbol != null) {
      json['symbol'] = symbol;
    }
    return json;
  }
}

class HCStockToolsGuiDefinitionsVerticalLabelsVerticalLabelOptions
    implements HCOption {
  const HCStockToolsGuiDefinitionsVerticalLabelsVerticalLabelOptions({
    this.symbol,
  });

  /// (Highstock) A predefined background symbol for the button.
  final String? symbol;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (symbol != null) {
      json['symbol'] = symbol;
    }
    return json;
  }
}

class HCStockToolsGuiDefinitionsZoomChangeOptions implements HCOption {
  const HCStockToolsGuiDefinitionsZoomChangeOptions({
    this.items,
    this.zoomX,
    this.zoomXY,
    this.zoomY,
  });

  /// (Highstock) A collection of strings pointing to config options for the items.
  final List<String>? items;

  final HCStockToolsGuiDefinitionsZoomChangeZoomXOptions? zoomX;

  final HCStockToolsGuiDefinitionsZoomChangeZoomXYOptions? zoomXY;

  final HCStockToolsGuiDefinitionsZoomChangeZoomYOptions? zoomY;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (items != null) {
      json['items'] = items;
    }
    if (zoomX != null) {
      json['zoomX'] = zoomX!.toJson();
    }
    if (zoomXY != null) {
      json['zoomXY'] = zoomXY!.toJson();
    }
    if (zoomY != null) {
      json['zoomY'] = zoomY!.toJson();
    }
    return json;
  }
}

class HCStockToolsGuiDefinitionsZoomChangeZoomXOptions implements HCOption {
  const HCStockToolsGuiDefinitionsZoomChangeZoomXOptions({
    this.symbol,
  });

  /// (Highstock) A predefined background symbol for the button.
  final String? symbol;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (symbol != null) {
      json['symbol'] = symbol;
    }
    return json;
  }
}

class HCStockToolsGuiDefinitionsZoomChangeZoomXYOptions implements HCOption {
  const HCStockToolsGuiDefinitionsZoomChangeZoomXYOptions({
    this.symbol,
  });

  /// (Highstock) A predefined background symbol for the button.
  final String? symbol;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (symbol != null) {
      json['symbol'] = symbol;
    }
    return json;
  }
}

class HCStockToolsGuiDefinitionsZoomChangeZoomYOptions implements HCOption {
  const HCStockToolsGuiDefinitionsZoomChangeZoomYOptions({
    this.symbol,
  });

  /// (Highstock) A predefined background symbol for the button.
  final String? symbol;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (symbol != null) {
      json['symbol'] = symbol;
    }
    return json;
  }
}

/// (Highstock) Definitions of buttons in Stock Tools GUI.
class HCStockToolsGuiOptions implements HCOption {
  const HCStockToolsGuiOptions({
    this.buttons,
    this.className,
    this.definitions,
    this.enabled,
    this.iconsURL,
    this.toolbarClassName,
    this.visible,
  });

  /// (Highstock) A collection of strings pointing to config options for the toolbar items. Each name refers to a unique key from the definitions object.
  final List<String>? buttons;

  /// (Highstock) A CSS class name to apply to the stocktools' div, allowing unique CSS styling for each chart.
  final String? className;

  /// (Highstock) An options object of the buttons definitions. Each name refers to unique key from buttons array.
  final HCStockToolsGuiDefinitionsOptions? definitions;

  /// (Highstock) Enable or disable the stockTools gui.
  final bool? enabled;

  /// (Highstock) Path where Highcharts will look for icons. Change this to use icons from a different server.
  final dynamic iconsURL;

  /// (Highstock) A CSS class name to apply to the container of buttons, allowing unique CSS styling for each chart.
  final String? toolbarClassName;

  /// (Highstock) Whether the stock tools toolbar is visible.
  final bool? visible;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (buttons != null) {
      json['buttons'] = buttons;
    }
    if (className != null) {
      json['className'] = className;
    }
    if (definitions != null) {
      json['definitions'] = definitions!.toJson();
    }
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    if (iconsURL != null) {
      json['iconsURL'] = hcJsonValue(iconsURL);
    }
    if (toolbarClassName != null) {
      json['toolbarClassName'] = toolbarClassName;
    }
    if (visible != null) {
      json['visible'] = visible;
    }
    return json;
  }
}

/// (Highstock) Configure the stockTools gui strings in the chart. Requires the [stockTools module]() to be loaded. For a description of the module and information on its features, see [Highcharts StockTools]().
class HCStockToolsOptions implements HCOption {
  const HCStockToolsOptions({
    this.gui,
  });

  /// (Highstock) Definitions of buttons in Stock Tools GUI.
  final HCStockToolsGuiOptions? gui;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (gui != null) {
      json['gui'] = gui!.toJson();
    }
    return json;
  }
}
