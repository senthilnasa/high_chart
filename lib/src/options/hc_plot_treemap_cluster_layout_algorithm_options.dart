part of 'hc_options.dart';

class HCPlotTreemapClusterLayoutAlgorithmOptions implements HCOption {
  const HCPlotTreemapClusterLayoutAlgorithmOptions({
    this.distance,
    this.gridSize,
    this.kmeansThreshold,
  });

  final num? distance;

  final num? gridSize;

  final num? kmeansThreshold;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (distance != null) {
      json["distance"] = distance;
    }
    if (gridSize != null) {
      json["gridSize"] = gridSize;
    }
    if (kmeansThreshold != null) {
      json["kmeansThreshold"] = kmeansThreshold;
    }
    return json;
  }
}
