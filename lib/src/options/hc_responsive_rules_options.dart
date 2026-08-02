part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) A set of rules for responsive
class HCResponsiveRulesOptions implements HCOption {
  const HCResponsiveRulesOptions({
    this.chartOptions,
    this.condition,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) A full set of chart options to
  final HCOptions? chartOptions;

  /// (Highcharts, Highstock, Highmaps, Gantt) Under which conditions the rule
  final HCResponsiveRulesConditionOptions? condition;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (chartOptions != null) {
      json["chartOptions"] = chartOptions!.toJson();
    }
    if (condition != null) {
      json["condition"] = condition!.toJson();
    }
    return json;
  }
}
