part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Styles for the label. The
class HCPlotPackedbubbleDataLabelsStyleOptions implements HCOption {
  const HCPlotPackedbubbleDataLabelsStyleOptions({
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
