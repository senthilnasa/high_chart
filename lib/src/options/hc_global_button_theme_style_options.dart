part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) CSS styling for the buttons' text
class HCGlobalButtonThemeStyleOptions implements HCOption {
  const HCGlobalButtonThemeStyleOptions({
    this.color,
    this.cursor,
    this.fontSize,
    this.fontWeight,
  });

  final dynamic color;

  final String? cursor;

  final num? fontSize;

  final String? fontWeight;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (color != null) {
      json["color"] = hcJsonValue(color);
    }
    if (cursor != null) {
      json["cursor"] = cursor;
    }
    if (fontSize != null) {
      json["fontSize"] = fontSize;
    }
    if (fontWeight != null) {
      json["fontWeight"] = fontWeight;
    }
    return json;
  }
}
