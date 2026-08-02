part of 'hc_options.dart';

/// (Highstock) Animation when hovering over the marker.
class HCPlotLinearregressionMarkerStatesHoverAnimationOptions
    implements HCOption {
  const HCPlotLinearregressionMarkerStatesHoverAnimationOptions({
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
