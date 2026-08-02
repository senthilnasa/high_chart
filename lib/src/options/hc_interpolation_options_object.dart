part of 'hc_options.dart';

/// Detailed options for interpolation object.
class HCInterpolationOptionsObject implements HCOption {
  const HCInterpolationOptionsObject({
    this.blur,
    this.enabled,
  });

  /// Represents how much blur should be added to the interpolated image. Works
  final num? blur;

  /// Enable or disable the interpolation.
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
