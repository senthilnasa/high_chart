part of 'hc_options.dart';

/// (Highcharts, Highmaps) Options for drill down, the concept of inspecting
class HCDrilldownOptions implements HCOption {
  const HCDrilldownOptions({
    this.activeAxisLabelStyle,
    this.activeDataLabelStyle,
    this.allowPointDrilldown,
    this.animation,
    this.breadcrumbs,
    this.drillUpButton,
    this.mapZooming,
    this.series,
  });

  /// (Highcharts, Highmaps) Additional styles to apply to the X axis label for
  final HCCSSObject? activeAxisLabelStyle;

  /// (Highcharts, Highmaps) Additional styles to apply to the data label of a
  final dynamic activeDataLabelStyle;

  /// (Highcharts) When this option is false, clicking a single point will
  final dynamic allowPointDrilldown;

  /// (Highcharts, Highmaps) Set the animation for all drilldown animations.
  final dynamic animation;

  /// (Highcharts, Highmaps) Options for the breadcrumbs, the navigation at the
  final HCDrilldownBreadcrumbsOptions? breadcrumbs;

  /// (Highcharts, Highmaps) Drill up button is deprecated since Highcharts
  final HCDrilldownDrillUpButtonOptions? drillUpButton;

  /// (Highmaps) Enable or disable zooming into a region of clicked map point
  final dynamic mapZooming;

  /// (Highcharts, Highmaps) An array of series configurations for the drill
  final List<dynamic>? series;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (activeAxisLabelStyle != null) {
      json["activeAxisLabelStyle"] = activeAxisLabelStyle!.toJson();
    }
    if (activeDataLabelStyle != null) {
      json["activeDataLabelStyle"] = hcJsonValue(activeDataLabelStyle);
    }
    if (allowPointDrilldown != null) {
      json["allowPointDrilldown"] = hcJsonValue(allowPointDrilldown);
    }
    if (animation != null) {
      json["animation"] = hcJsonValue(animation);
    }
    if (breadcrumbs != null) {
      json["breadcrumbs"] = breadcrumbs!.toJson();
    }
    if (drillUpButton != null) {
      json["drillUpButton"] = drillUpButton!.toJson();
    }
    if (mapZooming != null) {
      json["mapZooming"] = hcJsonValue(mapZooming);
    }
    if (series != null) {
      json["series"] = series!.map((e) => hcJsonValue(e)).toList();
    }
    return json;
  }
}
