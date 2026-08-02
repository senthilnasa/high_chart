part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Mapping options for tremolo effects.
class HCSonificationInstrumentTremoloOptions implements HCOption {
  const HCSonificationInstrumentTremoloOptions({
    this.depth,
    this.speed,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Map to tremolo depth, from 0 to
  final dynamic depth;

  /// (Highcharts, Highstock, Highmaps, Gantt) Map to tremolo speed, from 0 to
  final dynamic speed;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (depth != null) {
      json["depth"] = hcJsonValue(depth);
    }
    if (speed != null) {
      json["speed"] = hcJsonValue(speed);
    }
    return json;
  }
}
