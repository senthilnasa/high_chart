part of 'hc_options.dart';

/// (Highcharts, Highstock, Gantt) Options for the tooltip header when
class HCPlotXrangeTooltipHeaderOptions implements HCOption {
  const HCPlotXrangeTooltipHeaderOptions({
    this.backgroundColor,
    this.borderColor,
    this.borderWidth,
    this.distance,
    this.shape,
    this.style,
  });

  /// (Highcharts, Highstock, Gantt) Background color for the tooltip
  final dynamic backgroundColor;

  /// (Highcharts, Highstock, Gantt) Border color for the tooltip header
  final dynamic borderColor;

  /// (Highcharts, Highstock, Gantt) The width of the border for the
  final num? borderWidth;

  /// (Highcharts, Highstock, Gantt) Distance between the plot area and the
  final num? distance;

  /// (Highcharts, Highstock, Gantt) The name of a symbol to use for the
  final String? shape;

  /// (Highcharts, Highstock, Gantt) CSS styles for the tooltip header. The
  final dynamic style;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (backgroundColor != null) {
      json["backgroundColor"] = hcJsonValue(backgroundColor);
    }
    if (borderColor != null) {
      json["borderColor"] = hcJsonValue(borderColor);
    }
    if (borderWidth != null) {
      json["borderWidth"] = borderWidth;
    }
    if (distance != null) {
      json["distance"] = distance;
    }
    if (shape != null) {
      json["shape"] = shape;
    }
    if (style != null) {
      json["style"] = hcJsonValue(style);
    }
    return json;
  }
}
