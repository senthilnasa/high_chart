part of 'hc_options.dart';

/// (Highcharts, Highstock, Gantt) Style options for the guide box default state.
class HCDragDropGuideBoxOptionsObject implements HCOption {
  const HCDragDropGuideBoxOptionsObject({
    this.className,
    this.color,
    this.cursor,
    this.lineColor,
    this.lineWidth,
    this.zIndex,
  });

  /// (Highcharts, Highstock, Gantt) CSS class name of the guide box in this
  final String? className;

  /// (Highcharts, Highstock, Gantt) Guide box fill color.
  final dynamic color;

  /// (Highcharts, Highstock, Gantt) Guide box cursor.
  final String? cursor;

  /// (Highcharts, Highstock, Gantt) Color of the border around the guide box.
  final String? lineColor;

  /// (Highcharts, Highstock, Gantt) Width of the line around the guide box.
  final num? lineWidth;

  /// (Highcharts, Highstock, Gantt) Guide box zIndex.
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
    if (zIndex != null) {
      json["zIndex"] = zIndex;
    }
    return json;
  }
}
