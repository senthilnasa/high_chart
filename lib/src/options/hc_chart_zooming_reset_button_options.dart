part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) The button that appears after a
class HCChartZoomingResetButtonOptions implements HCOption {
  const HCChartZoomingResetButtonOptions({
    this.position,
    this.relativeTo,
    this.theme,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) The position of the button.
  final dynamic position;

  /// (Highcharts, Highstock, Highmaps, Gantt) What frame the button placement
  final String? relativeTo;

  /// (Highcharts, Highstock, Highmaps, Gantt) A collection of attributes for
  final HCSVGAttributes? theme;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (position != null) {
      json["position"] = hcJsonValue(position);
    }
    if (relativeTo != null) {
      json["relativeTo"] = relativeTo;
    }
    if (theme != null) {
      json["theme"] = theme!.toJson();
    }
    return json;
  }
}
