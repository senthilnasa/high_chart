part of 'hc_options.dart';

/// (Highcharts, Highmaps) An array defining zones within marker clusters.
class HCPlotMappointClusterZonesOptions implements HCOption {
  const HCPlotMappointClusterZonesOptions({
    this.className,
    this.from,
    this.marker,
    this.to,
  });

  /// (Highcharts, Highmaps) Styled mode only. A custom class name for the
  final String? className;

  /// (Highcharts, Highmaps) The value where the zone starts.
  final num? from;

  /// (Highcharts, Highmaps) Settings for the cluster marker belonging to the
  final HCPointMarkerOptionsObject? marker;

  /// (Highcharts, Highmaps) The value where the zone ends.
  final num? to;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (className != null) {
      json["className"] = className;
    }
    if (from != null) {
      json["from"] = from;
    }
    if (marker != null) {
      json["marker"] = marker!.toJson();
    }
    if (to != null) {
      json["to"] = to;
    }
    return json;
  }
}
