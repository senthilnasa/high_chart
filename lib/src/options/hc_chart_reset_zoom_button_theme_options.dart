part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) A collection of attributes for the
class HCChartResetZoomButtonThemeOptions implements HCOption {
  const HCChartResetZoomButtonThemeOptions({
    this.zIndex,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) The z-index of the button.
  final num? zIndex;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (zIndex != null) {
      json["zIndex"] = zIndex;
    }
    return json;
  }
}
