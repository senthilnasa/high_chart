part of 'hc_options.dart';

/// (Gantt) Data for a Gantt series.
class HCGanttPointOptionsObject implements HCOption {
  const HCGanttPointOptionsObject({
    this.accessibility,
    this.collapsed,
    this.color,
    this.colorIndex,
    this.completed,
    this.custom,
    this.dependency,
    this.dragDrop,
    this.end,
    this.id,
    this.labelrank,
    this.milestone,
    this.name,
    this.parent,
    this.partialFill,
    this.start,
    this.y,
  });

  /// (Gantt) Accessibility options for a data point.
  final HCPointAccessibilityOptionsObject? accessibility;

  /// (Gantt) Whether the grid node belonging to this point should start as
  final dynamic collapsed;

  /// (Highcharts, Highstock, Gantt) Individual color for the point. By default
  final dynamic color;

  /// (Highcharts, Gantt) A specific color index to use for the point, so its
  final num? colorIndex;

  /// (Gantt) Progress indicator, how much of the task completed. When set as a
  final dynamic completed;

  /// (Gantt) A reserved subspace to store options and values for customized
  final HCDictionary? custom;

  /// (Gantt) The ID of the point (task) that this point depends on in Gantt
  final dynamic dependency;

  /// (Gantt) Point specific options for the draggable-points module. Overrides
  final HCSeriesLineDataDragDropOptions? dragDrop;

  /// (Gantt) The end time of a task. May be a timestamp or a date string.
  final dynamic end;

  /// (Highcharts, Highstock, Gantt) An id for the point. This can be used
  final String? id;

  /// (Gantt) The rank for all this point's data labels in case of collision.
  final num? labelrank;

  /// (Gantt) Whether this point is a milestone. If so, only the `start` option
  final dynamic milestone;

  /// (Gantt) The name of a task. If a `treegrid` y-axis is used (default in
  final String? name;

  /// (Gantt) The ID of the parent point (task) of this point in Gantt charts.
  final String? parent;

  /// (Highcharts, Highstock, Gantt) A partial fill for each point, typically
  final HCXrangePointPartialFillOptionsObject? partialFill;

  /// (Gantt) The start time of a task. May be a timestamp or a date string.
  final dynamic start;

  /// (Gantt) The Y value of a task.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (accessibility != null) {
      json["accessibility"] = accessibility!.toJson();
    }
    if (collapsed != null) {
      json["collapsed"] = hcJsonValue(collapsed);
    }
    if (color != null) {
      json["color"] = hcJsonValue(color);
    }
    if (colorIndex != null) {
      json["colorIndex"] = colorIndex;
    }
    if (completed != null) {
      json["completed"] = hcJsonValue(completed);
    }
    if (custom != null) {
      json["custom"] = custom!.toJson();
    }
    if (dependency != null) {
      json["dependency"] = hcJsonValue(dependency);
    }
    if (dragDrop != null) {
      json["dragDrop"] = dragDrop!.toJson();
    }
    if (end != null) {
      json["end"] = hcJsonValue(end);
    }
    if (id != null) {
      json["id"] = id;
    }
    if (labelrank != null) {
      json["labelrank"] = labelrank;
    }
    if (milestone != null) {
      json["milestone"] = hcJsonValue(milestone);
    }
    if (name != null) {
      json["name"] = name;
    }
    if (parent != null) {
      json["parent"] = parent;
    }
    if (partialFill != null) {
      json["partialFill"] = partialFill!.toJson();
    }
    if (start != null) {
      json["start"] = hcJsonValue(start);
    }
    if (y != null) {
      json["y"] = y;
    }
    return json;
  }
}
