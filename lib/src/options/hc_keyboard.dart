part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Options for the focus border drawn around elements while navigating through them.
class HCKeyboardNavigationFocusBorderOptionsObject implements HCOption {
  const HCKeyboardNavigationFocusBorderOptionsObject({
    this.enabled,
    this.hideBrowserFocusOutline,
    this.margin,
    this.style,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Enable/disable focus border for chart.
  final bool? enabled;

  /// (Highcharts, Highstock, Highmaps, Gantt) Hide the browser's default focus indicator.
  final bool? hideBrowserFocusOutline;

  /// (Highcharts, Highstock, Highmaps, Gantt) Focus border margin around the elements.
  final num? margin;

  /// (Highcharts, Highstock, Highmaps, Gantt) Style options for the focus border drawn around elements while navigating through them. Note that some browsers in addition draw their own borders for focused elements. These automatic borders cannot be styled by Highcharts.
  final dynamic style;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    if (hideBrowserFocusOutline != null) {
      json['hideBrowserFocusOutline'] = hideBrowserFocusOutline;
    }
    if (margin != null) {
      json['margin'] = margin;
    }
    if (style != null) {
      json['style'] = hcJsonValue(style);
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Options for keyboard navigation.
class HCKeyboardNavigationOptionsObject implements HCOption {
  const HCKeyboardNavigationOptionsObject({
    this.enabled,
    this.focusBorder,
    this.order,
    this.seriesNavigation,
    this.wrapAround,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Enable keyboard navigation for the chart.
  final bool? enabled;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for the focus border drawn around elements while navigating through them.
  final HCKeyboardNavigationFocusBorderOptionsObject? focusBorder;

  /// (Highcharts, Highstock, Highmaps, Gantt) Order of tab navigation in the chart. Determines which elements are tabbed to first. Available elements are: `series`, `zoom`, `rangeSelector`, `navigator`, `chartMenu`, `legend` and `container`. In addition, any custom components can be added here. Adding `c
  final List<String>? order;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for the keyboard navigation of data points and series.
  final HCKeyboardNavigationSeriesNavigationOptionsObject? seriesNavigation;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether or not to wrap around when reaching the end of arrow-key navigation for an element in the chart.
  final bool? wrapAround;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    if (focusBorder != null) {
      json['focusBorder'] = focusBorder!.toJson();
    }
    if (order != null) {
      json['order'] = order;
    }
    if (seriesNavigation != null) {
      json['seriesNavigation'] = seriesNavigation!.toJson();
    }
    if (wrapAround != null) {
      json['wrapAround'] = wrapAround;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Options for the keyboard navigation of data points and series.
class HCKeyboardNavigationSeriesNavigationOptionsObject implements HCOption {
  const HCKeyboardNavigationSeriesNavigationOptionsObject({
    this.mode,
    this.pointNavigationEnabledThreshold,
    this.rememberPointFocus,
    this.skipNullPoints,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Set the keyboard navigation mode for the chart. Can be "normal" or "serialize". In normal mode, left/right arrow keys move between points in a series, while up/down arrow keys move between series. Up/down navigation acts intelligently to figure out which seri
  final String? mode;

  /// (Highcharts, Highstock, Highmaps, Gantt) When a series contains more points than this, we no longer allow keyboard navigation for it.
  final dynamic pointNavigationEnabledThreshold;

  /// (Highcharts, Highstock, Highmaps, Gantt) Remember which point was focused even after navigating away from the series, so that when navigating back to the series you start at the last focused point.
  final bool? rememberPointFocus;

  /// (Highcharts, Highstock, Highmaps, Gantt) Skip null points when navigating through points with the keyboard. By default this is the opposite of series.nullInteraction.
  final String? skipNullPoints;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (mode != null) {
      json['mode'] = mode;
    }
    if (pointNavigationEnabledThreshold != null) {
      json['pointNavigationEnabledThreshold'] =
          hcJsonValue(pointNavigationEnabledThreshold);
    }
    if (rememberPointFocus != null) {
      json['rememberPointFocus'] = rememberPointFocus;
    }
    if (skipNullPoints != null) {
      json['skipNullPoints'] = skipNullPoints;
    }
    return json;
  }
}
