part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Allows setting a set of rules to
class HCResponsiveOptions implements HCOption {
  const HCResponsiveOptions({
    this.rules,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) A set of rules for responsive
  final List<HCResponsiveRulesOptions>? rules;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (rules != null) {
      json["rules"] = rules!.map((e) => e.toJson()).toList();
    }
    return json;
  }
}
