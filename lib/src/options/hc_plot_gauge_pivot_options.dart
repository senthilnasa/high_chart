part of 'hc_options.dart';

/// (Highcharts) Options for the pivot or the center point of the gauge.
class HCPlotGaugePivotOptions implements HCOption {
  const HCPlotGaugePivotOptions({
    this.backgroundColor,
    this.borderColor,
    this.borderWidth,
    this.radius,
  });

  /// (Highcharts) The background color or fill of the pivot.
  final dynamic backgroundColor;

  /// (Highcharts) The border or stroke color of the pivot.
  final dynamic borderColor;

  /// (Highcharts) The border or stroke width of the pivot.
  final num? borderWidth;

  /// (Highcharts) The radius of the pivot, the center point of the gauge.
  final dynamic radius;

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
    if (radius != null) {
      json["radius"] = hcJsonValue(radius);
    }
    return json;
  }
}
