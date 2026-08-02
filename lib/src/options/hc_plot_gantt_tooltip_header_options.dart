part of 'hc_options.dart';

/// (Gantt) Options for the tooltip header when tooltip.split is enabled. The
class HCPlotGanttTooltipHeaderOptions implements HCOption {
  const HCPlotGanttTooltipHeaderOptions({
    this.backgroundColor,
    this.borderColor,
    this.borderWidth,
    this.distance,
    this.shape,
    this.style,
  });

  /// (Gantt) Background color for the tooltip header when tooltip.split is
  final dynamic backgroundColor;

  /// (Gantt) Border color for the tooltip header when tooltip.split is
  final dynamic borderColor;

  /// (Gantt) The width of the border for the tooltip header when tooltip.split
  final num? borderWidth;

  /// (Gantt) Distance between the plot area and the header (except the
  final num? distance;

  /// (Gantt) The name of a symbol to use for the border around the tooltip
  final String? shape;

  /// (Gantt) CSS styles for the tooltip header. The default is `{ fontSize:
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
