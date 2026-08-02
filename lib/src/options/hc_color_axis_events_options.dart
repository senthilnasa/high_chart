part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps) Event handlers for the axis.
class HCColorAxisEventsOptions implements HCOption {
  const HCColorAxisEventsOptions({
    this.legendItemClick,
  });

  /// (Highcharts, Highstock, Highmaps) Fires when the legend item belonging to
  final dynamic legendItemClick;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (legendItemClick != null) {
      json["legendItemClick"] = hcJsonValue(legendItemClick);
    }
    return json;
  }
}
