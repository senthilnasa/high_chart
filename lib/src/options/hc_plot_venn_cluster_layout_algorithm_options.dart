part of 'hc_options.dart';

/// (Highcharts, Highmaps) Options for layout algorithm. Inside there are
class HCPlotVennClusterLayoutAlgorithmOptions implements HCOption {
  const HCPlotVennClusterLayoutAlgorithmOptions({
    this.distance,
    this.gridSize,
    this.iterations,
    this.kmeansThreshold,
    this.type,
  });

  /// (Highcharts, Highmaps) When `type` is set to `kmeans`, `distance` is
  final dynamic distance;

  /// (Highcharts, Highmaps) When `type` is set to the `grid`, `gridSize`
  final dynamic gridSize;

  /// (Highcharts, Highmaps) When `type` is set to `kmeans`, `iterations`
  final num? iterations;

  /// (Highcharts, Highmaps) When `type` is set to `undefined` and there
  final num? kmeansThreshold;

  /// (Highcharts, Highmaps) Type of the algorithm used to combine points
  final dynamic type;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (distance != null) {
      json["distance"] = hcJsonValue(distance);
    }
    if (gridSize != null) {
      json["gridSize"] = hcJsonValue(gridSize);
    }
    if (iterations != null) {
      json["iterations"] = iterations;
    }
    if (kmeansThreshold != null) {
      json["kmeansThreshold"] = kmeansThreshold;
    }
    if (type != null) {
      json["type"] = hcJsonValue(type);
    }
    return json;
  }
}
