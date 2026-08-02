part of 'hc_options.dart';

/// (Highcharts, Highstock, Gantt) Styles for the series label. The color
class HCPlotPyramid3dLabelStyleOptions implements HCOption {
  const HCPlotPyramid3dLabelStyleOptions({
    this.fontSize,
    this.fontWeight,
  });

  final num? fontSize;

  final String? fontWeight;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (fontSize != null) {
      json["fontSize"] = fontSize;
    }
    if (fontWeight != null) {
      json["fontWeight"] = fontWeight;
    }
    return json;
  }
}
