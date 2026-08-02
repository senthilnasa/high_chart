part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps) Options for the tooltip header when
class HCPlotContourTooltipHeaderOptions implements HCOption {
  const HCPlotContourTooltipHeaderOptions({
    this.backgroundColor,
    this.borderColor,
    this.borderWidth,
    this.distance,
    this.shape,
    this.style,
  });

  /// (Highcharts, Highstock, Highmaps) Background color for the tooltip
  final dynamic backgroundColor;

  /// (Highcharts, Highstock, Highmaps) Border color for the tooltip header
  final dynamic borderColor;

  /// (Highcharts, Highstock, Highmaps) The width of the border for the
  final num? borderWidth;

  /// (Highcharts, Highstock, Highmaps) Distance between the plot area and
  final num? distance;

  /// (Highcharts, Highstock, Highmaps) The name of a symbol to use for the
  final String? shape;

  /// (Highcharts, Highstock, Highmaps) CSS styles for the tooltip header.
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
