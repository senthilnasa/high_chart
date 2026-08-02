part of 'hc_options.dart';

/// An EQ filter definition for a bell filter.
class HCSynthPatchEQFilter implements HCOption {
  const HCSynthPatchEQFilter({
    this.frequency,
    this.gain,
    this.q,
  });

  /// Filter frequency.
  final num? frequency;

  /// Filter gain. Defaults to 0.
  final num? gain;

  /// Filter Q. Defaults to 1. Lower numbers mean a wider bell.
  final num? q;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (frequency != null) {
      json["frequency"] = frequency;
    }
    if (gain != null) {
      json["gain"] = gain;
    }
    if (q != null) {
      json["Q"] = q;
    }
    return json;
  }
}
