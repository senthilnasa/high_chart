part of 'hc_options.dart';

/// (Highstock, Gantt) CSS styles for the label. Use `lineClamp` to control
class HCNavigatorXAxisLabelsStyleOptions implements HCOption {
  const HCNavigatorXAxisLabelsStyleOptions({
    this.color,
    this.cursor,
    this.fontSize,
    this.textOverflow,
  });

  final dynamic color;

  final String? cursor;

  final num? fontSize;

  final String? textOverflow;

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
    if (textOverflow != null) {
      json["textOverflow"] = textOverflow;
    }
    return json;
  }
}
