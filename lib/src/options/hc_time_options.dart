part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Time options that can apply globally
class HCTimeOptions implements HCOption {
  const HCTimeOptions({
    this.date,
    this.timezone,
    this.timezoneOffset,
    this.useUTC,
  });

  /// (Highcharts, Highstock, Gantt) A custom `Date` class for advanced date
  final dynamic date;

  /// (Highcharts, Highstock, Gantt) A named time zone. Supported time zone
  final String? timezone;

  /// (Highcharts, Highstock, Gantt) The timezone offset in minutes. Positive
  final num? timezoneOffset;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to use UTC time for axis
  final String? useUTC;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (date != null) {
      json["Date"] = hcJsonValue(date);
    }
    if (timezone != null) {
      json["timezone"] = timezone;
    }
    if (timezoneOffset != null) {
      json["timezoneOffset"] = timezoneOffset;
    }
    if (useUTC != null) {
      json["useUTC"] = useUTC;
    }
    return json;
  }
}
