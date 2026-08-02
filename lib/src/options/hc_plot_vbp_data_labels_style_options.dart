part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Styles for the label. The default
class HCPlotVbpDataLabelsStyleOptions implements HCOption {
  const HCPlotVbpDataLabelsStyleOptions({
    this.fontSize,
  });

  final num? fontSize;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (fontSize != null) {
      json["fontSize"] = fontSize;
    }
    return json;
  }
}
