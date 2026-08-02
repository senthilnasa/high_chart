part of 'hc_options.dart';

/// (Highcharts, Highstock) The opposite state of a hover for series.
class HCSeriesStatesInactiveOptionsObject implements HCOption {
  const HCSeriesStatesInactiveOptionsObject({
    this.animation,
    this.enabled,
    this.linkOpacity,
    this.opacity,
  });

  /// (Highcharts, Highstock) Animation when not hovering over the marker.
  final dynamic animation;

  /// (Highcharts, Highstock) Enable or disable the inactive state for a series
  final dynamic enabled;

  /// (Highcharts) Opacity for the links between nodes in the sankey diagram in
  final num? linkOpacity;

  /// (Highcharts, Highstock) Opacity of series elements (dataLabels, line,
  final num? opacity;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (animation != null) {
      json["animation"] = hcJsonValue(animation);
    }
    if (enabled != null) {
      json["enabled"] = hcJsonValue(enabled);
    }
    if (linkOpacity != null) {
      json["linkOpacity"] = linkOpacity;
    }
    if (opacity != null) {
      json["opacity"] = opacity;
    }
    return json;
  }
}
