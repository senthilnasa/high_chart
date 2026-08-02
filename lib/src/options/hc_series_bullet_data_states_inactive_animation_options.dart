part of 'hc_options.dart';

/// (Highcharts, Highstock) Animation when not hovering over the marker.
class HCSeriesBulletDataStatesInactiveAnimationOptions implements HCOption {
  const HCSeriesBulletDataStatesInactiveAnimationOptions({
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
