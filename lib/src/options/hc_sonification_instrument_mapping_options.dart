part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Mapping options for the audio
class HCSonificationInstrumentMappingOptions implements HCOption {
  const HCSonificationInstrumentMappingOptions({
    this.frequency,
    this.gapBetweenNotes,
    this.highpass,
    this.lowpass,
    this.noteDuration,
    this.pan,
    this.pitch,
    this.playDelay,
    this.rate,
    this.text,
    this.time,
    this.tremolo,
    this.volume,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Frequency in Hertz of notes.
  final dynamic frequency;

  /// (Highcharts, Highstock, Highmaps, Gantt) Gap in milliseconds between
  final dynamic gapBetweenNotes;

  /// (Highcharts, Highstock, Highmaps, Gantt) Mapping options for the highpass
  final HCSonificationInstrumentHighpassOptions? highpass;

  /// (Highcharts, Highstock, Highmaps, Gantt) Mapping options for the lowpass
  final HCSonificationInstrumentLowpassOptions? lowpass;

  /// (Highcharts, Highstock, Highmaps, Gantt) Note duration determines for how
  final dynamic noteDuration;

  /// (Highcharts, Highstock, Highmaps, Gantt) Pan refers to the stereo panning
  final dynamic pan;

  /// (Highcharts, Highstock, Highmaps, Gantt) Musical pitch refers to how high
  final dynamic pitch;

  /// (Highcharts, Highstock, Highmaps, Gantt) Milliseconds to wait before
  final dynamic playDelay;

  /// (Highcharts, Highstock, Highmaps, Gantt) Rate mapping for speech tracks.
  final dynamic rate;

  /// (Highcharts, Highstock, Highmaps, Gantt) Text mapping for speech tracks.
  final dynamic text;

  /// (Highcharts, Highstock, Highmaps, Gantt) Time mapping determines what
  final dynamic time;

  /// (Highcharts, Highstock, Highmaps, Gantt) Mapping options for tremolo
  final HCSonificationInstrumentTremoloOptions? tremolo;

  /// (Highcharts, Highstock, Highmaps, Gantt) The volume of notes, from 0 to
  final dynamic volume;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (frequency != null) {
      json["frequency"] = hcJsonValue(frequency);
    }
    if (gapBetweenNotes != null) {
      json["gapBetweenNotes"] = hcJsonValue(gapBetweenNotes);
    }
    if (highpass != null) {
      json["highpass"] = highpass!.toJson();
    }
    if (lowpass != null) {
      json["lowpass"] = lowpass!.toJson();
    }
    if (noteDuration != null) {
      json["noteDuration"] = hcJsonValue(noteDuration);
    }
    if (pan != null) {
      json["pan"] = hcJsonValue(pan);
    }
    if (pitch != null) {
      json["pitch"] = hcJsonValue(pitch);
    }
    if (playDelay != null) {
      json["playDelay"] = hcJsonValue(playDelay);
    }
    if (rate != null) {
      json["rate"] = hcJsonValue(rate);
    }
    if (text != null) {
      json["text"] = hcJsonValue(text);
    }
    if (time != null) {
      json["time"] = hcJsonValue(time);
    }
    if (tremolo != null) {
      json["tremolo"] = tremolo!.toJson();
    }
    if (volume != null) {
      json["volume"] = hcJsonValue(volume);
    }
    return json;
  }
}
