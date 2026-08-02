part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Options for configuring
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

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for announcing new data
  final HCAccessibilityAnnounceNewDataOptionsObject? announceNewData;

  /// (Highcharts, Highstock, Highmaps, Gantt) A hook for adding custom
  final dynamic customComponents;

  /// (Highcharts, Highstock, Highmaps, Gantt) A text description of the chart.
  final String? description;

  /// (Highcharts, Highstock, Highmaps, Gantt) Enable accessibility
  final dynamic enabled;

  /// (Highcharts, Highstock, Highmaps, Gantt) Controls how highContrastTheme
  final String? highContrastMode;

  /// (Highcharts, Highstock, Highmaps, Gantt) Theme to apply to the chart when
  final dynamic highContrastTheme;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for keyboard navigation.
  final HCKeyboardNavigationOptionsObject? keyboardNavigation;

  /// (Highcharts, Highstock, Highmaps, Gantt) Amount of landmarks/regions to
  final String? landmarkVerbosity;

  /// (Highcharts, Highstock, Highmaps, Gantt) Link the chart to an HTML
  final dynamic linkedDescription;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for descriptions of
  final HCAccessibilityPointOptions? point;

  /// (Highcharts, Highstock, Highmaps, Gantt) Accessibility options for the
  final HCAccessibilityScreenReaderSectionOptions? screenReaderSection;

  /// (Highcharts, Highstock, Highmaps, Gantt) Accessibility options global to
  final HCAccessibilitySeriesOptions? series;

  /// (Highcharts, Highstock, Highmaps, Gantt) A text description of the chart
  final String? typeDescription;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (announceNewData != null) {
      json["announceNewData"] = announceNewData!.toJson();
    }
    if (customComponents != null) {
      json["customComponents"] = hcJsonValue(customComponents);
    }
    if (description != null) {
      json["description"] = description;
    }
    if (enabled != null) {
      json["enabled"] = hcJsonValue(enabled);
    }
    if (highContrastMode != null) {
      json["highContrastMode"] = highContrastMode;
    }
    if (highContrastTheme != null) {
      json["highContrastTheme"] = hcJsonValue(highContrastTheme);
    }
    if (keyboardNavigation != null) {
      json["keyboardNavigation"] = keyboardNavigation!.toJson();
    }
    if (landmarkVerbosity != null) {
      json["landmarkVerbosity"] = landmarkVerbosity;
    }
    if (linkedDescription != null) {
      json["linkedDescription"] = hcJsonValue(linkedDescription);
    }
    if (point != null) {
      json["point"] = point!.toJson();
    }
    if (screenReaderSection != null) {
      json["screenReaderSection"] = screenReaderSection!.toJson();
    }
    if (series != null) {
      json["series"] = series!.toJson();
    }
    if (typeDescription != null) {
      json["typeDescription"] = typeDescription;
    }
    return json;
  }
}
