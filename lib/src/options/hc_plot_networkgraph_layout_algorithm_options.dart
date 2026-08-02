part of 'hc_options.dart';

class HCPlotNetworkgraphLayoutAlgorithmOptions implements HCOption {
  const HCPlotNetworkgraphLayoutAlgorithmOptions({
    this.approximation,
    this.attractiveForce,
    this.enableSimulation,
    this.friction,
    this.gravitationalConstant,
    this.initialPositionRadius,
    this.initialPositions,
    this.integration,
    this.linkLength,
    this.maxIterations,
    this.maxSpeed,
    this.repulsiveForce,
    this.theta,
    this.type,
  });

  /// (Highcharts) Approximation used to calculate repulsive forces
  final String? approximation;

  /// (Highcharts) Attraction force applied on a node which is connected to
  final dynamic attractiveForce;

  /// (Highcharts) Experimental. Enables live simulation of the algorithm
  final dynamic enableSimulation;

  /// (Highcharts) Friction applied on forces to prevent nodes rushing to
  final num? friction;

  /// (Highcharts) Gravitational const used in the barycenter force of the
  final num? gravitationalConstant;

  /// (Highcharts) When `initialPositions` are set to 'circle',
  final num? initialPositionRadius;

  /// (Highcharts) Initial layout algorithm for positioning nodes. Can be
  final dynamic initialPositions;

  /// (Highcharts) Integration type. Available options are `'euler'` and
  final String? integration;

  /// (Highcharts) Ideal length (px) of the link between two nodes. When
  final num? linkLength;

  /// (Highcharts) Max number of iterations before algorithm will stop. In
  final num? maxIterations;

  /// (Highcharts) Verlet integration only. Max speed that node can get in
  final num? maxSpeed;

  /// (Highcharts) Repulsive force applied on a node. Passed are two
  final dynamic repulsiveForce;

  /// (Highcharts) Barnes-Hut approximation only. Determines when distance
  final num? theta;

  /// (Highcharts) Type of the algorithm used when positioning nodes.
  final String? type;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (approximation != null) {
      json["approximation"] = approximation;
    }
    if (attractiveForce != null) {
      json["attractiveForce"] = hcJsonValue(attractiveForce);
    }
    if (enableSimulation != null) {
      json["enableSimulation"] = hcJsonValue(enableSimulation);
    }
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
    if (maxIterations != null) {
      json["maxIterations"] = maxIterations;
    }
    if (maxSpeed != null) {
      json["maxSpeed"] = maxSpeed;
    }
    if (repulsiveForce != null) {
      json["repulsiveForce"] = hcJsonValue(repulsiveForce);
    }
    if (theta != null) {
      json["theta"] = theta;
    }
    if (type != null) {
      json["type"] = type;
    }
    return json;
  }
}
