part of 'hc_options.dart';

/// (Highcharts, Highstock) Enable or disable the initial animation when a series
class HCPlotColumnrangeDataLabelsAnimationOptions implements HCOption {
  const HCPlotColumnrangeDataLabelsAnimationOptions({
    this.defer,
  });

  /// (Highcharts, Highstock) The animation delay time in milliseconds. Set to
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
