part of 'hc_options.dart';

/// An animation configuration. Animation configurations can also be defined as
class HCAnimationOptionsObject implements HCOption {
  const HCAnimationOptionsObject({
    this.complete,
    this.defer,
    this.duration,
    this.easing,
    this.step,
  });

  /// A callback function to execute when the animation finishes.
  final dynamic complete;

  /// The animation defer in milliseconds.
  final num? defer;

  /// The animation duration in milliseconds.
  final num? duration;

  /// The name of an easing function as defined on the `Math` object.
  final dynamic easing;

  /// A callback function to execute on each step of each attribute or CSS
  final dynamic step;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (complete != null) {
      json["complete"] = hcJsonValue(complete);
    }
    if (defer != null) {
      json["defer"] = defer;
    }
    if (duration != null) {
      json["duration"] = duration;
    }
    if (easing != null) {
      json["easing"] = hcJsonValue(easing);
    }
    if (step != null) {
      json["step"] = hcJsonValue(step);
    }
    return json;
  }
}
