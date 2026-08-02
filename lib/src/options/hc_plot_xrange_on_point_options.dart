part of 'hc_options.dart';

/// (Highcharts, Highstock, Gantt) Options for the _Series on point_ feature.
class HCPlotXrangeOnPointOptions implements HCOption {
  const HCPlotXrangeOnPointOptions({
    this.connectorOptions,
    this.id,
    this.position,
  });

  /// (Highcharts, Highstock, Gantt) Options for the connector in the
  final dynamic connectorOptions;

  /// (Highcharts, Highstock, Gantt) The `id` of the point that we connect
  final String? id;

  /// (Highcharts, Highstock, Gantt) Options allowing to set a position and
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
