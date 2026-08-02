part of 'hc_options.dart';

/// (Highcharts, Highstock) Options for the tooltip header when tooltip.split is
class HCPlotSplineTooltipHeaderOptions implements HCOption {
  const HCPlotSplineTooltipHeaderOptions({
    this.backgroundColor,
    this.borderColor,
    this.borderWidth,
    this.distance,
    this.shape,
    this.style,
  });

  /// (Highcharts, Highstock) Background color for the tooltip header when
  final dynamic backgroundColor;

  /// (Highcharts, Highstock) Border color for the tooltip header when
  final dynamic borderColor;

  /// (Highcharts, Highstock) The width of the border for the tooltip header
  final num? borderWidth;

  /// (Highcharts, Highstock) Distance between the plot area and the header
  final num? distance;

  /// (Highcharts, Highstock) The name of a symbol to use for the border around
  final String? shape;

  /// (Highcharts, Highstock) CSS styles for the tooltip header. The default is
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
