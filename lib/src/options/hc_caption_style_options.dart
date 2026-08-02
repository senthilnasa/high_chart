part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) CSS styles for the caption.
class HCCaptionStyleOptions implements HCOption {
  const HCCaptionStyleOptions({
    this.color,
    this.fontSize,
  });

  final dynamic color;

  final dynamic fontSize;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (color != null) {
      json["color"] = hcJsonValue(color);
    }
    if (fontSize != null) {
      json["fontSize"] = hcJsonValue(fontSize);
    }
    return json;
  }
}
