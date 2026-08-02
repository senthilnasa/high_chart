part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Enable or disable the initial
class HCPlotScatter3dDataLabelsAnimationOptions implements HCOption {
  const HCPlotScatter3dDataLabelsAnimationOptions({
    this.defer,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) The animation delay time in
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
