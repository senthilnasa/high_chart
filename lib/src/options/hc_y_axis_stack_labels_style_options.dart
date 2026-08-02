part of 'hc_options.dart';

/// (Highcharts) CSS styles for the label.
class HCYAxisStackLabelsStyleOptions implements HCOption {
  const HCYAxisStackLabelsStyleOptions({
    this.color,
    this.fontSize,
    this.fontWeight,
    this.textOutline,
  });

  /// (Highcharts) *
  final dynamic color;

  final dynamic fontSize;

  final String? fontWeight;

  final num? textOutline;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (color != null) {
      json["color"] = hcJsonValue(color);
    }
    if (fontSize != null) {
      json["fontSize"] = hcJsonValue(fontSize);
    }
    if (fontWeight != null) {
      json["fontWeight"] = fontWeight;
    }
    if (textOutline != null) {
      json["textOutline"] = textOutline;
    }
    return json;
  }
}
