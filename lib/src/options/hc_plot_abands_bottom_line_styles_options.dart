part of 'hc_options.dart';

class HCPlotAbandsBottomLineStylesOptions implements HCOption {
  const HCPlotAbandsBottomLineStylesOptions({
    this.lineWidth,
  });

  /// (Highstock) Pixel width of the line.
  final num? lineWidth;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (lineWidth != null) {
      json["lineWidth"] = lineWidth;
    }
    return json;
  }
}
