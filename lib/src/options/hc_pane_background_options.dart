part of 'hc_options.dart';

/// (Highcharts) A background item or an array of such for the pane. When used in
class HCPaneBackgroundOptions implements HCOption {
  const HCPaneBackgroundOptions({
    this.backgroundColor,
    this.borderColor,
    this.borderRadius,
    this.borderWidth,
    this.className,
    this.innerRadius,
    this.outerRadius,
    this.shape,
  });

  /// (Highcharts) The background color or gradient for the pane.
  final dynamic backgroundColor;

  /// (Highcharts) The pane background border color.
  final dynamic borderColor;

  /// (Highcharts) The specific border radius of the pane background when the
  final dynamic borderRadius;

  /// (Highcharts) The pixel border width of the pane background.
  final num? borderWidth;

  /// (Highcharts) An additional class name to apply to the pane background.
  final String? className;

  /// (Highcharts) The inner radius of the pane background. Can be either
  final dynamic innerRadius;

  /// (Highcharts) The outer radius of the circular pane background. Can be
  final dynamic outerRadius;

  /// (Highcharts) The shape of the pane background. When `solid`, the
  final String? shape;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (backgroundColor != null) {
      json["backgroundColor"] = hcJsonValue(backgroundColor);
    }
    if (borderColor != null) {
      json["borderColor"] = hcJsonValue(borderColor);
    }
    if (borderRadius != null) {
      json["borderRadius"] = hcJsonValue(borderRadius);
    }
    if (borderWidth != null) {
      json["borderWidth"] = borderWidth;
    }
    if (className != null) {
      json["className"] = className;
    }
    if (innerRadius != null) {
      json["innerRadius"] = hcJsonValue(innerRadius);
    }
    if (outerRadius != null) {
      json["outerRadius"] = hcJsonValue(outerRadius);
    }
    if (shape != null) {
      json["shape"] = shape;
    }
    return json;
  }
}
