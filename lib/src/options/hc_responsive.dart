part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Allows setting a set of rules to apply for different screen or chart sizes. Each rule specifies additional chart options.
class HCResponsiveOptions implements HCOption {
  const HCResponsiveOptions({
    this.rules,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) A set of rules for responsive settings. The rules are executed from the top down.
  final List<HCResponsiveRulesOptions>? rules;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (rules != null) {
      json['rules'] = rules!.map((e) => e.toJson()).toList();
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Under which conditions the rule applies.
class HCResponsiveRulesConditionOptions implements HCOption {
  const HCResponsiveRulesConditionOptions({
    this.maxHeight,
    this.maxWidth,
    this.minHeight,
    this.minWidth,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) The responsive rule applies if the chart height is less than this.
  final num? maxHeight;

  /// (Highcharts, Highstock, Highmaps, Gantt) The responsive rule applies if the chart width is less than this.
  final num? maxWidth;

  /// (Highcharts, Highstock, Highmaps, Gantt) The responsive rule applies if the chart height is greater than this.
  final num? minHeight;

  /// (Highcharts, Highstock, Highmaps, Gantt) The responsive rule applies if the chart width is greater than this.
  final num? minWidth;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (maxHeight != null) {
      json['maxHeight'] = maxHeight;
    }
    if (maxWidth != null) {
      json['maxWidth'] = maxWidth;
    }
    if (minHeight != null) {
      json['minHeight'] = minHeight;
    }
    if (minWidth != null) {
      json['minWidth'] = minWidth;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) A set of rules for responsive settings. The rules are executed from the top down.
class HCResponsiveRulesOptions implements HCOption {
  const HCResponsiveRulesOptions({
    this.chartOptions,
    this.condition,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) A full set of chart options to apply as overrides to the general chart options. The chart options are applied when the given rule is active.
  final HCOptions? chartOptions;

  /// (Highcharts, Highstock, Highmaps, Gantt) Under which conditions the rule applies.
  final HCResponsiveRulesConditionOptions? condition;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (chartOptions != null) {
      json['chartOptions'] = chartOptions!.toJson();
    }
    if (condition != null) {
      json['condition'] = condition!.toJson();
    }
    return json;
  }
}
