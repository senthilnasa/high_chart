part of 'hc_options.dart';

/// (Highcharts, Highstock, Gantt) Options for the drag handles available in
class HCDragDropHandleOptionsObject implements HCOption {
  const HCDragDropHandleOptionsObject({
    this.className,
    this.color,
    this.cursor,
    this.lineColor,
    this.lineWidth,
    this.pathFormatter,
    this.zIndex,
  });

  /// (Highcharts, Highstock, Gantt) The class name of the drag handles.
  final String? className;

  /// (Highcharts, Highstock, Gantt) The fill color of the drag handles.
  final dynamic color;

  /// (Highcharts, Highstock, Gantt) The mouse cursor to use for the drag
  final String? cursor;

  /// (Highcharts, Highstock, Gantt) The line color of the drag handles.
  final String? lineColor;

  /// (Highcharts, Highstock, Gantt) The line width for the drag handles.
  final num? lineWidth;

  /// (Highcharts, Highstock, Gantt) Function to define the SVG path to use for
  final dynamic pathFormatter;

  /// (Highcharts, Highstock, Gantt) The z index for the drag handles.
  final num? zIndex;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (className != null) {
      json["className"] = className;
    }
    if (color != null) {
      json["color"] = hcJsonValue(color);
    }
    if (cursor != null) {
      json["cursor"] = cursor;
    }
    if (lineColor != null) {
      json["lineColor"] = lineColor;
    }
    if (lineWidth != null) {
      json["lineWidth"] = lineWidth;
    }
    if (pathFormatter != null) {
      json["pathFormatter"] = hcJsonValue(pathFormatter);
    }
    if (zIndex != null) {
      json["zIndex"] = zIndex;
    }
    return json;
  }
}
