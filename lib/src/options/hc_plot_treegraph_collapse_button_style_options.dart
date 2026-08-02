part of 'hc_options.dart';

/// (Highcharts) CSS styles for the collapse button.
class HCPlotTreegraphCollapseButtonStyleOptions implements HCOption {
  const HCPlotTreegraphCollapseButtonStyleOptions({
    this.cursor,
    this.fontSize,
    this.fontWeight,
  });

  final String? cursor;

  final num? fontSize;

  final String? fontWeight;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
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
