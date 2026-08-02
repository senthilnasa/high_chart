part of 'hc_options.dart';

/// (Highcharts, Highstock, Gantt) Enable or disable the initial animation when a
class HCSeriesPictorialDataDataLabelsAnimationOptions implements HCOption {
  const HCSeriesPictorialDataDataLabelsAnimationOptions({
    this.defer,
  });

  /// (Highcharts, Highstock, Gantt) The animation delay time in milliseconds.
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
