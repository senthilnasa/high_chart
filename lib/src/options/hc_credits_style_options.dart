part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) CSS styles for the credits label.
class HCCreditsStyleOptions implements HCOption {
  const HCCreditsStyleOptions({
    this.color,
    this.cursor,
    this.fontSize,
  });

  final dynamic color;

  final String? cursor;

  final dynamic fontSize;

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
      json["fontSize"] = hcJsonValue(fontSize);
    }
    return json;
  }
}
