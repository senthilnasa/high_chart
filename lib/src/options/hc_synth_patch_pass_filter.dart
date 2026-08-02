part of 'hc_options.dart';

/// An EQ filter definition for a low/highpass filter.
class HCSynthPatchPassFilter implements HCOption {
  const HCSynthPatchPassFilter({
    this.frequency,
    this.frequencyPitchTrackingMultiplier,
    this.q,
  });

  /// Filter frequency.
  final num? frequency;

  /// A pitch tracking multiplier similarly to the one for oscillator volume.
  final num? frequencyPitchTrackingMultiplier;

  /// Filter resonance bump/dip in dB. Defaults to 0.
  final num? q;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (frequency != null) {
      json["frequency"] = frequency;
    }
    if (frequencyPitchTrackingMultiplier != null) {
      json["frequencyPitchTrackingMultiplier"] =
          frequencyPitchTrackingMultiplier;
    }
    if (q != null) {
      json["Q"] = q;
    }
    return json;
  }
}
