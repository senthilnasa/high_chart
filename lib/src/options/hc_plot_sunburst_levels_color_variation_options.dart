part of 'hc_options.dart';

/// (Highcharts) Can set a `colorVariation` on all points which lies on the
class HCPlotSunburstLevelsColorVariationOptions implements HCOption {
  const HCPlotSunburstLevelsColorVariationOptions({
    this.key,
    this.to,
  });

  /// (Highcharts) The key of a color variation. Currently supports
  final String? key;

  /// (Highcharts) The ending value of a color variation. The last sibling
  final num? to;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (key != null) {
      json["key"] = key;
    }
    if (to != null) {
      json["to"] = to;
    }
    return json;
  }
}
