part of 'hc_options.dart';

/// (Highstock) Animation when not hovering over the marker.
class HCPlotPivotpointsStatesInactiveAnimationOptions implements HCOption {
  const HCPlotPivotpointsStatesInactiveAnimationOptions({
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
