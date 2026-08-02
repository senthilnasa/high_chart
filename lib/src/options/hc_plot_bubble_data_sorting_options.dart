part of 'hc_options.dart';

/// (Highcharts, Highstock) Options for series data sorting.
class HCPlotBubbleDataSortingOptions implements HCOption {
  const HCPlotBubbleDataSortingOptions({
    this.enabled,
    this.matchByName,
    this.sortKey,
  });

  /// (Highcharts, Highstock) Enable or disable data sorting for the series.
  final dynamic enabled;

  /// (Highcharts, Highstock) Whether to allow matching points by name in an
  final dynamic matchByName;

  /// (Highcharts, Highstock) Determines what data value should be used to sort
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
