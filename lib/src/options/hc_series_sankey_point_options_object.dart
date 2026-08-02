part of 'hc_options.dart';

/// (Highcharts) An array of data points for the series. For the `sankey` series
class HCSeriesSankeyPointOptionsObject implements HCOption {
  const HCSeriesSankeyPointOptionsObject({
    this.accessibility,
    this.className,
    this.color,
    this.colorIndex,
    this.custom,
    this.dataLabels,
    this.events,
    this.from,
    this.id,
    this.labelrank,
    this.linkWeight,
    this.name,
    this.outgoing,
    this.selected,
    this.to,
    this.weight,
    this.weightTo,
  });

  /// (Highcharts) Accessibility options for a data point.
  final HCPointAccessibilityOptionsObject? accessibility;

  /// (Highcharts, Highstock, Gantt) An additional, individual class name for
  final String? className;

  /// (Highcharts) The color for the individual _link_. By default, the link
  final dynamic color;

  /// (Highcharts, Gantt) A specific color index to use for the point, so its
  final num? colorIndex;

  /// (Highcharts) A reserved subspace to store options and values for
  final HCDictionary? custom;

  /// (Highcharts) Individual data label for each point. The options are the
  final dynamic dataLabels;

  /// (Highcharts, Highstock, Gantt) The individual point events.
  final HCPointEventsOptionsObject? events;

  /// (Highcharts) The node that the link runs from.
  final String? from;

  /// (Highcharts, Highstock, Gantt) An id for the point. This can be used
  final String? id;

  /// (Highcharts) The rank for all this point's data labels in case of
  final num? labelrank;

  /// (Highcharts) The link weight, in pixels. If not set, width is calculated
  final num? linkWeight;

  /// (Highcharts) The name of the point as shown in the legend, tooltip,
  final String? name;

  /// (Highcharts) Whether the link goes out of the system.
  final dynamic outgoing;

  /// (Highcharts, Highstock, Gantt) Whether the data point is selected
  final dynamic selected;

  /// (Highcharts) The node that the link runs to.
  final String? to;

  /// (Highcharts) The weight of the link.
  final num? weight;

  /// (Highcharts) The weight of the link to the node. When not specified, the
  final num? weightTo;

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
    if (custom != null) {
      json["custom"] = custom!.toJson();
    }
    if (dataLabels != null) {
      json["dataLabels"] = hcJsonValue(dataLabels);
    }
    if (events != null) {
      json["events"] = events!.toJson();
    }
    if (from != null) {
      json["from"] = from;
    }
    if (id != null) {
      json["id"] = id;
    }
    if (labelrank != null) {
      json["labelrank"] = labelrank;
    }
    if (linkWeight != null) {
      json["linkWeight"] = linkWeight;
    }
    if (name != null) {
      json["name"] = name;
    }
    if (outgoing != null) {
      json["outgoing"] = hcJsonValue(outgoing);
    }
    if (selected != null) {
      json["selected"] = hcJsonValue(selected);
    }
    if (to != null) {
      json["to"] = to;
    }
    if (weight != null) {
      json["weight"] = weight;
    }
    if (weightTo != null) {
      json["weightTo"] = weightTo;
    }
    return json;
  }
}
