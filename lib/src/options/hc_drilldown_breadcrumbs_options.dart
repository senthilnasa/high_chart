part of 'hc_options.dart';

/// (Highcharts, Highmaps) Options for the breadcrumbs, the navigation at the top
class HCDrilldownBreadcrumbsOptions implements HCOption {
  const HCDrilldownBreadcrumbsOptions({
    this.buttonSpacing,
    this.buttonTheme,
    this.events,
    this.floating,
    this.format,
    this.position,
    this.relativeTo,
    this.rtl,
    this.separator,
    this.showFullPath,
    this.style,
    this.useHTML,
    this.zIndex,
  });

  /// (Highcharts, Highmaps) The default padding for each button and separator
  final num? buttonSpacing;

  /// (Highcharts) A collection of attributes for the buttons. The object takes
  final dynamic buttonTheme;

  final HCDrilldownBreadcrumbsEventsOptions? events;

  /// (Highcharts, Highmaps) When the breadcrumbs are floating, the plot area
  final dynamic floating;

  /// (Highcharts, Highmaps) A format string for the breadcrumbs button.
  final String? format;

  /// (Highcharts, Highmaps) Positioning for the button row. The breadcrumbs
  final dynamic position;

  /// (Highcharts, Highmaps) What box to align the button to. Can be either
  final String? relativeTo;

  /// (Highcharts, Highmaps) Whether to reverse the order of buttons. This is
  final dynamic rtl;

  /// (Highcharts, Highmaps) Options object for Breadcrumbs separator.
  final HCDrilldownBreadcrumbsSeparatorOptions? separator;

  /// (Highcharts, Highmaps) Show full path or only a single button.
  final dynamic showFullPath;

  /// (Highcharts, Highmaps) CSS styles for all breadcrumbs.
  final HCSVGAttributes? style;

  /// (Highcharts, Highmaps) Whether to use HTML to render the breadcrumbs
  final dynamic useHTML;

  /// (Highcharts, Highmaps) The z index of the breadcrumbs group.
  final num? zIndex;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (buttonSpacing != null) {
      json["buttonSpacing"] = buttonSpacing;
    }
    if (buttonTheme != null) {
      json["buttonTheme"] = hcJsonValue(buttonTheme);
    }
    if (events != null) {
      json["events"] = events!.toJson();
    }
    if (floating != null) {
      json["floating"] = hcJsonValue(floating);
    }
    if (format != null) {
      json["format"] = format;
    }
    if (position != null) {
      json["position"] = hcJsonValue(position);
    }
    if (relativeTo != null) {
      json["relativeTo"] = relativeTo;
    }
    if (rtl != null) {
      json["rtl"] = hcJsonValue(rtl);
    }
    if (separator != null) {
      json["separator"] = separator!.toJson();
    }
    if (showFullPath != null) {
      json["showFullPath"] = hcJsonValue(showFullPath);
    }
    if (style != null) {
      json["style"] = style!.toJson();
    }
    if (useHTML != null) {
      json["useHTML"] = hcJsonValue(useHTML);
    }
    if (zIndex != null) {
      json["zIndex"] = zIndex;
    }
    return json;
  }
}
