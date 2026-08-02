part of 'hc_options.dart';

/// (Highcharts, Highmaps) Enable or disable the initial animation when a series
class HCSeriesItemDataDataLabelsAnimationOptions implements HCOption {
  const HCSeriesItemDataDataLabelsAnimationOptions({
    this.defer,
  });

  /// (Highcharts, Highmaps) The animation delay time in milliseconds. Set to
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
