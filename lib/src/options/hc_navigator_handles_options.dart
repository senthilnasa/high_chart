part of 'hc_options.dart';

/// (Highstock, Gantt) Options for the handles for dragging the zoomed area.
class HCNavigatorHandlesOptions implements HCOption {
  const HCNavigatorHandlesOptions({
    this.backgroundColor,
    this.borderColor,
    this.borderRadius,
    this.enabled,
    this.height,
    this.lineWidth,
    this.symbols,
    this.width,
  });

  /// (Highstock, Gantt) The fill for the handle.
  final dynamic backgroundColor;

  /// (Highstock, Gantt) The stroke for the handle border and the stripes
  final dynamic borderColor;

  /// (Highstock, Gantt) Border radius of the handles.
  final num? borderRadius;

  /// (Highstock, Gantt) Allows to enable/disable handles.
  final dynamic enabled;

  /// (Highstock, Gantt) Height for handles.
  final num? height;

  /// (Highstock, Gantt) The width for the handle border and the stripes
  final num? lineWidth;

  /// (Highstock, Gantt) Array to define shapes of handles. 0-index for left,
  final List<String>? symbols;

  /// (Highstock, Gantt) Width for handles.
  final num? width;

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
      json["borderRadius"] = borderRadius;
    }
    if (enabled != null) {
      json["enabled"] = hcJsonValue(enabled);
    }
    if (height != null) {
      json["height"] = height;
    }
    if (lineWidth != null) {
      json["lineWidth"] = lineWidth;
    }
    if (symbols != null) {
      json["symbols"] = symbols;
    }
    if (width != null) {
      json["width"] = width;
    }
    return json;
  }
}
