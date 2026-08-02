part of 'hc_options.dart';

/// (Highstock) Animation when hovering over the marker.
class HCPlotWilliamsrMarkerStatesHoverAnimationOptions implements HCOption {
  const HCPlotWilliamsrMarkerStatesHoverAnimationOptions({
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
