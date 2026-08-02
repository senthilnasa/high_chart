part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Options for the paging or navigation
class HCLegendNavigationOptions implements HCOption {
  const HCLegendNavigationOptions({
    this.activeColor,
    this.animation,
    this.arrowSize,
    this.enabled,
    this.inactiveColor,
    this.style,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) The color for the active up or
  final dynamic activeColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) How to animate the pages when
  final dynamic animation;

  /// (Highcharts, Highstock, Highmaps, Gantt) The pixel size of the up and
  final num? arrowSize;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to enable the legend
  final dynamic enabled;

  /// (Highcharts, Highstock, Highmaps, Gantt) The color of the inactive up or
  final dynamic inactiveColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) Text styles for the legend page
  final HCCSSObject? style;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (activeColor != null) {
      json["activeColor"] = hcJsonValue(activeColor);
    }
    if (animation != null) {
      json["animation"] = hcJsonValue(animation);
    }
    if (arrowSize != null) {
      json["arrowSize"] = arrowSize;
    }
    if (enabled != null) {
      json["enabled"] = hcJsonValue(enabled);
    }
    if (inactiveColor != null) {
      json["inactiveColor"] = hcJsonValue(inactiveColor);
    }
    if (style != null) {
      json["style"] = style!.toJson();
    }
    return json;
  }
}
