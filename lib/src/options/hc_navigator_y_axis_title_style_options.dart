part of 'hc_options.dart';

/// (Highstock, Gantt) CSS styles for the title. If the title text is longer than
class HCNavigatorYAxisTitleStyleOptions implements HCOption {
  const HCNavigatorYAxisTitleStyleOptions({
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
