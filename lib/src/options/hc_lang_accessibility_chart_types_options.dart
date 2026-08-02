part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Chart type description strings. This
class HCLangAccessibilityChartTypesOptions implements HCOption {
  const HCLangAccessibilityChartTypesOptions({
    this.barMultiple,
    this.barSingle,
    this.boxplotMultiple,
    this.boxplotSingle,
    this.bubbleMultiple,
    this.bubbleSingle,
    this.columnMultiple,
    this.columnSingle,
    this.combinationChart,
    this.defaultMultiple,
    this.defaultSingle,
    this.emptyChart,
    this.lineMultiple,
    this.lineSingle,
    this.mapTypeDescription,
    this.pieMultiple,
    this.pieSingle,
    this.scatterMultiple,
    this.scatterSingle,
    this.splineMultiple,
    this.splineSingle,
    this.unknownMap,
  });

  final String? barMultiple;

  final String? barSingle;

  final String? boxplotMultiple;

  final String? boxplotSingle;

  final String? bubbleMultiple;

  final String? bubbleSingle;

  final String? columnMultiple;

  final String? columnSingle;

  final String? combinationChart;

  final String? defaultMultiple;

  final String? defaultSingle;

  final String? emptyChart;

  final String? lineMultiple;

  final String? lineSingle;

  final String? mapTypeDescription;

  final String? pieMultiple;

  final String? pieSingle;

  final String? scatterMultiple;

  final String? scatterSingle;

  final String? splineMultiple;

  final String? splineSingle;

  final String? unknownMap;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (barMultiple != null) {
      json["barMultiple"] = barMultiple;
    }
    if (barSingle != null) {
      json["barSingle"] = barSingle;
    }
    if (boxplotMultiple != null) {
      json["boxplotMultiple"] = boxplotMultiple;
    }
    if (boxplotSingle != null) {
      json["boxplotSingle"] = boxplotSingle;
    }
    if (bubbleMultiple != null) {
      json["bubbleMultiple"] = bubbleMultiple;
    }
    if (bubbleSingle != null) {
      json["bubbleSingle"] = bubbleSingle;
    }
    if (columnMultiple != null) {
      json["columnMultiple"] = columnMultiple;
    }
    if (columnSingle != null) {
      json["columnSingle"] = columnSingle;
    }
    if (combinationChart != null) {
      json["combinationChart"] = combinationChart;
    }
    if (defaultMultiple != null) {
      json["defaultMultiple"] = defaultMultiple;
    }
    if (defaultSingle != null) {
      json["defaultSingle"] = defaultSingle;
    }
    if (emptyChart != null) {
      json["emptyChart"] = emptyChart;
    }
    if (lineMultiple != null) {
      json["lineMultiple"] = lineMultiple;
    }
    if (lineSingle != null) {
      json["lineSingle"] = lineSingle;
    }
    if (mapTypeDescription != null) {
      json["mapTypeDescription"] = mapTypeDescription;
    }
    if (pieMultiple != null) {
      json["pieMultiple"] = pieMultiple;
    }
    if (pieSingle != null) {
      json["pieSingle"] = pieSingle;
    }
    if (scatterMultiple != null) {
      json["scatterMultiple"] = scatterMultiple;
    }
    if (scatterSingle != null) {
      json["scatterSingle"] = scatterSingle;
    }
    if (splineMultiple != null) {
      json["splineMultiple"] = splineMultiple;
    }
    if (splineSingle != null) {
      json["splineSingle"] = splineSingle;
    }
    if (unknownMap != null) {
      json["unknownMap"] = unknownMap;
    }
    return json;
  }
}
