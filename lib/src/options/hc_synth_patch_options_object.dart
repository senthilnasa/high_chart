part of 'hc_options.dart';

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

  /// Volume envelope for the overall attack of a note - what happens to the
  final List<dynamic>? masterAttackEnvelope;

  /// Volume envelope for the overall release of a note - what happens to the
  final List<dynamic>? masterReleaseEnvelope;

  /// Global volume modifier for the synth. Defaults to 1. Note that if the
  final num? masterVolume;

  /// MIDI instrument ID for the synth. Used with MIDI export of Timelines to
  final num? midiInstrument;

  /// Time in milliseconds to glide between notes. Causes a glissando effect.
  final num? noteGlideDuration;

  /// Array of oscillators to add to the synth.
  final List<HCSynthPatchOscillatorOptionsObject>? oscillators;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (eq != null) {
      json["eq"] = eq!.map((e) => e.toJson()).toList();
    }
    if (masterAttackEnvelope != null) {
      json["masterAttackEnvelope"] =
          masterAttackEnvelope!.map((e) => hcJsonValue(e)).toList();
    }
    if (masterReleaseEnvelope != null) {
      json["masterReleaseEnvelope"] =
          masterReleaseEnvelope!.map((e) => hcJsonValue(e)).toList();
    }
    if (masterVolume != null) {
      json["masterVolume"] = masterVolume;
    }
    if (midiInstrument != null) {
      json["midiInstrument"] = midiInstrument;
    }
    if (noteGlideDuration != null) {
      json["noteGlideDuration"] = noteGlideDuration;
    }
    if (oscillators != null) {
      json["oscillators"] = oscillators!.map((e) => e.toJson()).toList();
    }
    return json;
  }
}
