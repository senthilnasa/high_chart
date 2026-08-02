part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Styles for the label. The default
class HCPlotTreegraphDataLabelsStyleOptions implements HCOption {
  const HCPlotTreegraphDataLabelsStyleOptions({
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
