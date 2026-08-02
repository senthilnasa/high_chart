part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Mapping options for the lowpass
class HCSonificationInstrumentLowpassOptions implements HCOption {
  const HCSonificationInstrumentLowpassOptions({
    this.frequency,
    this.resonance,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Map to filter frequency in Hertz
  final dynamic frequency;

  /// (Highcharts, Highstock, Highmaps, Gantt) Map to filter resonance in dB.
  final dynamic resonance;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (frequency != null) {
      json["frequency"] = hcJsonValue(frequency);
    }
    if (resonance != null) {
      json["resonance"] = hcJsonValue(resonance);
    }
    return json;
  }
}
