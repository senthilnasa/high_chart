part of 'hc_options.dart';

/// Defines the center position and the radius for a gradient.
class HCRadialGradientColorObject implements HCOption {
  const HCRadialGradientColorObject({
    this.cx,
    this.cy,
    this.r,
  });

  /// Center horizontal position relative to the shape. Float ranges 0-1.
  final num? cx;

  /// Center vertical position relative to the shape. Float ranges 0-1.
  final num? cy;

  /// Radius relative to the shape. Float ranges 0-1.
  final num? r;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (cx != null) {
      json["cx"] = cx;
    }
    if (cy != null) {
      json["cy"] = cy;
    }
    if (r != null) {
      json["r"] = r;
    }
    return json;
  }
}
