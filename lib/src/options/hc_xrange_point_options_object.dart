part of 'hc_options.dart';

/// (Highcharts, Highstock, Gantt) An array of data points for the series. For
class HCXrangePointOptionsObject implements HCOption {
  const HCXrangePointOptionsObject({
    this.accessibility,
    this.className,
    this.color,
    this.colorIndex,
    this.connect,
    this.custom,
    this.dataLabels,
    this.dragDrop,
    this.drilldown,
    this.events,
    this.id,
    this.labelrank,
    this.marker,
    this.name,
    this.partialFill,
    this.selected,
    this.x,
    this.x2,
    this.y,
  });

  /// (Highcharts, Highstock, Gantt) Accessibility options for a data point.
  final HCPointAccessibilityOptionsObject? accessibility;

  /// (Highcharts, Highstock, Gantt) An additional, individual class name for
  final String? className;

  /// (Highcharts, Highstock, Gantt) Individual color for the point. By default
  final dynamic color;

  /// (Highcharts, Gantt) A specific color index to use for the point, so its
  final num? colorIndex;

  /// (Gantt) Connect to a point. This option can be either a string, referring
  final dynamic connect;

  /// (Highcharts, Highstock, Gantt) A reserved subspace to store options and
  final HCDictionary? custom;

  /// (Highcharts, Highstock, Gantt) Individual data label for each point. The
  final dynamic dataLabels;

  /// (Highcharts, Highstock, Gantt) Point specific options for the
  final HCSeriesLineDataDragDropOptions? dragDrop;

  /// (Highcharts) The `id` of a series in the drilldown.series array to use
  final String? drilldown;

  /// (Highcharts, Highstock, Gantt) The individual point events.
  final HCPointEventsOptionsObject? events;

  /// (Highcharts, Highstock, Gantt) An id for the point. This can be used
  final String? id;

  /// (Highcharts, Highstock, Gantt) The rank for all this point's data labels
  final num? labelrank;

  /// (Highcharts, Highstock) Options for the point markers of line-like
  final HCPointMarkerOptionsObject? marker;

  /// (Highcharts, Highstock, Gantt) The name of the point as shown in the
  final String? name;

  /// (Highcharts, Highstock, Gantt) A partial fill for each point, typically
  final HCXrangePointPartialFillOptionsObject? partialFill;

  /// (Highcharts, Highstock, Gantt) Whether the data point is selected
  final dynamic selected;

  /// (Highcharts, Highstock, Gantt) The starting X value of the range point.
  final num? x;

  /// (Highcharts, Highstock, Gantt) The ending X value of the range point.
  final num? x2;

  /// (Highcharts, Highstock, Gantt) The Y value of the range point.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (accessibility != null) {
      json["accessibility"] = accessibility!.toJson();
    }
    if (className != null) {
      json["className"] = className;
    }
    if (color != null) {
      json["color"] = hcJsonValue(color);
    }
    if (colorIndex != null) {
      json["colorIndex"] = colorIndex;
    }
    if (connect != null) {
      json["connect"] = hcJsonValue(connect);
    }
    if (custom != null) {
      json["custom"] = custom!.toJson();
    }
    if (dataLabels != null) {
      json["dataLabels"] = hcJsonValue(dataLabels);
    }
    if (dragDrop != null) {
      json["dragDrop"] = dragDrop!.toJson();
    }
    if (drilldown != null) {
      json["drilldown"] = drilldown;
    }
    if (events != null) {
      json["events"] = events!.toJson();
    }
    if (id != null) {
      json["id"] = id;
    }
    if (labelrank != null) {
      json["labelrank"] = labelrank;
    }
    if (marker != null) {
      json["marker"] = marker!.toJson();
    }
    if (name != null) {
      json["name"] = name;
    }
    if (partialFill != null) {
      json["partialFill"] = partialFill!.toJson();
    }
    if (selected != null) {
      json["selected"] = hcJsonValue(selected);
    }
    if (x != null) {
      json["x"] = x;
    }
    if (x2 != null) {
      json["x2"] = x2;
    }
    if (y != null) {
      json["y"] = y;
    }
    return json;
  }
}
