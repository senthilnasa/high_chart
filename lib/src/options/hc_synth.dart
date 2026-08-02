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
      json['frequency'] = frequency;
    }
    if (gain != null) {
      json['gain'] = gain;
    }
    if (q != null) {
      json['Q'] = q;
    }
    return json;
  }
}

/// A set of options for the SynthPatch class.
class HCSynthPatchOptionsObject implements HCOption {
  const HCSynthPatchOptionsObject({
    this.eq,
    this.masterAttackEnvelope,
    this.masterReleaseEnvelope,
    this.masterVolume,
    this.midiInstrument,
    this.noteGlideDuration,
    this.oscillators,
  });

  /// Master EQ filters for the synth, affecting the overall sound.
  final List<HCSynthPatchEQFilter>? eq;

  /// Volume envelope for the overall attack of a note - what happens to the volume when a note first plays. If the volume goes to 0 in the attack envelope, the synth will not be able to play the note continuously/ sustained, and the notes will be staccato.
  final List<dynamic>? masterAttackEnvelope;

  /// Volume envelope for the overall release of a note - what happens to the volume when a note stops playing. If the release envelope starts at a higher volume than the attack envelope ends, the volume will first rise to that volume before falling when releasing a note. If the note is released while the
  final List<dynamic>? masterReleaseEnvelope;

  /// Global volume modifier for the synth. Defaults to 1. Note that if the total volume of all oscillators is too high, the browser's audio engine can distort.
  final num? masterVolume;

  /// MIDI instrument ID for the synth. Used with MIDI export of Timelines to have tracks open with a similar instrument loaded when imported into other applications. Defaults to 1, "Acoustic Grand Piano".
  final num? midiInstrument;

  /// Time in milliseconds to glide between notes. Causes a glissando effect.
  final num? noteGlideDuration;

  /// Array of oscillators to add to the synth.
  final List<HCSynthPatchOscillatorOptionsObject>? oscillators;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (eq != null) {
      json['eq'] = eq!.map((e) => e.toJson()).toList();
    }
    if (masterAttackEnvelope != null) {
      json['masterAttackEnvelope'] =
          masterAttackEnvelope!.map((e) => hcJsonValue(e)).toList();
    }
    if (masterReleaseEnvelope != null) {
      json['masterReleaseEnvelope'] =
          masterReleaseEnvelope!.map((e) => hcJsonValue(e)).toList();
    }
    if (masterVolume != null) {
      json['masterVolume'] = masterVolume;
    }
    if (midiInstrument != null) {
      json['midiInstrument'] = midiInstrument;
    }
    if (noteGlideDuration != null) {
      json['noteGlideDuration'] = noteGlideDuration;
    }
    if (oscillators != null) {
      json['oscillators'] = oscillators!.map((e) => e.toJson()).toList();
    }
    return json;
  }
}

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

  /// Play a fixed frequency for the oscillator - ignoring input frequency. The frequency multiplier is still applied.
  final num? fixedFrequency;

  /// Index of another oscillator to use as carrier, with this oscillator being used as a frequency modulator. Note: If the carrier is a pulse oscillator, the modulation will be on pulse width instead of frequency, allowing for PWM effects.
  final num? fmOscillator;

  /// A multiplier for the input frequency of the oscillator. Defaults to 1. If this is for example set to 4, an input frequency of 220Hz will cause the oscillator to play at 880Hz.
  final num? freqMultiplier;

  /// Highpass filter options for the oscillator.
  final HCSynthPatchPassFilter? highpass;

  /// Lowpass filter options for the oscillator.
  final HCSynthPatchPassFilter? lowpass;

  /// Width of the pulse waveform. Only applies to "pulse" type oscillators. A width of 0.5 is roughly equal to a square wave. This is the default.
  final num? pulseWidth;

  /// Volume envelope for note release, specific to this oscillator.
  final List<dynamic>? releaseEnvelope;

  /// The type of oscillator. This describes the waveform of the oscillator.
  final String? type;

  /// Index of another oscillator to use as carrier, with this oscillator being used as a volume modulator. The first oscillator in the array has index 0, and so on. This option can be used to produce tremolo effects.
  final num? vmOscillator;

  /// A volume modifier for the oscillator. Defaults to 1.
  final num? volume;

  /// A tracking multiplier used for frequency dependent behavior. For example, by setting the volume tracking multiplier to 0.01, the volume will be lower at higher notes. The multiplier is a logarithmic function, where 1 is at ca 50Hz, and you define the output multiplier for an input frequency around 3
  final num? volumePitchTrackingMultiplier;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (attackEnvelope != null) {
      json['attackEnvelope'] =
          attackEnvelope!.map((e) => hcJsonValue(e)).toList();
    }
    if (detune != null) {
      json['detune'] = detune;
    }
    if (fixedFrequency != null) {
      json['fixedFrequency'] = fixedFrequency;
    }
    if (fmOscillator != null) {
      json['fmOscillator'] = fmOscillator;
    }
    if (freqMultiplier != null) {
      json['freqMultiplier'] = freqMultiplier;
    }
    if (highpass != null) {
      json['highpass'] = highpass!.toJson();
    }
    if (lowpass != null) {
      json['lowpass'] = lowpass!.toJson();
    }
    if (pulseWidth != null) {
      json['pulseWidth'] = pulseWidth;
    }
    if (releaseEnvelope != null) {
      json['releaseEnvelope'] =
          releaseEnvelope!.map((e) => hcJsonValue(e)).toList();
    }
    if (type != null) {
      json['type'] = type;
    }
    if (vmOscillator != null) {
      json['vmOscillator'] = vmOscillator;
    }
    if (volume != null) {
      json['volume'] = volume;
    }
    if (volumePitchTrackingMultiplier != null) {
      json['volumePitchTrackingMultiplier'] = volumePitchTrackingMultiplier;
    }
    return json;
  }
}

/// An EQ filter definition for a low/highpass filter.
class HCSynthPatchPassFilter implements HCOption {
  const HCSynthPatchPassFilter({
    this.frequency,
    this.frequencyPitchTrackingMultiplier,
    this.q,
  });

  /// Filter frequency.
  final num? frequency;

  /// A pitch tracking multiplier similarly to the one for oscillator volume. Affects the filter frequency.
  final num? frequencyPitchTrackingMultiplier;

  /// Filter resonance bump/dip in dB. Defaults to 0.
  final num? q;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (frequency != null) {
      json['frequency'] = frequency;
    }
    if (frequencyPitchTrackingMultiplier != null) {
      json['frequencyPitchTrackingMultiplier'] =
          frequencyPitchTrackingMultiplier;
    }
    if (q != null) {
      json['Q'] = q;
    }
    return json;
  }
}
