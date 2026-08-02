part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Styles for the label. The
class HCPlotSunburstLevelsDataLabelsStyleOptions implements HCOption {
  const HCPlotSunburstLevelsDataLabelsStyleOptions({
    this.textOverflow,
  });

  final String? textOverflow;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (textOverflow != null) {
      json["textOverflow"] = textOverflow;
    }
    return json;
  }
}
