part of 'hc_options.dart';

/// (Highcharts) Animation when not hovering over the marker.
class HCPlotSunburstStatesInactiveAnimationOptions implements HCOption {
  const HCPlotSunburstStatesInactiveAnimationOptions({
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
