part of 'hc_options.dart';

/// (Highcharts, Highstock) Animation setting for hovering the graph in line-type
class HCPlotPyramid3dStatesSelectAnimationOptions implements HCOption {
  const HCPlotPyramid3dStatesSelectAnimationOptions({
    this.duration,
  });

  /// (Highcharts, Highstock) The duration of the hover animation in
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
