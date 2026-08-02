part of 'hc_options.dart';

/// (Gantt) Options for the _Series on point_ feature. Only `pie` and `sunburst`
class HCPlotGanttOnPointOptions implements HCOption {
  const HCPlotGanttOnPointOptions({
    this.connectorOptions,
    this.id,
    this.position,
  });

  /// (Gantt) Options for the connector in the _Series on point_ feature.
  final dynamic connectorOptions;

  /// (Gantt) The `id` of the point that we connect the series to. Only points
  final String? id;

  /// (Gantt) Options allowing to set a position and an offset of the series in
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
