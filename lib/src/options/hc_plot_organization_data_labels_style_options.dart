part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Styles for the label. The
class HCPlotOrganizationDataLabelsStyleOptions implements HCOption {
  const HCPlotOrganizationDataLabelsStyleOptions({
    this.fontSize,
    this.fontWeight,
    this.textAlign,
  });

  final num? fontSize;

  final String? fontWeight;

  final String? textAlign;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (fontSize != null) {
      json["fontSize"] = fontSize;
    }
    if (fontWeight != null) {
      json["fontWeight"] = fontWeight;
    }
    if (textAlign != null) {
      json["textAlign"] = textAlign;
    }
    return json;
  }
}
