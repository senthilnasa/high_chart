part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Styles for the label. The
class HCPlotTimelineDataLabelsStyleOptions implements HCOption {
  const HCPlotTimelineDataLabelsStyleOptions({
    this.fontSize,
    this.fontWeight,
    this.textAlign,
    this.textOutline,
  });

  final num? fontSize;

  final String? fontWeight;

  final String? textAlign;

  final String? textOutline;

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
    if (textOutline != null) {
      json["textOutline"] = textOutline;
    }
    return json;
  }
}
