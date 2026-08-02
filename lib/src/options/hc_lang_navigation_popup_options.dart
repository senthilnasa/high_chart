part of 'hc_options.dart';

/// (Highcharts, Highstock) Translations for all field names used in popup.
class HCLangNavigationPopupOptions implements HCOption {
  const HCLangNavigationPopupOptions({
    this.addButton,
    this.algorithm,
    this.arrowInfinityLine,
    this.arrowRay,
    this.arrowSegment,
    this.average,
    this.background,
    this.backgroundColor,
    this.backgroundColors,
    this.borderColor,
    this.borderRadius,
    this.borderWidth,
    this.bottomBand,
    this.circle,
    this.clearFilter,
    this.color,
    this.connector,
    this.crooked3,
    this.crooked5,
    this.crosshairX,
    this.crosshairY,
    this.decimals,
    this.deviation,
    this.editButton,
    this.elliott3,
    this.elliott5,
    this.ellipse,
    this.factor,
    this.fastAvgPeriod,
    this.fibonacci,
    this.fibonacciTimeZones,
    this.fill,
    this.flags,
    this.fontSize,
    this.format,
    this.height,
    this.highIndex,
    this.horizontalLine,
    this.increment,
    this.index,
    this.indicatorAliases,
    this.infinityLine,
    this.initialAccelerationFactor,
    this.innerBackground,
    this.label,
    this.labelOptions,
    this.labels,
    this.line,
    this.lines,
    this.longPeriod,
    this.lowIndex,
    this.maxAccelerationFactor,
    this.measure,
    this.measureX,
    this.measureXY,
    this.measureY,
    this.multiplier,
    this.multiplierATR,
    this.name,
    this.noFilterMatch,
    this.outerBackground,
    this.padding,
    this.parallelChannel,
    this.period,
    this.periodATR,
    this.periods,
    this.periodSenkouSpanB,
    this.periodTenkan,
    this.pitchfork,
    this.ranges,
    this.ray,
    this.rectangle,
    this.removeButton,
    this.saveButton,
    this.searchIndicators,
    this.segment,
    this.series,
    this.shapeOptions,
    this.shapes,
    this.shortPeriod,
    this.signalPeriod,
    this.simpleShapes,
    this.slowAvgPeriod,
    this.standardDeviation,
    this.stroke,
    this.strokeWidth,
    this.style,
    this.timeCycles,
    this.title,
    this.topBand,
    this.tunnel,
    this.typeOptions,
    this.verticalArrow,
    this.verticalCounter,
    this.verticalLabel,
    this.verticalLine,
    this.volume,
    this.xAxisUnit,
  });

  final String? addButton;

  final String? algorithm;

  final String? arrowInfinityLine;

  final String? arrowRay;

  final String? arrowSegment;

  final String? average;

  final String? background;

  final String? backgroundColor;

  final String? backgroundColors;

  final String? borderColor;

  final String? borderRadius;

  final String? borderWidth;

  final String? bottomBand;

  final String? circle;

  final String? clearFilter;

  final String? color;

  final String? connector;

  final String? crooked3;

  final String? crooked5;

  final String? crosshairX;

  final String? crosshairY;

  final String? decimals;

  final String? deviation;

  final String? editButton;

  final String? elliott3;

  final String? elliott5;

  final String? ellipse;

  final String? factor;

  final String? fastAvgPeriod;

  final String? fibonacci;

  final String? fibonacciTimeZones;

  final String? fill;

  final String? flags;

  final String? fontSize;

  final String? format;

  final String? height;

  final String? highIndex;

  final String? horizontalLine;

  final String? increment;

  final String? index;

  /// (Highstock) Configure the aliases for indicator names.
  final HCLangNavigationPopupIndicatorAliasesOptions? indicatorAliases;

  final String? infinityLine;

  final String? initialAccelerationFactor;

  final String? innerBackground;

  final String? label;

  final String? labelOptions;

  final String? labels;

  final String? line;

  final String? lines;

  final String? longPeriod;

  final String? lowIndex;

  final String? maxAccelerationFactor;

  final String? measure;

  final String? measureX;

  final String? measureXY;

  final String? measureY;

  final String? multiplier;

  final String? multiplierATR;

  final String? name;

  final String? noFilterMatch;

  final String? outerBackground;

  final String? padding;

  final String? parallelChannel;

  final String? period;

  final String? periodATR;

  final String? periods;

  final String? periodSenkouSpanB;

  final String? periodTenkan;

  final String? pitchfork;

  final String? ranges;

  final String? ray;

  final String? rectangle;

  final String? removeButton;

  final String? saveButton;

  final String? searchIndicators;

  final String? segment;

  final String? series;

  final String? shapeOptions;

  final String? shapes;

  final String? shortPeriod;

  final String? signalPeriod;

  final String? simpleShapes;

  final String? slowAvgPeriod;

  final String? standardDeviation;

  final String? stroke;

  final String? strokeWidth;

  final String? style;

  final String? timeCycles;

  final String? title;

  final String? topBand;

  final String? tunnel;

  final String? typeOptions;

  final String? verticalArrow;

  final String? verticalCounter;

  final String? verticalLabel;

  final String? verticalLine;

  final String? volume;

  final String? xAxisUnit;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (addButton != null) {
      json["addButton"] = addButton;
    }
    if (algorithm != null) {
      json["algorithm"] = algorithm;
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
    if (average != null) {
      json["average"] = average;
    }
    if (background != null) {
      json["background"] = background;
    }
    if (backgroundColor != null) {
      json["backgroundColor"] = backgroundColor;
    }
    if (backgroundColors != null) {
      json["backgroundColors"] = backgroundColors;
    }
    if (borderColor != null) {
      json["borderColor"] = borderColor;
    }
    if (borderRadius != null) {
      json["borderRadius"] = borderRadius;
    }
    if (borderWidth != null) {
      json["borderWidth"] = borderWidth;
    }
    if (bottomBand != null) {
      json["bottomBand"] = bottomBand;
    }
    if (circle != null) {
      json["circle"] = circle;
    }
    if (clearFilter != null) {
      json["clearFilter"] = clearFilter;
    }
    if (color != null) {
      json["color"] = color;
    }
    if (connector != null) {
      json["connector"] = connector;
    }
    if (crooked3 != null) {
      json["crooked3"] = crooked3;
    }
    if (crooked5 != null) {
      json["crooked5"] = crooked5;
    }
    if (crosshairX != null) {
      json["crosshairX"] = crosshairX;
    }
    if (crosshairY != null) {
      json["crosshairY"] = crosshairY;
    }
    if (decimals != null) {
      json["decimals"] = decimals;
    }
    if (deviation != null) {
      json["deviation"] = deviation;
    }
    if (editButton != null) {
      json["editButton"] = editButton;
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
    if (factor != null) {
      json["factor"] = factor;
    }
    if (fastAvgPeriod != null) {
      json["fastAvgPeriod"] = fastAvgPeriod;
    }
    if (fibonacci != null) {
      json["fibonacci"] = fibonacci;
    }
    if (fibonacciTimeZones != null) {
      json["fibonacciTimeZones"] = fibonacciTimeZones;
    }
    if (fill != null) {
      json["fill"] = fill;
    }
    if (flags != null) {
      json["flags"] = flags;
    }
    if (fontSize != null) {
      json["fontSize"] = fontSize;
    }
    if (format != null) {
      json["format"] = format;
    }
    if (height != null) {
      json["height"] = height;
    }
    if (highIndex != null) {
      json["highIndex"] = highIndex;
    }
    if (horizontalLine != null) {
      json["horizontalLine"] = horizontalLine;
    }
    if (increment != null) {
      json["increment"] = increment;
    }
    if (index != null) {
      json["index"] = index;
    }
    if (indicatorAliases != null) {
      json["indicatorAliases"] = indicatorAliases!.toJson();
    }
    if (infinityLine != null) {
      json["infinityLine"] = infinityLine;
    }
    if (initialAccelerationFactor != null) {
      json["initialAccelerationFactor"] = initialAccelerationFactor;
    }
    if (innerBackground != null) {
      json["innerBackground"] = innerBackground;
    }
    if (label != null) {
      json["label"] = label;
    }
    if (labelOptions != null) {
      json["labelOptions"] = labelOptions;
    }
    if (labels != null) {
      json["labels"] = labels;
    }
    if (line != null) {
      json["line"] = line;
    }
    if (lines != null) {
      json["lines"] = lines;
    }
    if (longPeriod != null) {
      json["longPeriod"] = longPeriod;
    }
    if (lowIndex != null) {
      json["lowIndex"] = lowIndex;
    }
    if (maxAccelerationFactor != null) {
      json["maxAccelerationFactor"] = maxAccelerationFactor;
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
    if (multiplier != null) {
      json["multiplier"] = multiplier;
    }
    if (multiplierATR != null) {
      json["multiplierATR"] = multiplierATR;
    }
    if (name != null) {
      json["name"] = name;
    }
    if (noFilterMatch != null) {
      json["noFilterMatch"] = noFilterMatch;
    }
    if (outerBackground != null) {
      json["outerBackground"] = outerBackground;
    }
    if (padding != null) {
      json["padding"] = padding;
    }
    if (parallelChannel != null) {
      json["parallelChannel"] = parallelChannel;
    }
    if (period != null) {
      json["period"] = period;
    }
    if (periodATR != null) {
      json["periodATR"] = periodATR;
    }
    if (periods != null) {
      json["periods"] = periods;
    }
    if (periodSenkouSpanB != null) {
      json["periodSenkouSpanB"] = periodSenkouSpanB;
    }
    if (periodTenkan != null) {
      json["periodTenkan"] = periodTenkan;
    }
    if (pitchfork != null) {
      json["pitchfork"] = pitchfork;
    }
    if (ranges != null) {
      json["ranges"] = ranges;
    }
    if (ray != null) {
      json["ray"] = ray;
    }
    if (rectangle != null) {
      json["rectangle"] = rectangle;
    }
    if (removeButton != null) {
      json["removeButton"] = removeButton;
    }
    if (saveButton != null) {
      json["saveButton"] = saveButton;
    }
    if (searchIndicators != null) {
      json["searchIndicators"] = searchIndicators;
    }
    if (segment != null) {
      json["segment"] = segment;
    }
    if (series != null) {
      json["series"] = series;
    }
    if (shapeOptions != null) {
      json["shapeOptions"] = shapeOptions;
    }
    if (shapes != null) {
      json["shapes"] = shapes;
    }
    if (shortPeriod != null) {
      json["shortPeriod"] = shortPeriod;
    }
    if (signalPeriod != null) {
      json["signalPeriod"] = signalPeriod;
    }
    if (simpleShapes != null) {
      json["simpleShapes"] = simpleShapes;
    }
    if (slowAvgPeriod != null) {
      json["slowAvgPeriod"] = slowAvgPeriod;
    }
    if (standardDeviation != null) {
      json["standardDeviation"] = standardDeviation;
    }
    if (stroke != null) {
      json["stroke"] = stroke;
    }
    if (strokeWidth != null) {
      json["strokeWidth"] = strokeWidth;
    }
    if (style != null) {
      json["style"] = style;
    }
    if (timeCycles != null) {
      json["timeCycles"] = timeCycles;
    }
    if (title != null) {
      json["title"] = title;
    }
    if (topBand != null) {
      json["topBand"] = topBand;
    }
    if (tunnel != null) {
      json["tunnel"] = tunnel;
    }
    if (typeOptions != null) {
      json["typeOptions"] = typeOptions;
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
    if (verticalLine != null) {
      json["verticalLine"] = verticalLine;
    }
    if (volume != null) {
      json["volume"] = volume;
    }
    if (xAxisUnit != null) {
      json["xAxisUnit"] = xAxisUnit;
    }
    return json;
  }
}
