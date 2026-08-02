part of 'hc_options.dart';

/// (Highcharts, Highstock) Apply a jitter effect for the rendered markers.
class HCPlotBubbleJitterOptions implements HCOption {
  const HCPlotBubbleJitterOptions({
    this.x,
    this.y,
  });

  /// (Highcharts, Highstock) The maximal X offset for the random jitter
  final num? x;

  /// (Highcharts, Highstock) The maximal Y offset for the random jitter
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (x != null) {
      json["x"] = x;
    }
    if (y != null) {
      json["y"] = y;
    }
    return json;
  }
}
