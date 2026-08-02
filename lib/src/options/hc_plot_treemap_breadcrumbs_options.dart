part of 'hc_options.dart';

/// (Highcharts) Options for the breadcrumbs, the navigation at the top leading
class HCPlotTreemapBreadcrumbsOptions implements HCOption {
  const HCPlotTreemapBreadcrumbsOptions({
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

  /// (Highcharts) The default padding for each button and separator in each
  final num? buttonSpacing;

  /// (Highcharts) A collection of attributes for the buttons. The object takes
  final dynamic buttonTheme;

  final HCPlotTreemapBreadcrumbsEventsOptions? events;

  /// (Highcharts) When the breadcrumbs are floating, the plot area will not
  final dynamic floating;

  /// (Highcharts) A format string for the breadcrumbs button. Variables are
  final String? format;

  /// (Highcharts, Highmaps) Positioning for the button row. The breadcrumbs
  final dynamic position;

  /// (Highcharts, Highmaps) What box to align the button to. Can be either
  final String? relativeTo;

  /// (Highcharts) Whether to reverse the order of buttons. This is common in
  final dynamic rtl;

  /// (Highcharts) Options object for Breadcrumbs separator.
  final HCPlotTreemapBreadcrumbsSeparatorOptions? separator;

  /// (Highcharts) Show full path or only a single button.
  final dynamic showFullPath;

  /// (Highcharts) CSS styles for all breadcrumbs.
  final HCSVGAttributes? style;

  /// (Highcharts) Whether to use HTML to render the breadcrumbs items texts.
  final dynamic useHTML;

  /// (Highcharts) The z index of the breadcrumbs group.
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
