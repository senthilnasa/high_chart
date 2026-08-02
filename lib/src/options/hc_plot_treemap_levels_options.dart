part of 'hc_options.dart';

/// (Highcharts) Set options on specific levels. Takes precedence over series
class HCPlotTreemapLevelsOptions implements HCOption {
  const HCPlotTreemapLevelsOptions({
    this.borderColor,
    this.borderDashStyle,
    this.borderWidth,
    this.color,
    this.colorVariation,
    this.dataLabels,
    this.layoutAlgorithm,
    this.layoutStartingDirection,
    this.level,
  });

  /// (Highcharts) Can set a `borderColor` on all points which lies on the
  final String? borderColor;

  /// (Highcharts) Set the dash style of the border of all the point which
  final String? borderDashStyle;

  /// (Highcharts) Can set the borderWidth on all points which lies on the
  final num? borderWidth;

  /// (Highcharts) Can set a color on all points which lies on the same
  final dynamic color;

  /// (Highcharts) A configuration object to define how the color of a
  final HCPlotTreemapLevelsColorVariationOptions? colorVariation;

  /// (Highcharts) Can set the options of dataLabels on each point which
  final dynamic dataLabels;

  /// (Highcharts) Can set the layoutAlgorithm option on a specific level.
  final String? layoutAlgorithm;

  /// (Highcharts) Can set the layoutStartingDirection option on a specific
  final String? layoutStartingDirection;

  /// (Highcharts) Decides which level takes effect from the options set in
  final num? level;

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
    if (colorVariation != null) {
      json["colorVariation"] = colorVariation!.toJson();
    }
    if (dataLabels != null) {
      json["dataLabels"] = hcJsonValue(dataLabels);
    }
    if (layoutAlgorithm != null) {
      json["layoutAlgorithm"] = layoutAlgorithm;
    }
    if (layoutStartingDirection != null) {
      json["layoutStartingDirection"] = layoutStartingDirection;
    }
    if (level != null) {
      json["level"] = level;
    }
    return json;
  }
}
