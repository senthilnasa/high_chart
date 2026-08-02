part of 'hc_options.dart';

/// (Highcharts) Animation when not hovering over the marker.
class HCPlotBellcurveStatesInactiveAnimationOptions implements HCOption {
  const HCPlotBellcurveStatesInactiveAnimationOptions({
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
