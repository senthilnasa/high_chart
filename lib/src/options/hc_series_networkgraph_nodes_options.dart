part of 'hc_options.dart';

/// (Highcharts) A collection of options for the individual nodes. The nodes in a
class HCSeriesNetworkgraphNodesOptions implements HCOption {
  const HCSeriesNetworkgraphNodesOptions({
    this.color,
    this.colorIndex,
    this.dataLabels,
    this.id,
    this.marker,
    this.mass,
    this.name,
  });

  /// (Highcharts) The color of the auto generated node.
  final String? color;

  /// (Highcharts) The color index of the auto generated node, especially for
  final num? colorIndex;

  /// (Highcharts) Individual data label for each node. The options are the
  final dynamic dataLabels;

  /// (Highcharts) The id of the auto-generated node, referring to the `from`
  final String? id;

  /// (Highcharts) Options for the node markers.
  final HCPointMarkerOptionsObject? marker;

  /// (Highcharts) Mass of the node. By default, each node has mass equal to
  final num? mass;

  /// (Highcharts) The name to display for the node in data labels and
  final String? name;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (color != null) {
      json["color"] = color;
    }
    if (colorIndex != null) {
      json["colorIndex"] = colorIndex;
    }
    if (dataLabels != null) {
      json["dataLabels"] = hcJsonValue(dataLabels);
    }
    if (id != null) {
      json["id"] = id;
    }
    if (marker != null) {
      json["marker"] = marker!.toJson();
    }
    if (mass != null) {
      json["mass"] = mass;
    }
    if (name != null) {
      json["name"] = name;
    }
    return json;
  }
}
