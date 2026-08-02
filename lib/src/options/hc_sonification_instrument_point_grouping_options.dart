part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Options for point grouping,
class HCSonificationInstrumentPointGroupingOptions implements HCOption {
  const HCSonificationInstrumentPointGroupingOptions({
    this.algorithm,
    this.enabled,
    this.groupTimespan,
    this.prop,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) The grouping algorithm, deciding
  final String? algorithm;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether or not to group points
  final dynamic enabled;

  /// (Highcharts, Highstock, Highmaps, Gantt) The size of each group in
  final num? groupTimespan;

  /// (Highcharts, Highstock, Highmaps, Gantt) The data property for each point
  final String? prop;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (algorithm != null) {
      json["algorithm"] = algorithm;
    }
    if (enabled != null) {
      json["enabled"] = hcJsonValue(enabled);
    }
    if (groupTimespan != null) {
      json["groupTimespan"] = groupTimespan;
    }
    if (prop != null) {
      json["prop"] = prop;
    }
    return json;
  }
}
