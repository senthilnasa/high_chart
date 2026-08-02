part of 'hc_options.dart';

/// (Highcharts) Animation when hovering over the marker.
class HCSeriesBubbleDataMarkerStatesHoverAnimationOptions implements HCOption {
  const HCSeriesBubbleDataMarkerStatesHoverAnimationOptions({
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
