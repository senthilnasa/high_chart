part of 'hc_options.dart';

class HCPlotVbpVolumeDivisionStylesOptions implements HCOption {
  const HCPlotVbpVolumeDivisionStylesOptions({
    this.negativeColor,
    this.positiveColor,
  });

  /// (Highstock) Color of negative volume bars.
  final String? negativeColor;

  /// (Highstock) Color of positive volume bars.
  final String? positiveColor;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (negativeColor != null) {
      json["negativeColor"] = negativeColor;
    }
    if (positiveColor != null) {
      json["positiveColor"] = positiveColor;
    }
    return json;
  }
}
