part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) A collection of options for buttons
class HCNavigationOptions implements HCOption {
  const HCNavigationOptions({
    this.annotationsOptions,
    this.bindings,
    this.bindingsClassName,
    this.breadcrumbs,
    this.buttonOptions,
    this.events,
    this.iconsURL,
    this.menuItemHoverStyle,
    this.menuItemStyle,
    this.menuStyle,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Additional options to be merged
  final dynamic annotationsOptions;

  final HCNavigationBindingsOptions? bindings;

  /// (Highcharts, Highstock, Highmaps, Gantt) A CSS class name where all
  final String? bindingsClassName;

  /// (Highcharts) Options for breadcrumbs. Breadcrumbs general options are
  final HCNavigationBreadcrumbsOptions? breadcrumbs;

  /// (Highcharts, Highstock, Highmaps, Gantt) A collection of options for
  final HCNavigationButtonOptions? buttonOptions;

  /// (Highcharts, Highstock) Events to communicate between Stock Tools and
  final HCNavigationEventsOptions? events;

  /// (Highcharts, Highstock, Highmaps, Gantt) Path where Highcharts will look
  final String? iconsURL;

  /// (Highcharts, Highstock, Highmaps, Gantt) CSS styles for the hover state
  final HCCSSObject? menuItemHoverStyle;

  /// (Highcharts, Highstock, Highmaps, Gantt) CSS styles for the individual
  final HCCSSObject? menuItemStyle;

  /// (Highcharts, Highstock, Highmaps, Gantt) CSS styles for the popup menu
  final HCCSSObject? menuStyle;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (annotationsOptions != null) {
      json["annotationsOptions"] = hcJsonValue(annotationsOptions);
    }
    if (bindings != null) {
      json["bindings"] = bindings!.toJson();
    }
    if (bindingsClassName != null) {
      json["bindingsClassName"] = bindingsClassName;
    }
    if (breadcrumbs != null) {
      json["breadcrumbs"] = breadcrumbs!.toJson();
    }
    if (buttonOptions != null) {
      json["buttonOptions"] = buttonOptions!.toJson();
    }
    if (events != null) {
      json["events"] = events!.toJson();
    }
    if (iconsURL != null) {
      json["iconsURL"] = iconsURL;
    }
    if (menuItemHoverStyle != null) {
      json["menuItemHoverStyle"] = menuItemHoverStyle!.toJson();
    }
    if (menuItemStyle != null) {
      json["menuItemStyle"] = menuItemStyle!.toJson();
    }
    if (menuStyle != null) {
      json["menuStyle"] = menuStyle!.toJson();
    }
    return json;
  }
}
