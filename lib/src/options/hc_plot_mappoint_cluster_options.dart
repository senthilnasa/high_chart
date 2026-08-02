part of 'hc_options.dart';

/// (Highcharts, Highmaps) Options for marker clusters, the concept of
class HCPlotMappointClusterOptions implements HCOption {
  const HCPlotMappointClusterOptions({
    this.allowOverlap,
    this.animation,
    this.dataLabels,
    this.drillToCluster,
    this.enabled,
    this.events,
    this.layoutAlgorithm,
    this.marker,
    this.minimumClusterSize,
    this.states,
    this.zones,
  });

  /// (Highcharts, Highmaps) When set to `false` prevent cluster
  final dynamic allowOverlap;

  /// (Highcharts, Highmaps) Options for the cluster marker animation.
  final dynamic animation;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for the cluster data
  final dynamic dataLabels;

  /// (Highcharts, Highmaps) Zoom the plot area to the cluster points range
  final dynamic drillToCluster;

  /// (Highcharts, Highmaps) Whether to enable the marker-clusters module.
  final dynamic enabled;

  final HCPlotMappointClusterEventsOptions? events;

  /// (Highcharts, Highmaps) Options for layout algorithm. Inside there are
  final HCPlotMappointClusterLayoutAlgorithmOptions? layoutAlgorithm;

  /// (Highcharts, Highmaps) Options for the cluster marker.
  final HCPointMarkerOptionsObject? marker;

  /// (Highcharts, Highmaps) The minimum amount of points to be combined
  final num? minimumClusterSize;

  final HCPlotMappointClusterStatesOptions? states;

  /// (Highcharts, Highmaps) An array defining zones within marker
  final List<HCPlotMappointClusterZonesOptions>? zones;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (allowOverlap != null) {
      json["allowOverlap"] = hcJsonValue(allowOverlap);
    }
    if (animation != null) {
      json["animation"] = hcJsonValue(animation);
    }
    if (dataLabels != null) {
      json["dataLabels"] = hcJsonValue(dataLabels);
    }
    if (drillToCluster != null) {
      json["drillToCluster"] = hcJsonValue(drillToCluster);
    }
    if (enabled != null) {
      json["enabled"] = hcJsonValue(enabled);
    }
    if (events != null) {
      json["events"] = events!.toJson();
    }
    if (layoutAlgorithm != null) {
      json["layoutAlgorithm"] = layoutAlgorithm!.toJson();
    }
    if (marker != null) {
      json["marker"] = marker!.toJson();
    }
    if (minimumClusterSize != null) {
      json["minimumClusterSize"] = minimumClusterSize;
    }
    if (states != null) {
      json["states"] = states!.toJson();
    }
    if (zones != null) {
      json["zones"] = zones!.map((e) => e.toJson()).toList();
    }
    return json;
  }
}
