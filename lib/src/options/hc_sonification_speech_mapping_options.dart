part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Mapping configuration for the
class HCSonificationSpeechMappingOptions implements HCOption {
  const HCSonificationSpeechMappingOptions({
    this.pitch,
    this.playDelay,
    this.rate,
    this.text,
    this.time,
    this.volume,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Speech pitch (how high/low the
  final dynamic pitch;

  /// (Highcharts, Highstock, Highmaps, Gantt) Milliseconds to wait before
  final dynamic playDelay;

  /// (Highcharts, Highstock, Highmaps, Gantt) Speech rate (speed) multiplier.
  final dynamic rate;

  /// (Highcharts, Highstock, Highmaps, Gantt) The text to announce for speech
  final dynamic text;

  /// (Highcharts, Highstock, Highmaps, Gantt) Time mapping determines what
  final dynamic time;

  /// (Highcharts, Highstock, Highmaps, Gantt) Volume of the speech
  final dynamic volume;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
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
    if (volume != null) {
      json["volume"] = hcJsonValue(volume);
    }
    return json;
  }
}
