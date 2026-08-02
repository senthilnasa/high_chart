part of 'hc_options.dart';

/// (Highcharts) Set options on specific levels. Takes precedence over series
class HCPlotSunburstLevelsOptions implements HCOption {
  const HCPlotSunburstLevelsOptions({
    this.borderColor,
    this.borderDashStyle,
    this.borderWidth,
    this.color,
    this.colorByPoint,
    this.colorVariation,
    this.dataLabels,
    this.level,
    this.levelSize,
  });

  /// (Highcharts) Can set a `borderColor` on all points which lies on the
  final String? borderColor;

  /// (Highcharts) Can set a `borderDashStyle` on all points which lies on
  final String? borderDashStyle;

  /// (Highcharts) Can set a `borderWidth` on all points which lies on the
  final num? borderWidth;

  /// (Highcharts) Can set a `color` on all points which lies on the same
  final dynamic color;

  /// (Highcharts) Determines whether the chart should receive one color
  final dynamic colorByPoint;

  /// (Highcharts) Can set a `colorVariation` on all points which lies on
  final HCPlotSunburstLevelsColorVariationOptions? colorVariation;

  /// (Highcharts, Highstock, Highmaps, Gantt) Can set `dataLabels` on all
  final dynamic dataLabels;

  /// (Highcharts) Decides which level takes effect from the options set in
  final num? level;

  /// (Highcharts) Can set a `levelSize` on all points which lies on the
  final dynamic levelSize;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (borderColor != null) {
      json["borderColor"] = borderColor;
    }
    if (borderDashStyle != null) {
      json["borderDashStyle"] = borderDashStyle;
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
    if (colorVariation != null) {
      json["colorVariation"] = colorVariation!.toJson();
    }
    if (dataLabels != null) {
      json["dataLabels"] = hcJsonValue(dataLabels);
    }
    if (level != null) {
      json["level"] = level;
    }
    if (levelSize != null) {
      json["levelSize"] = hcJsonValue(levelSize);
    }
    return json;
  }
}
