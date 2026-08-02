part of 'hc_options.dart';

class HCPlotPcTopLineStylesOptions implements HCOption {
  const HCPlotPcTopLineStylesOptions({
    this.lineColor,
    this.lineWidth,
  });

  /// (Highstock) Color of the top line. If not set, it's inherited from
  final String? lineColor;

  /// (Highstock) Pixel width of the line.
  final num? lineWidth;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (lineColor != null) {
      json["lineColor"] = lineColor;
    }
    if (lineWidth != null) {
      json["lineWidth"] = lineWidth;
    }
    return json;
  }
}
