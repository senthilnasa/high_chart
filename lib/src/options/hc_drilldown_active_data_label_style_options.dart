part of 'hc_options.dart';

/// (Highcharts, Highmaps) Additional styles to apply to the data label of a
class HCDrilldownActiveDataLabelStyleOptions implements HCOption {
  const HCDrilldownActiveDataLabelStyleOptions({
    this.color,
    this.cursor,
    this.fontWeight,
    this.textDecoration,
  });

  final String? color;

  final String? cursor;

  final String? fontWeight;

  final String? textDecoration;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (color != null) {
      json["color"] = color;
    }
    if (cursor != null) {
      json["cursor"] = cursor;
    }
    if (fontWeight != null) {
      json["fontWeight"] = fontWeight;
    }
    if (textDecoration != null) {
      json["textDecoration"] = textDecoration;
    }
    return json;
  }
}
