part of 'hc_options.dart';

/// (Highmaps) A `tiledwebmap` series. The type option is not specified, it
class HCSeriesTiledwebmapOptions implements HCOption {
  const HCSeriesTiledwebmapOptions({
    this.affectsMapView,
    this.allAreas,
    this.colorByPoint,
    this.colors,
    this.dataParser,
    this.dataURL,
    this.nullColor,
    this.type,
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
    this.id,
    this.index,
    this.legendIndex,
    this.mapData,
    this.name,
    this.stack,
    this.xAxis,
    this.yAxis,
  });

  /// Not available
  final dynamic affectsMapView;

  /// Not available
  final dynamic allAreas;

  /// Not available
  final dynamic colorByPoint;

  /// Not available
  final dynamic colors;

  /// Not available
  final dynamic dataParser;

  /// Not available
  final dynamic dataURL;

  /// Not available
  final dynamic nullColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) This property is only in
  final String? type;

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

  /// (Highcharts, Highstock, Highmaps, Gantt) An id for the series. This can
  final String? id;

  /// (Highcharts, Highstock, Highmaps, Gantt) The index of the series in the
  final num? index;

  /// (Highcharts, Highstock, Highmaps, Gantt) The sequential index of the
  final num? legendIndex;

  /// (Highmaps) An array of objects containing a `geometry` or `path`
  final dynamic mapData;

  /// (Highcharts, Highstock, Highmaps, Gantt) The name of the series as shown
  final String? name;

  /// (Highcharts, Highstock) This option allows grouping series in a stacked
  final dynamic stack;

  /// (Highcharts, Highstock) When using dual or multiple x axes, this number
  final dynamic xAxis;

  /// (Highcharts, Highstock) When using dual or multiple y axes, this number
  final dynamic yAxis;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (affectsMapView != null) {
      json["affectsMapView"] = hcJsonValue(affectsMapView);
    }
    if (allAreas != null) {
      json["allAreas"] = hcJsonValue(allAreas);
    }
    if (colorByPoint != null) {
      json["colorByPoint"] = hcJsonValue(colorByPoint);
    }
    if (colors != null) {
      json["colors"] = hcJsonValue(colors);
    }
    if (dataParser != null) {
      json["dataParser"] = hcJsonValue(dataParser);
    }
    if (dataURL != null) {
      json["dataURL"] = hcJsonValue(dataURL);
    }
    if (nullColor != null) {
      json["nullColor"] = hcJsonValue(nullColor);
    }
    if (type != null) {
      json["type"] = type;
    }
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
    if (id != null) {
      json["id"] = id;
    }
    if (index != null) {
      json["index"] = index;
    }
    if (legendIndex != null) {
      json["legendIndex"] = legendIndex;
    }
    if (mapData != null) {
      json["mapData"] = hcJsonValue(mapData);
    }
    if (name != null) {
      json["name"] = name;
    }
    if (stack != null) {
      json["stack"] = hcJsonValue(stack);
    }
    if (xAxis != null) {
      json["xAxis"] = hcJsonValue(xAxis);
    }
    if (yAxis != null) {
      json["yAxis"] = hcJsonValue(yAxis);
    }
    return json;
  }
}
