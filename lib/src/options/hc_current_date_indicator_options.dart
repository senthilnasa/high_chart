part of 'hc_options.dart';

/// (Gantt) Show an indicator on the axis for the current date and time. Can be a
class HCCurrentDateIndicatorOptions implements HCOption {
  const HCCurrentDateIndicatorOptions({
    this.color,
    this.dashStyle,
    this.events,
    this.id,
    this.label,
    this.labels,
    this.width,
    this.zIndex,
  });

  /// (Gantt) The color of the line.
  final String? color;

  /// (Gantt) The dashing or dot style for the plot line. For possible values
  final String? dashStyle;

  /// (Gantt) An object defining mouse events for the plot line. Supported
  final dynamic events;

  /// (Gantt) An id used for identifying the plot line in Axis.removePlotLine.
  final String? id;

  /// (Gantt) Text labels for the plot lines
  final dynamic label;

  final dynamic labels;

  /// (Gantt) The width or thickness of the plot line.
  final num? width;

  /// (Gantt) The z index of the plot line within the chart.
  final num? zIndex;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (color != null) {
      json["color"] = color;
    }
    if (dashStyle != null) {
      json["dashStyle"] = dashStyle;
    }
    if (events != null) {
      json["events"] = hcJsonValue(events);
    }
    if (id != null) {
      json["id"] = id;
    }
    if (label != null) {
      json["label"] = hcJsonValue(label);
    }
    if (labels != null) {
      json["labels"] = hcJsonValue(labels);
    }
    if (width != null) {
      json["width"] = width;
    }
    if (zIndex != null) {
      json["zIndex"] = zIndex;
    }
    return json;
  }
}
