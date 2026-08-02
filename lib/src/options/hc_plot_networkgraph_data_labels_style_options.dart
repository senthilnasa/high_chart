part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Styles for the label. The default
class HCPlotNetworkgraphDataLabelsStyleOptions implements HCOption {
  const HCPlotNetworkgraphDataLabelsStyleOptions({
    this.transition,
  });

  final String? transition;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (transition != null) {
      json["transition"] = transition;
    }
    return json;
  }
}
