part of 'hc_options.dart';

/// Options for formatting dates and times using the Intl.DateTimeFormat API, and
class HCDateTimeFormatOptions implements HCOption {
  const HCDateTimeFormatOptions({
    this.day,
    this.era,
    this.formatMatcher,
    this.fractionalSecondDigits,
    this.hour,
    this.hour12,
    this.localeMatcher,
    this.minute,
    this.month,
    this.prefix,
    this.second,
    this.suffix,
    this.timeZone,
    this.timeZoneName,
    this.weekday,
    this.year,
  });

  /// The representation of the day.
  final String? day;

  /// The representation of the era.
  final String? era;

  /// The format matching algorithm to use.
  final String? formatMatcher;

  /// The number of fractional digits to use. 3 means milliseconds.
  final dynamic fractionalSecondDigits;

  /// The representation of the hour.
  final String? hour;

  /// Whether to use 12-hour time (as opposed to 24-hour time).
  final String? hour12;

  /// The locale matching algorithm to use.
  final String? localeMatcher;

  /// The representation of the minute.
  final String? minute;

  /// The representation of the month. "narrow", "short", "long".
  final String? month;

  /// A prefix for the time string. Custom Highcharts option.
  final String? prefix;

  /// The representation of the second.
  final String? second;

  /// A suffix for the time string. Custom Highcharts option.
  final String? suffix;

  /// The time zone to use. The default is the browser's default time zone.
  final String? timeZone;

  /// The representation of the time zone name.
  final String? timeZoneName;

  /// The representation of the weekday.
  final String? weekday;

  /// The representation of the year.
  final String? year;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (day != null) {
      json["day"] = day;
    }
    if (era != null) {
      json["era"] = era;
    }
    if (formatMatcher != null) {
      json["formatMatcher"] = formatMatcher;
    }
    if (fractionalSecondDigits != null) {
      json["fractionalSecondDigits"] = hcJsonValue(fractionalSecondDigits);
    }
    if (hour != null) {
      json["hour"] = hour;
    }
    if (hour12 != null) {
      json["hour12"] = hour12;
    }
    if (localeMatcher != null) {
      json["localeMatcher"] = localeMatcher;
    }
    if (minute != null) {
      json["minute"] = minute;
    }
    if (month != null) {
      json["month"] = month;
    }
    if (prefix != null) {
      json["prefix"] = prefix;
    }
    if (second != null) {
      json["second"] = second;
    }
    if (suffix != null) {
      json["suffix"] = suffix;
    }
    if (timeZone != null) {
      json["timeZone"] = timeZone;
    }
    if (timeZoneName != null) {
      json["timeZoneName"] = timeZoneName;
    }
    if (weekday != null) {
      json["weekday"] = weekday;
    }
    if (year != null) {
      json["year"] = year;
    }
    return json;
  }
}
