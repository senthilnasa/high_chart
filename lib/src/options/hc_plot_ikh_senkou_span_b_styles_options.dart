part of 'hc_options.dart';

class HCPlotIkhSenkouSpanBStylesOptions implements HCOption {
  const HCPlotIkhSenkouSpanBStylesOptions({
    this.lineColor,
    this.lineWidth,
  });

  /// (Highstock) Color of the line.
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
