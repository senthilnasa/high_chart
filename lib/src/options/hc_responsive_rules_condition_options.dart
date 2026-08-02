part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Under which conditions the rule
class HCResponsiveRulesConditionOptions implements HCOption {
  const HCResponsiveRulesConditionOptions({
    this.maxHeight,
    this.maxWidth,
    this.minHeight,
    this.minWidth,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) The responsive rule applies if
  final num? maxHeight;

  /// (Highcharts, Highstock, Highmaps, Gantt) The responsive rule applies if
  final num? maxWidth;

  /// (Highcharts, Highstock, Highmaps, Gantt) The responsive rule applies if
  final num? minHeight;

  /// (Highcharts, Highstock, Highmaps, Gantt) The responsive rule applies if
  final num? minWidth;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (maxHeight != null) {
      json["maxHeight"] = maxHeight;
    }
    if (maxWidth != null) {
      json["maxWidth"] = maxWidth;
    }
    if (minHeight != null) {
      json["minHeight"] = minHeight;
    }
    if (minWidth != null) {
      json["minWidth"] = minWidth;
    }
    return json;
  }
}
