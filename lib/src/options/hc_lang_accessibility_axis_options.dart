part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Axis description format strings.
class HCLangAccessibilityAxisOptions implements HCOption {
  const HCLangAccessibilityAxisOptions({
    this.defaultAxisNames,
    this.rangeCategories,
    this.rangeFromTo,
    this.timeRangeDays,
    this.timeRangeHours,
    this.timeRangeMinutes,
    this.timeRangeSeconds,
    this.xAxisDescriptionPlural,
    this.xAxisDescriptionSingular,
    this.yAxisDescriptionPlural,
    this.yAxisDescriptionSingular,
  });

  final HCLangAccessibilityAxisDefaultAxisNamesOptions? defaultAxisNames;

  final String? rangeCategories;

  final String? rangeFromTo;

  final String? timeRangeDays;

  final String? timeRangeHours;

  final String? timeRangeMinutes;

  final String? timeRangeSeconds;

  final String? xAxisDescriptionPlural;

  final String? xAxisDescriptionSingular;

  final String? yAxisDescriptionPlural;

  final String? yAxisDescriptionSingular;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (defaultAxisNames != null) {
      json["defaultAxisNames"] = defaultAxisNames!.toJson();
    }
    if (rangeCategories != null) {
      json["rangeCategories"] = rangeCategories;
    }
    if (rangeFromTo != null) {
      json["rangeFromTo"] = rangeFromTo;
    }
    if (timeRangeDays != null) {
      json["timeRangeDays"] = timeRangeDays;
    }
    if (timeRangeHours != null) {
      json["timeRangeHours"] = timeRangeHours;
    }
    if (timeRangeMinutes != null) {
      json["timeRangeMinutes"] = timeRangeMinutes;
    }
    if (timeRangeSeconds != null) {
      json["timeRangeSeconds"] = timeRangeSeconds;
    }
    if (xAxisDescriptionPlural != null) {
      json["xAxisDescriptionPlural"] = xAxisDescriptionPlural;
    }
    if (xAxisDescriptionSingular != null) {
      json["xAxisDescriptionSingular"] = xAxisDescriptionSingular;
    }
    if (yAxisDescriptionPlural != null) {
      json["yAxisDescriptionPlural"] = yAxisDescriptionPlural;
    }
    if (yAxisDescriptionSingular != null) {
      json["yAxisDescriptionSingular"] = yAxisDescriptionSingular;
    }
    return json;
  }
}
