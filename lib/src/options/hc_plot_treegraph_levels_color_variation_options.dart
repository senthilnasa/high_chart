part of 'hc_options.dart';

/// (Highcharts) A configuration object to define how the color of a child varies
class HCPlotTreegraphLevelsColorVariationOptions implements HCOption {
  const HCPlotTreegraphLevelsColorVariationOptions({
    this.key,
    this.to,
  });

  /// (Highcharts) The key of a color variation. Currently supports
  final String? key;

  /// (Highcharts) The ending value of a color variation. The last sibling will
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
