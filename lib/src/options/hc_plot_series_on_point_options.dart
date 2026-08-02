part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Options for the _Series on point_
class HCPlotSeriesOnPointOptions implements HCOption {
  const HCPlotSeriesOnPointOptions({
    this.connectorOptions,
    this.id,
    this.position,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for the connector in the
  final dynamic connectorOptions;

  /// (Highcharts, Highstock, Highmaps, Gantt) The `id` of the point that we
  final String? id;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options allowing to set a
  final dynamic position;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (connectorOptions != null) {
      json["connectorOptions"] = hcJsonValue(connectorOptions);
    }
    if (id != null) {
      json["id"] = id;
    }
    if (position != null) {
      json["position"] = hcJsonValue(position);
    }
    return json;
  }
}
