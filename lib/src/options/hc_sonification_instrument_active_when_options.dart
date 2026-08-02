part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Define a condition for when a track
class HCSonificationInstrumentActiveWhenOptions implements HCOption {
  const HCSonificationInstrumentActiveWhenOptions({
    this.crossingDown,
    this.crossingUp,
    this.max,
    this.min,
    this.prop,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Track is only active when `prop`
  final num? crossingDown;

  /// (Highcharts, Highstock, Highmaps, Gantt) Track is only active when `prop`
  final num? crossingUp;

  /// (Highcharts, Highstock, Highmaps, Gantt) Track is only active when `prop`
  final num? max;

  /// (Highcharts, Highstock, Highmaps, Gantt) Track is only active when `prop`
  final num? min;

  /// (Highcharts, Highstock, Highmaps, Gantt) The point property to compare,
  final String? prop;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (crossingDown != null) {
      json["crossingDown"] = crossingDown;
    }
    if (crossingUp != null) {
      json["crossingUp"] = crossingUp;
    }
    if (max != null) {
      json["max"] = max;
    }
    if (min != null) {
      json["min"] = min;
    }
    if (prop != null) {
      json["prop"] = prop;
    }
    return json;
  }
}
