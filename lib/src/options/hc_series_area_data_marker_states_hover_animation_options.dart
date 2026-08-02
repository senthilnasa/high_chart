part of 'hc_options.dart';

/// (Highcharts, Highstock) Animation when hovering over the marker.
class HCSeriesAreaDataMarkerStatesHoverAnimationOptions implements HCOption {
  const HCSeriesAreaDataMarkerStatesHoverAnimationOptions({
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
