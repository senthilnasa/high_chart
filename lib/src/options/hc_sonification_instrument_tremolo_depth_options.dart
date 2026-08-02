part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Map to tremolo depth, from 0 to 1.
class HCSonificationInstrumentTremoloDepthOptions implements HCOption {
  const HCSonificationInstrumentTremoloDepthOptions({
    this.mapFunction,
    this.mapTo,
    this.max,
    this.min,
    this.value,
    this.within,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) How to perform the mapping.
  final String? mapFunction;

  /// (Highcharts, Highstock, Highmaps, Gantt) A point property to map the
  final String? mapTo;

  /// (Highcharts, Highstock, Highmaps, Gantt) The maximum value for the audio
  final num? max;

  /// (Highcharts, Highstock, Highmaps, Gantt) The minimum value for the audio
  final num? min;

  /// (Highcharts, Highstock, Highmaps, Gantt) A fixed value to use for the
  final num? value;

  /// (Highcharts, Highstock, Highmaps, Gantt) What data values to map the
  final String? within;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (mapFunction != null) {
      json["mapFunction"] = mapFunction;
    }
    if (mapTo != null) {
      json["mapTo"] = mapTo;
    }
    if (max != null) {
      json["max"] = max;
    }
    if (min != null) {
      json["min"] = min;
    }
    if (value != null) {
      json["value"] = value;
    }
    if (within != null) {
      json["within"] = within;
    }
    return json;
  }
}
