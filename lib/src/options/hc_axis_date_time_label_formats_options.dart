part of 'hc_options.dart';

/// (Highcharts, Highstock, Gantt) For a datetime axis, the scale will
class HCAxisDateTimeLabelFormatsOptions implements HCOption {
  const HCAxisDateTimeLabelFormatsOptions({
    this.day,
    this.hour,
    this.millisecond,
    this.minute,
    this.month,
    this.second,
    this.week,
    this.year,
  });

  final HCAxisDateTimeLabelFormatsOptionsObject? day;

  final HCAxisDateTimeLabelFormatsOptionsObject? hour;

  final HCAxisDateTimeLabelFormatsOptionsObject? millisecond;

  final HCAxisDateTimeLabelFormatsOptionsObject? minute;

  final HCAxisDateTimeLabelFormatsOptionsObject? month;

  final HCAxisDateTimeLabelFormatsOptionsObject? second;

  final HCAxisDateTimeLabelFormatsOptionsObject? week;

  final HCAxisDateTimeLabelFormatsOptionsObject? year;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (day != null) {
      json["day"] = day!.toJson();
    }
    if (hour != null) {
      json["hour"] = hour!.toJson();
    }
    if (millisecond != null) {
      json["millisecond"] = millisecond!.toJson();
    }
    if (minute != null) {
      json["minute"] = minute!.toJson();
    }
    if (month != null) {
      json["month"] = month!.toJson();
    }
    if (second != null) {
      json["second"] = second!.toJson();
    }
    if (week != null) {
      json["week"] = week!.toJson();
    }
    if (year != null) {
      json["year"] = year!.toJson();
    }
    return json;
  }
}
