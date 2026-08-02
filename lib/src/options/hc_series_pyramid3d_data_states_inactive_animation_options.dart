part of 'hc_options.dart';

/// (Highcharts, Highstock) Animation when not hovering over the marker.
class HCSeriesPyramid3dDataStatesInactiveAnimationOptions implements HCOption {
  const HCSeriesPyramid3dDataStatesInactiveAnimationOptions({
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
