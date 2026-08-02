part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Options for the tooltip header when
class HCPlotSeriesTooltipHeaderOptions implements HCOption {
  const HCPlotSeriesTooltipHeaderOptions({
    this.backgroundColor,
    this.borderColor,
    this.borderWidth,
    this.distance,
    this.shape,
    this.style,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Background color for the tooltip
  final dynamic backgroundColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) Border color for the tooltip
  final dynamic borderColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) The width of the border for the
  final num? borderWidth;

  /// (Highcharts, Highstock, Highmaps, Gantt) Distance between the plot area
  final num? distance;

  /// (Highcharts, Highstock, Highmaps, Gantt) The name of a symbol to use for
  final String? shape;

  /// (Highcharts, Highstock, Highmaps, Gantt) CSS styles for the tooltip
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
