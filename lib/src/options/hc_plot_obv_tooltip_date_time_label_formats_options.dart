part of 'hc_options.dart';

/// (Highcharts, Highstock, Gantt) For series on datetime axes, the date format
class HCPlotObvTooltipDateTimeLabelFormatsOptions implements HCOption {
  const HCPlotObvTooltipDateTimeLabelFormatsOptions({
    this.day,
    this.hour,
    this.millisecond,
    this.minute,
    this.month,
    this.second,
    this.week,
    this.year,
  });

  final String? day;

  final String? hour;

  final String? millisecond;

  final String? minute;

  final String? month;

  final String? second;

  final String? week;

  final String? year;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (day != null) {
      json["day"] = day;
    }
    if (hour != null) {
      json["hour"] = hour;
    }
    if (millisecond != null) {
      json["millisecond"] = millisecond;
    }
    if (minute != null) {
      json["minute"] = minute;
    }
    if (month != null) {
      json["month"] = month;
    }
    if (second != null) {
      json["second"] = second;
    }
    if (week != null) {
      json["week"] = week;
    }
    if (year != null) {
      json["year"] = year;
    }
    return json;
  }
}
