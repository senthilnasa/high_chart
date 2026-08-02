part of 'hc_options.dart';

/// (Highcharts, Highstock, Gantt) An array of lines stretching across the plot
class HCNavigatorXAxisPlotLinesOptions implements HCOption {
  const HCNavigatorXAxisPlotLinesOptions({
    this.acrossPanes,
    this.className,
    this.color,
    this.dashStyle,
    this.events,
    this.id,
    this.label,
    this.labels,
    this.value,
    this.width,
    this.zIndex,
  });

  /// (Highstock) Flag to decide if plotLine should be rendered across all
  final dynamic acrossPanes;

  /// (Highcharts, Highstock, Gantt) A custom class name, in addition to the
  final String? className;

  /// (Highcharts, Highstock, Gantt) The color of the line.
  final String? color;

  /// (Highcharts, Highstock, Gantt) The dashing or dot style for the plot
  final String? dashStyle;

  /// (Highcharts, Highstock, Gantt) An object defining mouse events for the
  final HCNavigatorXAxisPlotLinesEventsOptions? events;

  /// (Highcharts, Highstock, Gantt) An id used for identifying the plot line
  final String? id;

  /// (Highcharts, Highstock, Gantt) Text labels for the plot lines
  final HCNavigatorXAxisPlotLinesLabelOptions? label;

  final HCNavigatorXAxisPlotLinesLabelsOptions? labels;

  /// (Highcharts, Highstock, Gantt) The position of the line in axis units.
  final dynamic value;

  /// (Highcharts, Highstock, Gantt) The width or thickness of the plot line.
  final num? width;

  /// (Highcharts, Highstock, Gantt) The z index of the plot line within the
  final num? zIndex;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (acrossPanes != null) {
      json["acrossPanes"] = hcJsonValue(acrossPanes);
    }
    if (className != null) {
      json["className"] = className;
    }
    if (color != null) {
      json["color"] = color;
    }
    if (dashStyle != null) {
      json["dashStyle"] = dashStyle;
    }
    if (events != null) {
      json["events"] = events!.toJson();
    }
    if (id != null) {
      json["id"] = id;
    }
    if (label != null) {
      json["label"] = label!.toJson();
    }
    if (labels != null) {
      json["labels"] = labels!.toJson();
    }
    if (value != null) {
      json["value"] = hcJsonValue(value);
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
