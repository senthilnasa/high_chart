part of 'hc_options.dart';

/// (Highcharts) Options for the tooltip header when tooltip.split is
class HCPlotOrganizationTooltipHeaderOptions implements HCOption {
  const HCPlotOrganizationTooltipHeaderOptions({
    this.backgroundColor,
    this.borderColor,
    this.borderWidth,
    this.distance,
    this.shape,
    this.style,
  });

  /// (Highcharts) Background color for the tooltip header when
  final dynamic backgroundColor;

  /// (Highcharts) Border color for the tooltip header when tooltip.split
  final dynamic borderColor;

  /// (Highcharts) The width of the border for the tooltip header when
  final num? borderWidth;

  /// (Highcharts) Distance between the plot area and the header (except
  final num? distance;

  /// (Highcharts) The name of a symbol to use for the border around the
  final String? shape;

  /// (Highcharts) CSS styles for the tooltip header. The default is `{
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
