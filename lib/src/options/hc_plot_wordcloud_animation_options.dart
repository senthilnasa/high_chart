part of 'hc_options.dart';

/// (Highcharts) Enable or disable the initial animation when a series is
class HCPlotWordcloudAnimationOptions implements HCOption {
  const HCPlotWordcloudAnimationOptions({
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
