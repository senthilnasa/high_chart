part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Styles for the label. The
class HCPlotGanttDataLabelsStyleOptions implements HCOption {
  const HCPlotGanttDataLabelsStyleOptions({
    this.whiteSpace,
  });

  final String? whiteSpace;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (whiteSpace != null) {
      json["whiteSpace"] = whiteSpace;
    }
    return json;
  }
}
