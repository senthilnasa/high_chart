part of 'hc_options.dart';

/// (Highstock, Gantt) Options for the navigator series. Available options are
class HCNavigatorSeriesOptions implements HCOption {
  const HCNavigatorSeriesOptions({
    this.className,
    this.color,
    this.data,
    this.dataGrouping,
    this.dataLabels,
    this.fillOpacity,
    this.id,
    this.lineColor,
    this.lineWidth,
    this.marker,
    this.pointRange,
    this.threshold,
    this.type,
  });

  final String? className;

  /// (Highstock, Gantt) Sets the fill color of the navigator series.
  final dynamic color;

  /// (Highstock) Unless data is explicitly defined, the data is borrowed from
  final List<dynamic>? data;

  /// (Highstock) Data grouping options for the navigator series.
  final HCDataGroupingOptionsObject? dataGrouping;

  /// (Highcharts, Highstock, Highmaps, Gantt) Data label options for the
  final dynamic dataLabels;

  /// (Highstock, Gantt) The fill opacity of the navigator series.
  final num? fillOpacity;

  final String? id;

  /// (Highstock, Gantt) Line color for the navigator series. Allows setting
  final String? lineColor;

  /// (Highstock, Gantt) The pixel line width of the navigator series.
  final num? lineWidth;

  final HCNavigatorSeriesMarkerOptions? marker;

  /// (Highstock, Gantt) Since Highcharts Stock v8, default value is the same
  final num? pointRange;

  /// (Highstock, Gantt) The threshold option. Setting it to 0 will make the
  final num? threshold;

  /// (Highstock, Gantt) The type of the navigator series.
  final String? type;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (className != null) {
      json["className"] = className;
    }
    if (color != null) {
      json["color"] = hcJsonValue(color);
    }
    if (data != null) {
      json["data"] = data!.map((e) => hcJsonValue(e)).toList();
    }
    if (dataGrouping != null) {
      json["dataGrouping"] = dataGrouping!.toJson();
    }
    if (dataLabels != null) {
      json["dataLabels"] = hcJsonValue(dataLabels);
    }
    if (fillOpacity != null) {
      json["fillOpacity"] = fillOpacity;
    }
    if (id != null) {
      json["id"] = id;
    }
    if (lineColor != null) {
      json["lineColor"] = lineColor;
    }
    if (lineWidth != null) {
      json["lineWidth"] = lineWidth;
    }
    if (marker != null) {
      json["marker"] = marker!.toJson();
    }
    if (pointRange != null) {
      json["pointRange"] = pointRange;
    }
    if (threshold != null) {
      json["threshold"] = threshold;
    }
    if (type != null) {
      json["type"] = type;
    }
    return json;
  }
}
