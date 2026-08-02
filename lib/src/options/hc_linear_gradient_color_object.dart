part of 'hc_options.dart';

/// Defines the start position and the end position for a gradient relative to
class HCLinearGradientColorObject implements HCOption {
  const HCLinearGradientColorObject({
    this.x1,
    this.x2,
    this.y1,
    this.y2,
  });

  /// Start horizontal position of the gradient. Float ranges 0-1.
  final num? x1;

  /// End horizontal position of the gradient. Float ranges 0-1.
  final num? x2;

  /// Start vertical position of the gradient. Float ranges 0-1.
  final num? y1;

  /// End vertical position of the gradient. Float ranges 0-1.
  final num? y2;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (x1 != null) {
      json["x1"] = x1;
    }
    if (x2 != null) {
      json["x2"] = x2;
    }
    if (y1 != null) {
      json["y1"] = y1;
    }
    if (y2 != null) {
      json["y2"] = y2;
    }
    return json;
  }
}
