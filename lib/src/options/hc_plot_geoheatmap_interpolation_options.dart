part of 'hc_options.dart';

/// (Highmaps) Make the geoheatmap render its data points as an interpolated
class HCPlotGeoheatmapInterpolationOptions implements HCOption {
  const HCPlotGeoheatmapInterpolationOptions({
    this.blur,
    this.enabled,
  });

  /// (Highmaps) Represents how much blur should be added to the
  final num? blur;

  /// (Highmaps) Enable or disable the interpolation of the geoheatmap
  final dynamic enabled;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (blur != null) {
      json["blur"] = blur;
    }
    if (enabled != null) {
      json["enabled"] = hcJsonValue(enabled);
    }
    return json;
  }
}
