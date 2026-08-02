part of 'hc_options.dart';

/// (Highcharts, Highmaps) Options for the _Series on point_ feature. Only `pie`
class HCPlotHeatmapOnPointOptions implements HCOption {
  const HCPlotHeatmapOnPointOptions({
    this.connectorOptions,
    this.id,
    this.position,
  });

  /// (Highcharts, Highmaps) Options for the connector in the _Series on point_
  final dynamic connectorOptions;

  /// (Highcharts, Highmaps) The `id` of the point that we connect the series
  final String? id;

  /// (Highcharts, Highmaps) Options allowing to set a position and an offset
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
