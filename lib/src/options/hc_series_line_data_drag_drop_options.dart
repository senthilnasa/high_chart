part of 'hc_options.dart';

/// (Highcharts, Highstock, Gantt) Point specific options for the
class HCSeriesLineDataDragDropOptions implements HCOption {
  const HCSeriesLineDataDragDropOptions({
    this.draggableX,
    this.draggableY,
    this.dragHandle,
    this.dragMaxX,
    this.dragMaxY,
    this.dragMinX,
    this.dragMinY,
    this.dragPrecisionX,
    this.dragPrecisionY,
    this.dragSensitivity,
    this.groupBy,
    this.guideBox,
    this.liveRedraw,
  });

  /// (Highcharts, Highstock, Gantt) Enable dragging in the X dimension.
  final dynamic draggableX;

  /// (Highcharts, Highstock, Gantt) Enable dragging in the Y dimension. Note
  final dynamic draggableY;

  /// (Highcharts, Highstock, Gantt) Options for the drag handles available in
  final HCDragDropHandleOptionsObject? dragHandle;

  /// (Highcharts, Highstock, Gantt) Set the maximum X value the points can be
  final dynamic dragMaxX;

  /// (Highcharts, Highstock, Gantt) Set the maximum Y value the points can be
  final num? dragMaxY;

  /// (Highcharts, Highstock, Gantt) Set the minimum X value the points can be
  final dynamic dragMinX;

  /// (Highcharts, Highstock, Gantt) Set the minimum Y value the points can be
  final num? dragMinY;

  /// (Highcharts, Highstock, Gantt) The X precision value to drag to for this
  final num? dragPrecisionX;

  /// (Highcharts, Highstock, Gantt) The Y precision value to drag to for this
  final num? dragPrecisionY;

  /// (Highcharts, Highstock, Gantt) The amount of pixels to drag the pointer
  final num? dragSensitivity;

  /// (Highcharts, Highstock, Gantt) Group the points by a property. Points
  final String? groupBy;

  /// (Highcharts, Highstock, Gantt) Style options for the guide box. The guide
  final dynamic guideBox;

  /// (Highcharts, Highstock, Gantt) Update points as they are dragged. If
  final dynamic liveRedraw;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (draggableX != null) {
      json["draggableX"] = hcJsonValue(draggableX);
    }
    if (draggableY != null) {
      json["draggableY"] = hcJsonValue(draggableY);
    }
    if (dragHandle != null) {
      json["dragHandle"] = dragHandle!.toJson();
    }
    if (dragMaxX != null) {
      json["dragMaxX"] = hcJsonValue(dragMaxX);
    }
    if (dragMaxY != null) {
      json["dragMaxY"] = dragMaxY;
    }
    if (dragMinX != null) {
      json["dragMinX"] = hcJsonValue(dragMinX);
    }
    if (dragMinY != null) {
      json["dragMinY"] = dragMinY;
    }
    if (dragPrecisionX != null) {
      json["dragPrecisionX"] = dragPrecisionX;
    }
    if (dragPrecisionY != null) {
      json["dragPrecisionY"] = dragPrecisionY;
    }
    if (dragSensitivity != null) {
      json["dragSensitivity"] = dragSensitivity;
    }
    if (groupBy != null) {
      json["groupBy"] = groupBy;
    }
    if (guideBox != null) {
      json["guideBox"] = hcJsonValue(guideBox);
    }
    if (liveRedraw != null) {
      json["liveRedraw"] = hcJsonValue(liveRedraw);
    }
    return json;
  }
}
