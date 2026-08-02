part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Chart and map zoom accessibility
class HCLangAccessibilityZoomOptions implements HCOption {
  const HCLangAccessibilityZoomOptions({
    this.mapZoomIn,
    this.mapZoomOut,
    this.resetZoomButton,
  });

  final String? mapZoomIn;

  final String? mapZoomOut;

  final String? resetZoomButton;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (mapZoomIn != null) {
      json["mapZoomIn"] = mapZoomIn;
    }
    if (mapZoomOut != null) {
      json["mapZoomOut"] = mapZoomOut;
    }
    if (resetZoomButton != null) {
      json["resetZoomButton"] = resetZoomButton;
    }
    return json;
  }
}
