part of 'hc_options.dart';

/// (Highcharts, Highstock) Options for the _Series on point_ feature. Only `pie`
class HCPlotColumnrangeOnPointOptions implements HCOption {
  const HCPlotColumnrangeOnPointOptions({
    this.connectorOptions,
    this.id,
    this.position,
  });

  /// (Highcharts, Highstock) Options for the connector in the _Series on
  final dynamic connectorOptions;

  /// (Highcharts, Highstock) The `id` of the point that we connect the series
  final String? id;

  /// (Highcharts, Highstock) Options allowing to set a position and an offset
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
