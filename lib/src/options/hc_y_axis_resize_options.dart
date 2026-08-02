part of 'hc_options.dart';

/// (Highstock) Options for axis resizing. It adds a thick line between panes
class HCYAxisResizeOptions implements HCOption {
  const HCYAxisResizeOptions({
    this.controlledAxis,
    this.cursor,
    this.enabled,
    this.lineColor,
    this.lineDashStyle,
    this.lineWidth,
    this.x,
    this.y,
  });

  /// (Highstock) Contains two arrays of axes that are controlled by control
  final HCYAxisResizeControlledAxisOptions? controlledAxis;

  /// (Highstock) Cursor style for the control line.
  final String? cursor;

  /// (Highstock) Enable or disable resize by drag for the axis.
  final dynamic enabled;

  /// (Highstock) Color of the control line.
  final String? lineColor;

  /// (Highstock) Dash style of the control line.
  final String? lineDashStyle;

  /// (Highstock) Width of the control line.
  final num? lineWidth;

  /// (Highstock) Horizontal offset of the control line.
  final num? x;

  /// (Highstock) Vertical offset of the control line.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (controlledAxis != null) {
      json["controlledAxis"] = controlledAxis!.toJson();
    }
    if (cursor != null) {
      json["cursor"] = cursor;
    }
    if (enabled != null) {
      json["enabled"] = hcJsonValue(enabled);
    }
    if (lineColor != null) {
      json["lineColor"] = lineColor;
    }
    if (lineDashStyle != null) {
      json["lineDashStyle"] = lineDashStyle;
    }
    if (lineWidth != null) {
      json["lineWidth"] = lineWidth;
    }
    if (x != null) {
      json["x"] = x;
    }
    if (y != null) {
      json["y"] = y;
    }
    return json;
  }
}
