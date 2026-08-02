part of 'hc_options.dart';

/// (Highcharts) Set options on specific levels. Takes precedence over series
class HCPlotArcdiagramLevelsOptions implements HCOption {
  const HCPlotArcdiagramLevelsOptions({
    this.borderColor,
    this.borderWidth,
    this.color,
    this.colorByPoint,
    this.dataLabels,
    this.level,
    this.linkOpacity,
    this.states,
  });

  /// (Highcharts) Can set `borderColor` on all nodes which lay on the same
  final String? borderColor;

  /// (Highcharts) Can set `borderWidth` on all nodes which lay on the same
  final num? borderWidth;

  /// (Highcharts) Can set `color` on all nodes which lay on the same
  final dynamic color;

  /// (Highcharts) Can set `colorByPoint` on all nodes which lay on the
  final dynamic colorByPoint;

  /// (Highcharts, Highstock, Highmaps, Gantt) Can set `dataLabels` on all
  final dynamic dataLabels;

  /// (Highcharts) Decides which level takes effect from the options set in
  final num? level;

  /// (Highcharts) Can set `linkOpacity` on all points which lay on the
  final num? linkOpacity;

  /// (Highcharts) Can set `states` on all nodes and points which lay on
  final HCSeriesStatesOptionsObject? states;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (borderColor != null) {
      json["borderColor"] = borderColor;
    }
    if (borderWidth != null) {
      json["borderWidth"] = borderWidth;
    }
    if (color != null) {
      json["color"] = hcJsonValue(color);
    }
    if (colorByPoint != null) {
      json["colorByPoint"] = hcJsonValue(colorByPoint);
    }
    if (dataLabels != null) {
      json["dataLabels"] = hcJsonValue(dataLabels);
    }
    if (level != null) {
      json["level"] = level;
    }
    if (linkOpacity != null) {
      json["linkOpacity"] = linkOpacity;
    }
    if (states != null) {
      json["states"] = states!.toJson();
    }
    return json;
  }
}
