part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) CSS styles for the title. If the
class HCYAxisTitleStyleOptions implements HCOption {
  const HCYAxisTitleStyleOptions({
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
