part of 'hc_options.dart';

/// (Highmaps) Options for the _Series on point_ feature. Only `pie` and
class HCPlotMaplineOnPointOptions implements HCOption {
  const HCPlotMaplineOnPointOptions({
    this.connectorOptions,
    this.id,
    this.position,
  });

  /// (Highmaps) Options for the connector in the _Series on point_ feature.
  final dynamic connectorOptions;

  /// (Highmaps) The `id` of the point that we connect the series to. Only
  final String? id;

  /// (Highmaps) Options allowing to set a position and an offset of the series
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
