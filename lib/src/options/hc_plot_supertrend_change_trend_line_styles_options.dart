part of 'hc_options.dart';

class HCPlotSupertrendChangeTrendLineStylesOptions implements HCOption {
  const HCPlotSupertrendChangeTrendLineStylesOptions({
    this.dashStyle,
    this.lineColor,
    this.lineWidth,
  });

  /// (Highstock) The dash or dot style of the grid lines. For possible values,
  final String? dashStyle;

  /// (Highstock) Color of the line.
  final String? lineColor;

  /// (Highstock) Pixel width of the line.
  final num? lineWidth;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (dashStyle != null) {
      json["dashStyle"] = dashStyle;
    }
    if (lineColor != null) {
      json["lineColor"] = lineColor;
    }
    if (lineWidth != null) {
      json["lineWidth"] = lineWidth;
    }
    return json;
  }
}
