part of 'hc_options.dart';

/// (Highcharts, Highstock) Options for the halo appearing around the hovered
class HCSeriesStatesHoverHaloOptionsObject implements HCOption {
  const HCSeriesStatesHoverHaloOptionsObject({
    this.attributes,
    this.enabled,
    this.opacity,
    this.size,
  });

  /// (Highcharts, Highstock) A collection of SVG attributes to override the
  final dynamic attributes;

  final dynamic enabled;

  /// (Highcharts, Highstock) Opacity for the halo unless a specific fill is
  final num? opacity;

  /// (Highcharts, Highstock) The pixel size of the halo. For point markers
  final num? size;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (attributes != null) {
      json["attributes"] = hcJsonValue(attributes);
    }
    if (enabled != null) {
      json["enabled"] = hcJsonValue(enabled);
    }
    if (opacity != null) {
      json["opacity"] = opacity;
    }
    if (size != null) {
      json["size"] = size;
    }
    return json;
  }
}
