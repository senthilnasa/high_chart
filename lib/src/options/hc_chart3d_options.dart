part of 'hc_options.dart';

/// (Highcharts) Options to render charts in 3 dimensions. This feature requires
class HCChart3dOptions implements HCOption {
  const HCChart3dOptions({
    this.alpha,
    this.axisLabelPosition,
    this.beta,
    this.depth,
    this.enabled,
    this.fitToPlot,
    this.frame,
    this.viewDistance,
  });

  /// (Highcharts) One of the two rotation angles for the chart.
  final num? alpha;

  /// (Highcharts) Set it to `"auto"` to automatically move the labels to the
  final String? axisLabelPosition;

  /// (Highcharts) One of the two rotation angles for the chart.
  final num? beta;

  /// (Highcharts) The total depth of the chart.
  final num? depth;

  /// (Highcharts) Whether to render the chart using the 3D functionality.
  final dynamic enabled;

  /// (Highcharts) Whether the 3d box should automatically adjust to the chart
  final dynamic fitToPlot;

  /// (Highcharts) Provides the option to draw a frame around the charts by
  final HCChart3dFrameOptions? frame;

  /// (Highcharts) Defines the distance the viewer is standing in front of the
  final num? viewDistance;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (alpha != null) {
      json["alpha"] = alpha;
    }
    if (axisLabelPosition != null) {
      json["axisLabelPosition"] = axisLabelPosition;
    }
    if (beta != null) {
      json["beta"] = beta;
    }
    if (depth != null) {
      json["depth"] = depth;
    }
    if (enabled != null) {
      json["enabled"] = hcJsonValue(enabled);
    }
    if (fitToPlot != null) {
      json["fitToPlot"] = hcJsonValue(fitToPlot);
    }
    if (frame != null) {
      json["frame"] = frame!.toJson();
    }
    if (viewDistance != null) {
      json["viewDistance"] = viewDistance;
    }
    return json;
  }
}
