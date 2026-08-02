part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Lang configuration for the series
class HCLangAccessibilitySeriesSummaryOptions implements HCOption {
  const HCLangAccessibilitySeriesSummaryOptions({
    this.bar,
    this.barCombination,
    this.boxplot,
    this.boxplotCombination,
    this.bubble,
    this.bubbleCombination,
    this.column,
    this.columnCombination,
    this.default_,
    this.defaultCombination,
    this.line,
    this.lineCombination,
    this.map,
    this.mapbubble,
    this.mapbubbleCombination,
    this.mapCombination,
    this.mapline,
    this.maplineCombination,
    this.pie,
    this.pieCombination,
    this.scatter,
    this.scatterCombination,
    this.spline,
    this.splineCombination,
  });

  final String? bar;

  final String? barCombination;

  final String? boxplot;

  final String? boxplotCombination;

  final String? bubble;

  final String? bubbleCombination;

  final String? column;

  final String? columnCombination;

  final String? default_;

  final String? defaultCombination;

  final String? line;

  final String? lineCombination;

  final String? map;

  final String? mapbubble;

  final String? mapbubbleCombination;

  final String? mapCombination;

  final String? mapline;

  final String? maplineCombination;

  final String? pie;

  final String? pieCombination;

  final String? scatter;

  final String? scatterCombination;

  final String? spline;

  final String? splineCombination;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (bar != null) {
      json["bar"] = bar;
    }
    if (barCombination != null) {
      json["barCombination"] = barCombination;
    }
    if (boxplot != null) {
      json["boxplot"] = boxplot;
    }
    if (boxplotCombination != null) {
      json["boxplotCombination"] = boxplotCombination;
    }
    if (bubble != null) {
      json["bubble"] = bubble;
    }
    if (bubbleCombination != null) {
      json["bubbleCombination"] = bubbleCombination;
    }
    if (column != null) {
      json["column"] = column;
    }
    if (columnCombination != null) {
      json["columnCombination"] = columnCombination;
    }
    if (default_ != null) {
      json["default"] = default_;
    }
    if (defaultCombination != null) {
      json["defaultCombination"] = defaultCombination;
    }
    if (line != null) {
      json["line"] = line;
    }
    if (lineCombination != null) {
      json["lineCombination"] = lineCombination;
    }
    if (map != null) {
      json["map"] = map;
    }
    if (mapbubble != null) {
      json["mapbubble"] = mapbubble;
    }
    if (mapbubbleCombination != null) {
      json["mapbubbleCombination"] = mapbubbleCombination;
    }
    if (mapCombination != null) {
      json["mapCombination"] = mapCombination;
    }
    if (mapline != null) {
      json["mapline"] = mapline;
    }
    if (maplineCombination != null) {
      json["maplineCombination"] = maplineCombination;
    }
    if (pie != null) {
      json["pie"] = pie;
    }
    if (pieCombination != null) {
      json["pieCombination"] = pieCombination;
    }
    if (scatter != null) {
      json["scatter"] = scatter;
    }
    if (scatterCombination != null) {
      json["scatterCombination"] = scatterCombination;
    }
    if (spline != null) {
      json["spline"] = spline;
    }
    if (splineCombination != null) {
      json["splineCombination"] = splineCombination;
    }
    return json;
  }
}
