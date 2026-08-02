part of 'hc_options.dart';

/// (Highcharts) Options for layout algorithm when simulation is enabled.
class HCPlotPackedbubbleLayoutAlgorithmOptions implements HCOption {
  const HCPlotPackedbubbleLayoutAlgorithmOptions({
    this.bubblePadding,
    this.dragBetweenSeries,
    this.enableSimulation,
    this.friction,
    this.gravitationalConstant,
    this.initialPositionRadius,
    this.initialPositions,
    this.integration,
    this.linkLength,
    this.maxIterations,
    this.maxSpeed,
    this.parentNodeLimit,
    this.parentNodeOptions,
    this.seriesInteraction,
    this.splitSeries,
    this.type,
  });

  /// (Highcharts) The distance between two bubbles, when the algorithm
  final num? bubblePadding;

  /// (Highcharts) In case of split series, this option allows user to drag
  final dynamic dragBetweenSeries;

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

  /// (Highcharts) Max speed that node can get in one iteration. In terms
  final num? maxSpeed;

  /// (Highcharts) Whether bubbles should interact with their parentNode to
  final dynamic parentNodeLimit;

  /// (Highcharts) Layout algorithm options for parent nodes.
  final HCPlotPackedbubbleLayoutAlgorithmParentNodeOptions? parentNodeOptions;

  /// (Highcharts) Whether series should interact with each other or not.
  final dynamic seriesInteraction;

  /// (Highcharts) Whether to split series into individual groups or to mix
  final dynamic splitSeries;

  /// (Highcharts) Type of the algorithm used when positioning nodes.
  final String? type;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (bubblePadding != null) {
      json["bubblePadding"] = bubblePadding;
    }
    if (dragBetweenSeries != null) {
      json["dragBetweenSeries"] = hcJsonValue(dragBetweenSeries);
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
    if (parentNodeLimit != null) {
      json["parentNodeLimit"] = hcJsonValue(parentNodeLimit);
    }
    if (parentNodeOptions != null) {
      json["parentNodeOptions"] = parentNodeOptions!.toJson();
    }
    if (seriesInteraction != null) {
      json["seriesInteraction"] = hcJsonValue(seriesInteraction);
    }
    if (splitSeries != null) {
      json["splitSeries"] = hcJsonValue(splitSeries);
    }
    if (type != null) {
      json["type"] = type;
    }
    return json;
  }
}
