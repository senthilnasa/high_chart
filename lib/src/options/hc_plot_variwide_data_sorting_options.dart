part of 'hc_options.dart';

/// (Highcharts, Highstock) Options for series data sorting.
class HCPlotVariwideDataSortingOptions implements HCOption {
  const HCPlotVariwideDataSortingOptions({
    this.enabled,
    this.matchByName,
    this.sortKey,
  });

  /// (Highcharts, Highstock) Enable or disable data sorting for the
  final dynamic enabled;

  /// (Highcharts, Highstock) Whether to allow matching points by name in
  final dynamic matchByName;

  /// (Highcharts, Highstock) Determines what data value should be used to
  final String? sortKey;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (enabled != null) {
      json["enabled"] = hcJsonValue(enabled);
    }
    if (matchByName != null) {
      json["matchByName"] = hcJsonValue(matchByName);
    }
    if (sortKey != null) {
      json["sortKey"] = sortKey;
    }
    return json;
  }
}
