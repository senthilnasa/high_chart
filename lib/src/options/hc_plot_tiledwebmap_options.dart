part of 'hc_options.dart';

/// (Highmaps) A tiledwebmap series allows user to display dynamically joined
class HCPlotTiledwebmapOptions implements HCOption {
  const HCPlotTiledwebmapOptions({
    this.accessibility,
    this.className,
    this.custom,
    this.dataMapping,
    this.description,
    this.events,
    this.inactiveOtherPoints,
    this.includeInDataExport,
    this.legendSymbol,
    this.linecap,
    this.opacity,
    this.pointDescriptionFormat,
    this.provider,
    this.showInLegend,
    this.skipKeyboardNavigation,
    this.states,
    this.visible,
    this.zIndex,
    this.zoomEnabled,
  });

  /// (Highmaps) Accessibility options for a series.
  final HCSeriesAccessibilityOptionsObject? accessibility;

  /// (Highmaps) An additional class name to apply to the series' graphical
  final String? className;

  /// (Highmaps) A reserved subspace to store options and values for
  final HCDictionary? custom;

  /// (Highmaps) The mapping between the data table and the series data
  final HCDataMappingOptionsObject? dataMapping;

  /// (Highmaps) Deprecated. Use
  final String? description;

  /// (Highmaps) General event handlers for the series items. These event
  final HCSeriesEventsOptionsObject? events;

  /// (Highmaps) Highlight only the hovered point and fade the remaining
  final dynamic inactiveOtherPoints;

  /// (Highmaps) When set to `false` will prevent the series data from
  final dynamic includeInDataExport;

  /// (Highmaps) What type of legend symbol to render for this series. Can
  final String? legendSymbol;

  /// (Highmaps) The line cap used for line ends and line joins on the
  final String? linecap;

  /// (Highmaps) Opacity of a series parts: line, fill (e.g. area) and
  final num? opacity;

  /// (Highmaps) Deprecated. Use
  final dynamic pointDescriptionFormat;

  /// (Highmaps) Provider options for the series.
  final HCPlotTiledwebmapProviderOptions? provider;

  /// (Highmaps) Whether to display this particular series or series type
  final dynamic showInLegend;

  /// (Highmaps) Deprecated. Use series.accessibility.keyboardNavigation
  final dynamic skipKeyboardNavigation;

  /// (Highmaps) A collection of options for different series states.
  final HCSeriesStatesOptionsObject? states;

  /// (Highmaps) Set the initial visibility of the series.
  final dynamic visible;

  /// (Highmaps) Define the z index of the series.
  final num? zIndex;

  /// (Highmaps) Whether to zoom non-cartesian series. If `chart.zooming`
  final dynamic zoomEnabled;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (accessibility != null) {
      json["accessibility"] = accessibility!.toJson();
    }
    if (className != null) {
      json["className"] = className;
    }
    if (custom != null) {
      json["custom"] = custom!.toJson();
    }
    if (dataMapping != null) {
      json["dataMapping"] = dataMapping!.toJson();
    }
    if (description != null) {
      json["description"] = description;
    }
    if (events != null) {
      json["events"] = events!.toJson();
    }
    if (inactiveOtherPoints != null) {
      json["inactiveOtherPoints"] = hcJsonValue(inactiveOtherPoints);
    }
    if (includeInDataExport != null) {
      json["includeInDataExport"] = hcJsonValue(includeInDataExport);
    }
    if (legendSymbol != null) {
      json["legendSymbol"] = legendSymbol;
    }
    if (linecap != null) {
      json["linecap"] = linecap;
    }
    if (opacity != null) {
      json["opacity"] = opacity;
    }
    if (pointDescriptionFormat != null) {
      json["pointDescriptionFormat"] = hcJsonValue(pointDescriptionFormat);
    }
    if (provider != null) {
      json["provider"] = provider!.toJson();
    }
    if (showInLegend != null) {
      json["showInLegend"] = hcJsonValue(showInLegend);
    }
    if (skipKeyboardNavigation != null) {
      json["skipKeyboardNavigation"] = hcJsonValue(skipKeyboardNavigation);
    }
    if (states != null) {
      json["states"] = states!.toJson();
    }
    if (visible != null) {
      json["visible"] = hcJsonValue(visible);
    }
    if (zIndex != null) {
      json["zIndex"] = zIndex;
    }
    if (zoomEnabled != null) {
      json["zoomEnabled"] = hcJsonValue(zoomEnabled);
    }
    return json;
  }
}
