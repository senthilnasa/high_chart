part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) CSS styles for the title. Use this
class HCTitleStyleOptions implements HCOption {
  const HCTitleStyleOptions({
    this.color,
    this.fontWeight,
  });

  final dynamic color;

  final String? fontWeight;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (color != null) {
      json["color"] = hcJsonValue(color);
    }
    if (fontWeight != null) {
      json["fontWeight"] = fontWeight;
    }
    return json;
  }
}
