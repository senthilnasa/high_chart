part of 'hc_options.dart';

/// (Highcharts, Highmaps) Animation when hovering over the marker.
class HCSeriesTreegraphDataMarkerStatesHoverAnimationOptions
    implements HCOption {
  const HCSeriesTreegraphDataMarkerStatesHoverAnimationOptions({
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
