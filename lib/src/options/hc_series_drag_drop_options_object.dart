part of 'hc_options.dart';

/// (Highcharts, Highstock, Gantt) The draggable-points module allows points to
class HCSeriesDragDropOptionsObject implements HCOption {
  const HCSeriesDragDropOptionsObject({
    this.draggableClose,
    this.draggableEnd,
    this.draggableHigh,
    this.draggableLow,
    this.draggableOpen,
    this.draggableQ1,
    this.draggableQ3,
    this.draggableStart,
    this.draggableTarget,
    this.draggableX,
    this.draggableX1,
    this.draggableX2,
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

  /// (Highstock) Allow close value to be dragged individually.
  final dynamic draggableClose;

  /// (Gantt) Allow end value to be dragged individually.
  final dynamic draggableEnd;

  /// (Highstock) Allow high value to be dragged individually.
  final dynamic draggableHigh;

  /// (Highstock) Allow low value to be dragged individually.
  final dynamic draggableLow;

  /// (Highstock) Allow open value to be dragged individually.
  final dynamic draggableOpen;

  /// (Highcharts) Allow Q1 value to be dragged individually.
  final dynamic draggableQ1;

  /// (Highcharts) Allow Q3 value to be dragged individually.
  final dynamic draggableQ3;

  /// (Gantt) Allow start value to be dragged individually.
  final dynamic draggableStart;

  /// (Highcharts) Allow target value to be dragged individually.
  final dynamic draggableTarget;

  /// (Highcharts, Highstock, Gantt) Enable dragging in the X dimension.
  final dynamic draggableX;

  /// (Highcharts, Highstock, Gantt) Allow x value to be dragged individually.
  final dynamic draggableX1;

  /// (Highcharts, Highstock, Gantt) Allow x2 value to be dragged individually.
  final dynamic draggableX2;

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
    if (draggableClose != null) {
      json["draggableClose"] = hcJsonValue(draggableClose);
    }
    if (draggableEnd != null) {
      json["draggableEnd"] = hcJsonValue(draggableEnd);
    }
    if (draggableHigh != null) {
      json["draggableHigh"] = hcJsonValue(draggableHigh);
    }
    if (draggableLow != null) {
      json["draggableLow"] = hcJsonValue(draggableLow);
    }
    if (draggableOpen != null) {
      json["draggableOpen"] = hcJsonValue(draggableOpen);
    }
    if (draggableQ1 != null) {
      json["draggableQ1"] = hcJsonValue(draggableQ1);
    }
    if (draggableQ3 != null) {
      json["draggableQ3"] = hcJsonValue(draggableQ3);
    }
    if (draggableStart != null) {
      json["draggableStart"] = hcJsonValue(draggableStart);
    }
    if (draggableTarget != null) {
      json["draggableTarget"] = hcJsonValue(draggableTarget);
    }
    if (draggableX != null) {
      json["draggableX"] = hcJsonValue(draggableX);
    }
    if (draggableX1 != null) {
      json["draggableX1"] = hcJsonValue(draggableX1);
    }
    if (draggableX2 != null) {
      json["draggableX2"] = hcJsonValue(draggableX2);
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
