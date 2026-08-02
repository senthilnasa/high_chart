part of 'hc_options.dart';

/// (Highcharts) Enable or disable the initial animation when a series is
class HCPlotGaugeDataLabelsAnimationOptions implements HCOption {
  const HCPlotGaugeDataLabelsAnimationOptions({
    this.defer,
  });

  /// (Highcharts) The animation delay time in milliseconds. Set to `0` to
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
