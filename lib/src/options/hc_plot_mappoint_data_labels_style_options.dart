part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Styles for the label. The
class HCPlotMappointDataLabelsStyleOptions implements HCOption {
  const HCPlotMappointDataLabelsStyleOptions({
    this.color,
  });

  final String? color;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (color != null) {
      json["color"] = color;
    }
    return json;
  }
}
