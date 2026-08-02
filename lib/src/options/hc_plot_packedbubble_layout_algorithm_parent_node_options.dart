part of 'hc_options.dart';

/// (Highcharts) Layout algorithm options for parent nodes.
class HCPlotPackedbubbleLayoutAlgorithmParentNodeOptions implements HCOption {
  const HCPlotPackedbubbleLayoutAlgorithmParentNodeOptions({
    this.friction,
    this.gravitationalConstant,
    this.initialPositionRadius,
    this.initialPositions,
    this.integration,
    this.linkLength,
    this.marker,
    this.maxIterations,
    this.maxSpeed,
    this.seriesInteraction,
    this.type,
  });

  /// (Highcharts) Friction applied on forces to prevent nodes rushing to fast
  final num? friction;

  /// (Highcharts) Gravitational const used in the barycenter force of the
  final num? gravitationalConstant;

  /// (Highcharts) When `initialPositions` are set to 'circle',
  final num? initialPositionRadius;

  /// (Highcharts) Initial layout algorithm for positioning nodes. Can be one
  final dynamic initialPositions;

  /// (Highcharts) Integration type. Available options are `'euler'` and
  final String? integration;

  /// (Highcharts) Ideal length (px) of the link between two nodes. When not
  final num? linkLength;

  /// (Highcharts) Styling options for parentNodes markers. Similar to
  final HCPointMarkerOptionsObject? marker;

  /// (Highcharts) Max number of iterations before algorithm will stop. In
  final num? maxIterations;

  /// (Highcharts) Verlet integration only. Max speed that node can get in one
  final num? maxSpeed;

  final dynamic seriesInteraction;

  /// (Highcharts) Type of the algorithm used when positioning nodes.
  final String? type;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (friction != null) {
      json["friction"] = friction;
    }
    if (gravitationalConstant != null) {
      json["gravitationalConstant"] = gravitationalConstant;
    }
    if (initialPositionRadius != null) {
      json["initialPositionRadius"] = initialPositionRadius;
    }
    if (initialPositions != null) {
      json["initialPositions"] = hcJsonValue(initialPositions);
    }
    if (integration != null) {
      json["integration"] = integration;
    }
    if (linkLength != null) {
      json["linkLength"] = linkLength;
    }
    if (marker != null) {
      json["marker"] = marker!.toJson();
    }
    if (maxIterations != null) {
      json["maxIterations"] = maxIterations;
    }
    if (maxSpeed != null) {
      json["maxSpeed"] = maxSpeed;
    }
    if (seriesInteraction != null) {
      json["seriesInteraction"] = hcJsonValue(seriesInteraction);
    }
    if (type != null) {
      json["type"] = type;
    }
    return json;
  }
}
