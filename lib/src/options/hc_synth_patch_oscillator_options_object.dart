part of 'hc_options.dart';

/// Configuration for an oscillator for the synth.
class HCSynthPatchOscillatorOptionsObject implements HCOption {
  const HCSynthPatchOscillatorOptionsObject({
    this.attackEnvelope,
    this.detune,
    this.fixedFrequency,
    this.fmOscillator,
    this.freqMultiplier,
    this.highpass,
    this.lowpass,
    this.pulseWidth,
    this.releaseEnvelope,
    this.type,
    this.vmOscillator,
    this.volume,
    this.volumePitchTrackingMultiplier,
  });

  /// Volume envelope for note attack, specific to this oscillator.
  final List<dynamic>? attackEnvelope;

  /// Applies a detuning of all frequencies. Set in cents. Defaults to 0.
  final num? detune;

  /// Play a fixed frequency for the oscillator - ignoring input frequency. The
  final num? fixedFrequency;

  /// Index of another oscillator to use as carrier, with this oscillator being
  final num? fmOscillator;

  /// A multiplier for the input frequency of the oscillator. Defaults to 1. If
  final num? freqMultiplier;

  /// Highpass filter options for the oscillator.
  final HCSynthPatchPassFilter? highpass;

  /// Lowpass filter options for the oscillator.
  final HCSynthPatchPassFilter? lowpass;

  /// Width of the pulse waveform. Only applies to "pulse" type oscillators. A
  final num? pulseWidth;

  /// Volume envelope for note release, specific to this oscillator.
  final List<dynamic>? releaseEnvelope;

  /// The type of oscillator. This describes the waveform of the oscillator.
  final String? type;

  /// Index of another oscillator to use as carrier, with this oscillator being
  final num? vmOscillator;

  /// A volume modifier for the oscillator. Defaults to 1.
  final num? volume;

  /// A tracking multiplier used for frequency dependent behavior. For example,
  final num? volumePitchTrackingMultiplier;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (attackEnvelope != null) {
      json["attackEnvelope"] =
          attackEnvelope!.map((e) => hcJsonValue(e)).toList();
    }
    if (detune != null) {
      json["detune"] = detune;
    }
    if (fixedFrequency != null) {
      json["fixedFrequency"] = fixedFrequency;
    }
    if (fmOscillator != null) {
      json["fmOscillator"] = fmOscillator;
    }
    if (freqMultiplier != null) {
      json["freqMultiplier"] = freqMultiplier;
    }
    if (highpass != null) {
      json["highpass"] = highpass!.toJson();
    }
    if (lowpass != null) {
      json["lowpass"] = lowpass!.toJson();
    }
    if (pulseWidth != null) {
      json["pulseWidth"] = pulseWidth;
    }
    if (releaseEnvelope != null) {
      json["releaseEnvelope"] =
          releaseEnvelope!.map((e) => hcJsonValue(e)).toList();
    }
    if (type != null) {
      json["type"] = type;
    }
    if (vmOscillator != null) {
      json["vmOscillator"] = vmOscillator;
    }
    if (volume != null) {
      json["volume"] = volume;
    }
    if (volumePitchTrackingMultiplier != null) {
      json["volumePitchTrackingMultiplier"] = volumePitchTrackingMultiplier;
    }
    return json;
  }
}
