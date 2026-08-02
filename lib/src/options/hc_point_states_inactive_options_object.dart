part of 'hc_options.dart';

/// (Highcharts) The opposite state of a hover for a single point node. Applied
class HCPointStatesInactiveOptionsObject implements HCOption {
  const HCPointStatesInactiveOptionsObject({
    this.animation,
    this.opacity,
  });

  /// (Highcharts) Animation when not hovering over the node.
  final dynamic animation;

  /// (Highcharts) Opacity of inactive markers.
  final num? opacity;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (animation != null) {
      json["animation"] = hcJsonValue(animation);
    }
    if (opacity != null) {
      json["opacity"] = opacity;
    }
    return json;
  }
}
