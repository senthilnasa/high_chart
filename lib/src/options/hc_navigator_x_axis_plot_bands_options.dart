part of 'hc_options.dart';

/// (Highcharts, Highstock, Gantt) An array of colored bands stretching across
class HCNavigatorXAxisPlotBandsOptions implements HCOption {
  const HCNavigatorXAxisPlotBandsOptions({
    this.acrossPanes,
    this.borderColor,
    this.borderRadius,
    this.borderWidth,
    this.className,
    this.color,
    this.events,
    this.from,
    this.id,
    this.label,
    this.to,
    this.zIndex,
  });

  /// (Highstock) Flag to decide if plotBand should be rendered across all
  final dynamic acrossPanes;

  /// (Highcharts, Highstock, Gantt) Border color for the plot band. Also
  final String? borderColor;

  /// (Highcharts, Highstock, Gantt) Border radius for the plot band. Applies
  final dynamic borderRadius;

  /// (Highcharts, Highstock, Gantt) Border width for the plot band. Also
  final num? borderWidth;

  /// (Highcharts, Highstock, Gantt) A custom class name, in addition to the
  final String? className;

  /// (Highcharts, Highstock, Gantt) The color of the plot band.
  final dynamic color;

  /// (Highcharts, Highstock, Gantt) An object defining mouse events for the
  final HCNavigatorXAxisPlotBandsEventsOptions? events;

  /// (Highcharts, Highstock, Gantt) The start position of the plot band in
  final dynamic from;

  /// (Highcharts, Highstock, Gantt) An id used for identifying the plot band
  final String? id;

  /// (Highcharts, Highstock, Gantt) Text labels for the plot bands
  final HCNavigatorXAxisPlotBandsLabelOptions? label;

  /// (Highcharts, Highstock, Gantt) The end position of the plot band in axis
  final dynamic to;

  /// (Highcharts, Highstock, Gantt) The z index of the plot band within the
  final num? zIndex;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (acrossPanes != null) {
      json["acrossPanes"] = hcJsonValue(acrossPanes);
    }
    if (borderColor != null) {
      json["borderColor"] = borderColor;
    }
    if (borderRadius != null) {
      json["borderRadius"] = hcJsonValue(borderRadius);
    }
    if (borderWidth != null) {
      json["borderWidth"] = borderWidth;
    }
    if (className != null) {
      json["className"] = className;
    }
    if (color != null) {
      json["color"] = hcJsonValue(color);
    }
    if (events != null) {
      json["events"] = events!.toJson();
    }
    if (from != null) {
      json["from"] = hcJsonValue(from);
    }
    if (id != null) {
      json["id"] = id;
    }
    if (label != null) {
      json["label"] = label!.toJson();
    }
    if (to != null) {
      json["to"] = hcJsonValue(to);
    }
    if (zIndex != null) {
      json["zIndex"] = zIndex;
    }
    return json;
  }
}
