part of 'hc_options.dart';

/// Gradient options instead of a solid color.
class HCGradientColorObject implements HCOption {
  const HCGradientColorObject({
    this.linearGradient,
    this.radialGradient,
    this.stops,
  });

  /// Holds an object that defines the start position and the end position
  final HCLinearGradientColorObject? linearGradient;

  /// Holds an object that defines the center position and the radius.
  final HCRadialGradientColorObject? radialGradient;

  /// The first item in each tuple is the position in the gradient, where 0 is
  final List<HCGradientColorStopObject>? stops;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (linearGradient != null) {
      json["linearGradient"] = linearGradient!.toJson();
    }
    if (radialGradient != null) {
      json["radialGradient"] = radialGradient!.toJson();
    }
    if (stops != null) {
      json["stops"] = stops!.map((e) => e.toJson()).toList();
    }
    return json;
  }
}
