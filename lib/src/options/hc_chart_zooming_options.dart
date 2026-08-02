part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Chart zooming options.
class HCChartZoomingOptions implements HCOption {
  const HCChartZoomingOptions({
    this.key,
    this.mouseWheel,
    this.pinchType,
    this.resetButton,
    this.singleTouch,
    this.type,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Set a key to hold when dragging
  final String? key;

  /// (Highcharts, Highstock, Highmaps, Gantt) The mouse wheel zoom is a
  final dynamic mouseWheel;

  /// (Highcharts, Highstock, Gantt) Equivalent to type, but for multitouch
  final String? pinchType;

  /// (Highcharts, Highstock, Highmaps, Gantt) The button that appears after a
  final HCChartZoomingResetButtonOptions? resetButton;

  /// (Highcharts, Highstock, Gantt) Enables zooming by a single touch, in
  final dynamic singleTouch;

  /// (Highcharts, Highstock, Gantt) Decides in what dimensions the user can
  final String? type;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (key != null) {
      json["key"] = key;
    }
    if (mouseWheel != null) {
      json["mouseWheel"] = hcJsonValue(mouseWheel);
    }
    if (pinchType != null) {
      json["pinchType"] = pinchType;
    }
    if (resetButton != null) {
      json["resetButton"] = resetButton!.toJson();
    }
    if (singleTouch != null) {
      json["singleTouch"] = hcJsonValue(singleTouch);
    }
    if (type != null) {
      json["type"] = type;
    }
    return json;
  }
}
