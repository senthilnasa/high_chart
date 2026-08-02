part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Animation when hovering over the
class HCPlotSeriesMarkerStatesHoverAnimationOptions implements HCOption {
  const HCPlotSeriesMarkerStatesHoverAnimationOptions({
    this.duration,
  });

  final num? duration;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (duration != null) {
      json["duration"] = duration;
    }
    return json;
  }
}
