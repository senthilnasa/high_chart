part of 'hc_options.dart';

/// (Highcharts, Highmaps) Enable or disable the initial animation when a
class HCSeriesPyramidDataDataLabelsAnimationOptions implements HCOption {
  const HCSeriesPyramidDataDataLabelsAnimationOptions({
    this.defer,
  });

  /// (Highcharts, Highmaps) The animation delay time in milliseconds. Set
  final num? defer;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (defer != null) {
      json["defer"] = defer;
    }
    return json;
  }
}
