part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) CSS styles for the tooltip. The
class HCTooltipStyleOptions implements HCOption {
  const HCTooltipStyleOptions({
    this.color,
    this.cursor,
    this.fontSize,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) *
  final dynamic color;

  final String? cursor;

  /// (Highcharts, Highstock, Highmaps, Gantt) *
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
