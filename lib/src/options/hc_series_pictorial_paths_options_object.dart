part of 'hc_options.dart';

/// (Highcharts) The paths include options describing the series image. For
class HCSeriesPictorialPathsOptionsObject implements HCOption {
  const HCSeriesPictorialPathsOptionsObject({
    this.definition,
    this.max,
  });

  /// (Highcharts) The definition defines a path to be drawn. It corresponds
  final String? definition;

  /// (Highcharts) The max option determines height of the image. It is the
  final num? max;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (definition != null) {
      json["definition"] = definition;
    }
    if (max != null) {
      json["max"] = max;
    }
    return json;
  }
}
