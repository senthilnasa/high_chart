part of 'hc_options.dart';

/// (Highstock) Sonification point grouping options for this series.
class HCSeriesSonificationPointGroupingOptions implements HCOption {
  const HCSeriesSonificationPointGroupingOptions({
    this.algorithm,
    this.enabled,
    this.groupTimespan,
    this.prop,
  });

  /// (Highstock) The grouping algorithm, deciding which points to keep when
  final String? algorithm;

  /// (Highstock) Whether or not to group points
  final dynamic enabled;

  /// (Highstock) The size of each group in milliseconds. Audio events closer
  final num? groupTimespan;

  /// (Highstock) The data property for each point to compare when deciding
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
