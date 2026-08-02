part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps) CSS styles for the title. If the title text
class HCColorAxisTitleStyleOptions implements HCOption {
  const HCColorAxisTitleStyleOptions({
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
