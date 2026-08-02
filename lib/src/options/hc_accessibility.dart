part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Options for announcing new data to screen reader users. Useful for dynamic data applications and drilldown.
class HCAccessibilityAnnounceNewDataOptionsObject implements HCOption {
  const HCAccessibilityAnnounceNewDataOptionsObject({
    this.enabled,
    this.interruptUser,
    this.minAnnounceInterval,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Enable announcing new data to screen reader users
  final bool? enabled;

  /// (Highcharts, Highstock, Highmaps, Gantt) Choose whether or not the announcements should interrupt the screen reader. If not enabled, the user will be notified once idle. It is recommended not to enable this setting unless there is a specific reason to do so.
  final bool? interruptUser;

  /// (Highcharts, Highstock, Highmaps, Gantt) Minimum interval between announcements in milliseconds. If new data arrives before this amount of time has passed, it is queued for announcement. If another new data event happens while an announcement is queued, the queued announcement is dropped, and the la
  final num? minAnnounceInterval;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    if (interruptUser != null) {
      json['interruptUser'] = interruptUser;
    }
    if (minAnnounceInterval != null) {
      json['minAnnounceInterval'] = minAnnounceInterval;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Style options for the focus border drawn around elements while navigating through them. Note that some browsers in addition draw their own borders for focused elements. These automatic borders cannot be styled by Highcharts.
class HCAccessibilityKeyboardNavigationFocusBorderStyleOptions
    implements HCOption {
  const HCAccessibilityKeyboardNavigationFocusBorderStyleOptions({
    this.borderRadius,
    this.color,
    this.lineWidth,
  });

  final num? borderRadius;

  final dynamic color;

  final num? lineWidth;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (borderRadius != null) {
      json['borderRadius'] = borderRadius;
    }
    if (color != null) {
      json['color'] = hcJsonValue(color);
    }
    if (lineWidth != null) {
      json['lineWidth'] = lineWidth;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Options for configuring accessibility for the chart. Requires the accessibility module to be loaded. For a description of the module and information on its features, see Highcharts Accessibility.
class HCAccessibilityOptions implements HCOption {
  const HCAccessibilityOptions({
    this.announceNewData,
    this.customComponents,
    this.description,
    this.enabled,
    this.highContrastMode,
    this.highContrastTheme,
    this.keyboardNavigation,
    this.landmarkVerbosity,
    this.linkedDescription,
    this.point,
    this.screenReaderSection,
    this.series,
    this.typeDescription,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for announcing new data to screen reader users. Useful for dynamic data applications and drilldown.
  final HCAccessibilityAnnounceNewDataOptionsObject? announceNewData;

  /// (Highcharts, Highstock, Highmaps, Gantt) A hook for adding custom components to the accessibility module. Should be an object mapping component names to instances of classes inheriting from the Highcharts.AccessibilityComponent base class. Remember to add the component to the keyboardNavigation.orde
  final dynamic customComponents;

  /// (Highcharts, Highstock, Highmaps, Gantt) A text description of the chart.
  final String? description;

  /// (Highcharts, Highstock, Highmaps, Gantt) Enable accessibility functionality for the chart. For more information on how to include these features, and why this is recommended, see Highcharts Accessibility.
  final bool? enabled;

  /// (Highcharts, Highstock, Highmaps, Gantt) Controls how highContrastTheme is applied.
  final String? highContrastMode;

  /// (Highcharts, Highstock, Highmaps, Gantt) Theme to apply to the chart when Windows High Contrast Mode is detected. By default, a high contrast theme matching the high contrast system colors is used.
  final dynamic highContrastTheme;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for keyboard navigation.
  final HCKeyboardNavigationOptionsObject? keyboardNavigation;

  /// (Highcharts, Highstock, Highmaps, Gantt) Amount of landmarks/regions to create for screen reader users. More landmarks can make navigation with screen readers easier, but can be distracting if there are lots of charts on the page. Three modes are available:
  final String? landmarkVerbosity;

  /// (Highcharts, Highstock, Highmaps, Gantt) Link the chart to an HTML element describing the contents of the chart.
  final dynamic linkedDescription;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for descriptions of individual data points.
  final HCAccessibilityPointOptions? point;

  /// (Highcharts, Highstock, Highmaps, Gantt) Accessibility options for the screen reader information sections added before and after the chart.
  final HCAccessibilityScreenReaderSectionOptions? screenReaderSection;

  /// (Highcharts, Highstock, Highmaps, Gantt) Accessibility options global to all data series. Individual series can also have specific accessibility options set.
  final HCAccessibilitySeriesOptions? series;

  /// (Highcharts, Highstock, Highmaps, Gantt) A text description of the chart type.
  final String? typeDescription;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (announceNewData != null) {
      json['announceNewData'] = announceNewData!.toJson();
    }
    if (customComponents != null) {
      json['customComponents'] = hcJsonValue(customComponents);
    }
    if (description != null) {
      json['description'] = description;
    }
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    if (highContrastMode != null) {
      json['highContrastMode'] = highContrastMode;
    }
    if (highContrastTheme != null) {
      json['highContrastTheme'] = hcJsonValue(highContrastTheme);
    }
    if (keyboardNavigation != null) {
      json['keyboardNavigation'] = keyboardNavigation!.toJson();
    }
    if (landmarkVerbosity != null) {
      json['landmarkVerbosity'] = landmarkVerbosity;
    }
    if (linkedDescription != null) {
      json['linkedDescription'] = hcJsonValue(linkedDescription);
    }
    if (point != null) {
      json['point'] = point!.toJson();
    }
    if (screenReaderSection != null) {
      json['screenReaderSection'] = screenReaderSection!.toJson();
    }
    if (series != null) {
      json['series'] = series!.toJson();
    }
    if (typeDescription != null) {
      json['typeDescription'] = typeDescription;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Options for descriptions of individual data points.
class HCAccessibilityPointOptions implements HCOption {
  const HCAccessibilityPointOptions({
    this.dateFormat,
    this.describeNull,
    this.descriptionFormat,
    this.valueDecimals,
    this.valueDescriptionFormat,
    this.valuePrefix,
    this.valueSuffix,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Date format to use for points on datetime axes when describing them to screen reader users.
  final String? dateFormat;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether or not to describe points with the value `null` to assistive technology, such as screen readers.
  final bool? describeNull;

  /// (Highcharts, Highstock, Highmaps, Gantt) A format string to use instead of the default for point descriptions.
  final String? descriptionFormat;

  /// (Highcharts, Highstock, Highmaps, Gantt) Decimals to use for the values in the point descriptions. Uses tooltip.valueDecimals if not defined.
  final num? valueDecimals;

  /// (Highcharts, Highstock, Highmaps, Gantt) Format to use for describing the values of data points to assistive technology - including screen readers. The point context is available as `{point}`.
  final String? valueDescriptionFormat;

  /// (Highcharts, Highstock, Highmaps, Gantt) Prefix to add to the values in the point descriptions. Uses tooltip.valuePrefix if not defined.
  final String? valuePrefix;

  /// (Highcharts, Highstock, Highmaps, Gantt) Suffix to add to the values in the point descriptions. Uses tooltip.valueSuffix if not defined.
  final String? valueSuffix;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (dateFormat != null) {
      json['dateFormat'] = dateFormat;
    }
    if (describeNull != null) {
      json['describeNull'] = describeNull;
    }
    if (descriptionFormat != null) {
      json['descriptionFormat'] = descriptionFormat;
    }
    if (valueDecimals != null) {
      json['valueDecimals'] = valueDecimals;
    }
    if (valueDescriptionFormat != null) {
      json['valueDescriptionFormat'] = valueDescriptionFormat;
    }
    if (valuePrefix != null) {
      json['valuePrefix'] = valuePrefix;
    }
    if (valueSuffix != null) {
      json['valueSuffix'] = valueSuffix;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Accessibility options for the screen reader information sections added before and after the chart.
class HCAccessibilityScreenReaderSectionOptions implements HCOption {
  const HCAccessibilityScreenReaderSectionOptions({
    this.afterChartFormat,
    this.axisRangeDateFormat,
    this.beforeChartFormat,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Format for the screen reader information region after the chart. Analogous to beforeChartFormat.
  final String? afterChartFormat;

  /// (Highcharts, Highstock, Highmaps, Gantt) Date format to use to describe range of datetime axes.
  final String? axisRangeDateFormat;

  /// (Highcharts, Highstock, Highmaps, Gantt) Format for the screen reader information region before the chart. Supported HTML tags are `<h1-6>`, `<p>`, `<div>`, `<a>`, `<ul>`, `<ol>`, `<li>`, and `<button>`. Attributes are not supported, except for id on `<div>`, `<a>`, and `<button>`. Id is required on
  final String? beforeChartFormat;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (afterChartFormat != null) {
      json['afterChartFormat'] = afterChartFormat;
    }
    if (axisRangeDateFormat != null) {
      json['axisRangeDateFormat'] = axisRangeDateFormat;
    }
    if (beforeChartFormat != null) {
      json['beforeChartFormat'] = beforeChartFormat;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Accessibility options global to all data series. Individual series can also have specific accessibility options set.
class HCAccessibilitySeriesOptions implements HCOption {
  const HCAccessibilitySeriesOptions({
    this.describeSingleSeries,
    this.descriptionFormat,
    this.pointDescriptionEnabledThreshold,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether or not to add series descriptions to charts with a single series.
  final bool? describeSingleSeries;

  /// (Highcharts, Highstock, Highmaps, Gantt) Format to use for describing the data series group to assistive technology - including screen readers.
  final String? descriptionFormat;

  /// (Highcharts, Highstock, Highmaps, Gantt) When a series contains more points than this, we no longer expose information about individual points to screen readers. Note that the keyboard navigation remains functional, but points won't have accessible descriptions unless handled separately.
  final dynamic pointDescriptionEnabledThreshold;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (describeSingleSeries != null) {
      json['describeSingleSeries'] = describeSingleSeries;
    }
    if (descriptionFormat != null) {
      json['descriptionFormat'] = descriptionFormat;
    }
    if (pointDescriptionEnabledThreshold != null) {
      json['pointDescriptionEnabledThreshold'] =
          hcJsonValue(pointDescriptionEnabledThreshold);
    }
    return json;
  }
}
