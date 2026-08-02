part of 'hc_options.dart';

/// (Highcharts, Highstock) Animation when hovering over the marker.
class HCPlotSplineMarkerStatesHoverAnimationOptions implements HCOption {
  const HCPlotSplineMarkerStatesHoverAnimationOptions({
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
