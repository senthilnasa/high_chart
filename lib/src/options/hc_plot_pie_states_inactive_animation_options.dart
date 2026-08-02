part of 'hc_options.dart';

/// (Highcharts, Highmaps) Animation when not hovering over the marker.
class HCPlotPieStatesInactiveAnimationOptions implements HCOption {
  const HCPlotPieStatesInactiveAnimationOptions({
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
