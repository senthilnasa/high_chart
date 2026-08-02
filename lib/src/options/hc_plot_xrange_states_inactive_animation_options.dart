part of 'hc_options.dart';

/// (Highcharts, Highstock, Gantt) Animation when not hovering over the marker.
class HCPlotXrangeStatesInactiveAnimationOptions implements HCOption {
  const HCPlotXrangeStatesInactiveAnimationOptions({
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
