part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) General options for all series
class HCPlotSeriesOptions implements HCOption {
  const HCPlotSeriesOptions({
    this.accessibility,
    this.allowPointSelect,
    this.animation,
    this.animationLimit,
    this.boostBlending,
    this.boostThreshold,
    this.borderColor,
    this.borderWidth,
    this.className,
    this.clip,
    this.color,
    this.colorAxis,
    this.colorIndex,
    this.colorKey,
    this.compare,
    this.compareBase,
    this.compareStart,
    this.connectEnds,
    this.connectNulls,
    this.connectors,
    this.crisp,
    this.cropThreshold,
    this.cumulative,
    this.cumulativeStart,
    this.cursor,
    this.custom,
    this.dashStyle,
    this.dataGrouping,
    this.dataLabels,
    this.dataMapping,
    this.dataSorting,
    this.description,
    this.dragDrop,
    this.enableMouseTracking,
    this.events,
    this.findNearestPointBy,
    this.gapSize,
    this.gapUnit,
    this.getExtremesFromAll,
    this.inactiveOtherPoints,
    this.includeInDataExport,
    this.joinBy,
    this.keys,
    this.label,
    this.lastPrice,
    this.lastVisiblePrice,
    this.legendSymbol,
    this.legendSymbolColor,
    this.linecap,
    this.lineWidth,
    this.linkedTo,
    this.marker,
    this.navigatorOptions,
    this.negativeColor,
    this.nullInteraction,
    this.onPoint,
    this.opacity,
    this.point,
    this.pointDescriptionFormat,
    this.pointDescriptionFormatter,
    this.pointInterval,
    this.pointIntervalUnit,
    this.pointPlacement,
    this.pointRange,
    this.pointStart,
    this.relativeXValue,
    this.selected,
    this.shadow,
    this.showCheckbox,
    this.showInLegend,
    this.showInNavigator,
    this.skipKeyboardNavigation,
    this.softThreshold,
    this.sonification,
    this.stacking,
    this.states,
    this.step,
    this.stickyTracking,
    this.threshold,
    this.tooltip,
    this.turboThreshold,
    this.useOhlcData,
    this.visible,
    this.zIndex,
    this.zoneAxis,
    this.zones,
    this.zoomEnabled,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Accessibility options for a
  final HCSeriesAccessibilityOptionsObject? accessibility;

  /// (Highcharts, Highstock, Highmaps, Gantt) Allow this series' points to be
  final dynamic allowPointSelect;

  /// (Highcharts, Highstock, Highmaps, Gantt) Enable or disable the initial
  final dynamic animation;

  /// (Highcharts, Highstock, Highmaps, Gantt) For some series, there is a
  final num? animationLimit;

  /// (Highcharts, Highstock, Highmaps, Gantt) Sets the color blending in the
  final String? boostBlending;

  /// (Highcharts, Highstock, Highmaps, Gantt) Set the point threshold for when
  final num? boostThreshold;

  /// (Highmaps) The border color of the map areas.
  final dynamic borderColor;

  /// (Highmaps) The border width of each map area.
  final num? borderWidth;

  /// (Highcharts, Highstock, Highmaps, Gantt) An additional class name to
  final String? className;

  /// (Highcharts, Highstock, Highmaps, Gantt) Disable this option to allow
  final dynamic clip;

  /// (Highcharts, Highstock, Highmaps, Gantt) The main color of the series. In
  final dynamic color;

  /// (Highcharts, Highstock, Highmaps) When using dual or multiple color axes,
  final dynamic colorAxis;

  /// (Highcharts, Highstock, Highmaps, Gantt) Styled mode only. A specific
  final num? colorIndex;

  /// (Highcharts, Highstock, Highmaps) Determines what data value should be
  final String? colorKey;

  /// (Highstock) Compare the values of the series against the first non-null,
  final String? compare;

  /// (Highstock) When compare is `percent`, this option dictates whether to
  final dynamic compareBase;

  /// (Highstock) Defines if comparison should start from the first point
  final dynamic compareStart;

  /// (Highcharts) Polar charts only. Whether to connect the ends of a line
  final dynamic connectEnds;

  /// (Highcharts, Highstock) Whether to connect a graph line across null
  final dynamic connectNulls;

  /// (Gantt) Override Pathfinder connector options for a series. Requires
  final HCSeriesConnectorsOptionsObject? connectors;

  /// (Highcharts, Highstock, Gantt) When true, each point or column edge is
  final dynamic crisp;

  /// (Highcharts, Highstock) When the series contains less points than the
  final num? cropThreshold;

  /// (Highstock) Cumulative Sum feature replaces points' values with the
  final dynamic cumulative;

  /// (Highstock) Defines if cumulation should start from the first point
  final dynamic cumulativeStart;

  /// (Highcharts, Highstock, Highmaps, Gantt) You can set the cursor to
  final String? cursor;

  /// (Highcharts, Highstock, Highmaps, Gantt) A reserved subspace to store
  final HCDictionary? custom;

  /// (Highcharts, Highstock, Highmaps, Gantt) Name of the dash style to use
  final String? dashStyle;

  /// (Highstock) Data grouping is the concept of sampling the data values into
  final HCDataGroupingOptionsObject? dataGrouping;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for the series data
  final dynamic dataLabels;

  /// (Highcharts, Highstock, Highmaps, Gantt) The mapping between the data
  final HCDataMappingOptionsObject? dataMapping;

  /// (Highcharts, Highstock) Options for series data sorting.
  final HCPlotSeriesDataSortingOptions? dataSorting;

  /// (Highcharts, Highstock, Highmaps, Gantt) Deprecated. Use
  final String? description;

  /// (Highcharts, Highstock, Highmaps, Gantt) The draggable-points module
  final HCSeriesDragDropOptionsObject? dragDrop;

  /// (Highcharts, Highstock, Highmaps, Gantt) Enable or disable the mouse
  final dynamic enableMouseTracking;

  /// (Highcharts, Highstock, Highmaps, Gantt) General event handlers for the
  final HCSeriesEventsOptionsObject? events;

  /// (Highcharts, Highstock, Highmaps, Gantt) Determines whether the series
  final String? findNearestPointBy;

  /// (Highcharts, Highstock) Defines when to display a gap in the graph,
  final num? gapSize;

  /// (Highcharts, Highstock) Together with gapSize, this option defines where
  final String? gapUnit;

  /// (Highcharts, Highstock, Gantt) Whether to use the Y extremes of the total
  final dynamic getExtremesFromAll;

  /// (Highcharts, Highstock, Highmaps, Gantt) Highlight only the hovered point
  final dynamic inactiveOtherPoints;

  /// (Highcharts, Highstock, Highmaps, Gantt) When set to `false` will prevent
  final dynamic includeInDataExport;

  /// (Highmaps) What property to join the `mapData` to the value data. For
  final dynamic joinBy;

  /// (Highcharts, Highstock, Highmaps, Gantt) An array specifying which option
  final List<String>? keys;

  /// (Highcharts, Highstock, Gantt) Series labels are placed as close to the
  final HCSeriesLabelOptionsObject? label;

  /// (Highstock) The line marks the last price from all points.
  final HCSeriesLastPriceOptionsObject? lastPrice;

  /// (Highstock) The line marks the last price from visible range of points.
  final HCSeriesLastVisiblePriceOptionsObject? lastVisiblePrice;

  /// (Highcharts, Highstock, Highmaps, Gantt) What type of legend symbol to
  final String? legendSymbol;

  /// (Highcharts, Highstock, Highmaps) Defines the color of the legend symbol
  final dynamic legendSymbolColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) The line cap used for line ends
  final String? linecap;

  /// (Highcharts, Highstock) Pixel width of the graph line.
  final num? lineWidth;

  /// (Highcharts, Highstock, Gantt) The id of another series to link to.
  final String? linkedTo;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for the point markers of
  final HCPointMarkerOptionsObject? marker;

  /// (Highstock) Options for the corresponding navigator series if
  final HCPlotSeriesOptions? navigatorOptions;

  /// (Highcharts, Highstock, Highmaps, Gantt) The color for the parts of the
  final dynamic negativeColor;

  /// (Highcharts, Highstock) Whether or not data-points with the value of
  final dynamic nullInteraction;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for the _Series on
  final dynamic onPoint;

  /// (Highcharts, Highstock, Highmaps, Gantt) Opacity of a series parts: line,
  final num? opacity;

  /// (Highcharts, Highstock, Highmaps, Gantt) Properties for each single
  final HCPlotSeriesPointOptions? point;

  /// (Highcharts, Highstock, Highmaps, Gantt) Deprecated. Use
  final dynamic pointDescriptionFormat;

  /// (Highcharts, Highstock, Highmaps, Gantt) Deprecated. Use
  final dynamic pointDescriptionFormatter;

  /// (Highcharts, Highstock, Gantt) If no x values are given for the points in
  final num? pointInterval;

  /// (Highcharts, Highstock, Gantt) On datetime series, this allows for
  final String? pointIntervalUnit;

  /// (Highcharts, Highstock, Gantt) Possible values: `"on"`, `"between"`,
  final dynamic pointPlacement;

  /// (Highstock) The width of each point on the x axis. For example in a
  final num? pointRange;

  /// (Highcharts, Highstock, Gantt) If no x values are given for the points in
  final dynamic pointStart;

  /// (Highcharts, Highstock) When true, X values in the data set are relative
  final dynamic relativeXValue;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to select the series
  final dynamic selected;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to apply a drop shadow
  final dynamic shadow;

  /// (Highcharts, Highstock, Highmaps, Gantt) If true, a checkbox is displayed
  final dynamic showCheckbox;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to display this
  final dynamic showInLegend;

  /// (Highstock) Whether or not to show the series in the navigator. Takes
  final dynamic showInNavigator;

  /// (Highcharts, Highstock, Highmaps, Gantt) Deprecated. Use
  final dynamic skipKeyboardNavigation;

  /// (Highcharts, Highstock) When this is true, the series will not cause the
  final dynamic softThreshold;

  /// (Highcharts, Highstock, Highmaps, Gantt) Sonification/audio chart options
  final HCSeriesSonificationOptions? sonification;

  /// (Highcharts, Highstock) Whether to stack the values of each series on top
  final String? stacking;

  /// (Highcharts, Highstock, Highmaps, Gantt) A collection of options for
  final HCSeriesStatesOptionsObject? states;

  /// (Highcharts, Highstock) Whether to apply steps to the line. Possible
  final String? step;

  /// (Highcharts, Highstock, Highmaps, Gantt) Sticky tracking of mouse events.
  final dynamic stickyTracking;

  /// (Highcharts, Highstock) The threshold, also called zero level or base
  final num? threshold;

  /// (Highcharts, Highstock, Highmaps, Gantt) A configuration object for the
  final HCSeriesTooltipOptionsObject? tooltip;

  /// (Highcharts, Highstock, Gantt) When a series contains a `data` array that
  final num? turboThreshold;

  /// (Highstock) The parameter allows setting line series type and use OHLC
  final dynamic useOhlcData;

  /// (Highcharts, Highstock, Highmaps, Gantt) Set the initial visibility of
  final dynamic visible;

  /// (Highmaps) Define the z index of the series.
  final num? zIndex;

  /// (Highcharts, Highstock) Defines the Axis on which the zones are applied.
  final String? zoneAxis;

  /// (Highcharts, Highstock) An array defining zones within a series. Zones
  final List<HCSeriesZonesOptionsObject>? zones;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to zoom non-cartesian
  final dynamic zoomEnabled;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (accessibility != null) {
      json["accessibility"] = accessibility!.toJson();
    }
    if (allowPointSelect != null) {
      json["allowPointSelect"] = hcJsonValue(allowPointSelect);
    }
    if (animation != null) {
      json["animation"] = hcJsonValue(animation);
    }
    if (animationLimit != null) {
      json["animationLimit"] = animationLimit;
    }
    if (boostBlending != null) {
      json["boostBlending"] = boostBlending;
    }
    if (boostThreshold != null) {
      json["boostThreshold"] = boostThreshold;
    }
    if (borderColor != null) {
      json["borderColor"] = hcJsonValue(borderColor);
    }
    if (borderWidth != null) {
      json["borderWidth"] = borderWidth;
    }
    if (className != null) {
      json["className"] = className;
    }
    if (clip != null) {
      json["clip"] = hcJsonValue(clip);
    }
    if (color != null) {
      json["color"] = hcJsonValue(color);
    }
    if (colorAxis != null) {
      json["colorAxis"] = hcJsonValue(colorAxis);
    }
    if (colorIndex != null) {
      json["colorIndex"] = colorIndex;
    }
    if (colorKey != null) {
      json["colorKey"] = colorKey;
    }
    if (compare != null) {
      json["compare"] = compare;
    }
    if (compareBase != null) {
      json["compareBase"] = hcJsonValue(compareBase);
    }
    if (compareStart != null) {
      json["compareStart"] = hcJsonValue(compareStart);
    }
    if (connectEnds != null) {
      json["connectEnds"] = hcJsonValue(connectEnds);
    }
    if (connectNulls != null) {
      json["connectNulls"] = hcJsonValue(connectNulls);
    }
    if (connectors != null) {
      json["connectors"] = connectors!.toJson();
    }
    if (crisp != null) {
      json["crisp"] = hcJsonValue(crisp);
    }
    if (cropThreshold != null) {
      json["cropThreshold"] = cropThreshold;
    }
    if (cumulative != null) {
      json["cumulative"] = hcJsonValue(cumulative);
    }
    if (cumulativeStart != null) {
      json["cumulativeStart"] = hcJsonValue(cumulativeStart);
    }
    if (cursor != null) {
      json["cursor"] = cursor;
    }
    if (custom != null) {
      json["custom"] = custom!.toJson();
    }
    if (dashStyle != null) {
      json["dashStyle"] = dashStyle;
    }
    if (dataGrouping != null) {
      json["dataGrouping"] = dataGrouping!.toJson();
    }
    if (dataLabels != null) {
      json["dataLabels"] = hcJsonValue(dataLabels);
    }
    if (dataMapping != null) {
      json["dataMapping"] = dataMapping!.toJson();
    }
    if (dataSorting != null) {
      json["dataSorting"] = dataSorting!.toJson();
    }
    if (description != null) {
      json["description"] = description;
    }
    if (dragDrop != null) {
      json["dragDrop"] = dragDrop!.toJson();
    }
    if (enableMouseTracking != null) {
      json["enableMouseTracking"] = hcJsonValue(enableMouseTracking);
    }
    if (events != null) {
      json["events"] = events!.toJson();
    }
    if (findNearestPointBy != null) {
      json["findNearestPointBy"] = findNearestPointBy;
    }
    if (gapSize != null) {
      json["gapSize"] = gapSize;
    }
    if (gapUnit != null) {
      json["gapUnit"] = gapUnit;
    }
    if (getExtremesFromAll != null) {
      json["getExtremesFromAll"] = hcJsonValue(getExtremesFromAll);
    }
    if (inactiveOtherPoints != null) {
      json["inactiveOtherPoints"] = hcJsonValue(inactiveOtherPoints);
    }
    if (includeInDataExport != null) {
      json["includeInDataExport"] = hcJsonValue(includeInDataExport);
    }
    if (joinBy != null) {
      json["joinBy"] = hcJsonValue(joinBy);
    }
    if (keys != null) {
      json["keys"] = keys;
    }
    if (label != null) {
      json["label"] = label!.toJson();
    }
    if (lastPrice != null) {
      json["lastPrice"] = lastPrice!.toJson();
    }
    if (lastVisiblePrice != null) {
      json["lastVisiblePrice"] = lastVisiblePrice!.toJson();
    }
    if (legendSymbol != null) {
      json["legendSymbol"] = legendSymbol;
    }
    if (legendSymbolColor != null) {
      json["legendSymbolColor"] = hcJsonValue(legendSymbolColor);
    }
    if (linecap != null) {
      json["linecap"] = linecap;
    }
    if (lineWidth != null) {
      json["lineWidth"] = lineWidth;
    }
    if (linkedTo != null) {
      json["linkedTo"] = linkedTo;
    }
    if (marker != null) {
      json["marker"] = marker!.toJson();
    }
    if (navigatorOptions != null) {
      json["navigatorOptions"] = navigatorOptions!.toJson();
    }
    if (negativeColor != null) {
      json["negativeColor"] = hcJsonValue(negativeColor);
    }
    if (nullInteraction != null) {
      json["nullInteraction"] = hcJsonValue(nullInteraction);
    }
    if (onPoint != null) {
      json["onPoint"] = hcJsonValue(onPoint);
    }
    if (opacity != null) {
      json["opacity"] = opacity;
    }
    if (point != null) {
      json["point"] = point!.toJson();
    }
    if (pointDescriptionFormat != null) {
      json["pointDescriptionFormat"] = hcJsonValue(pointDescriptionFormat);
    }
    if (pointDescriptionFormatter != null) {
      json["pointDescriptionFormatter"] =
          hcJsonValue(pointDescriptionFormatter);
    }
    if (pointInterval != null) {
      json["pointInterval"] = pointInterval;
    }
    if (pointIntervalUnit != null) {
      json["pointIntervalUnit"] = pointIntervalUnit;
    }
    if (pointPlacement != null) {
      json["pointPlacement"] = hcJsonValue(pointPlacement);
    }
    if (pointRange != null) {
      json["pointRange"] = pointRange;
    }
    if (pointStart != null) {
      json["pointStart"] = hcJsonValue(pointStart);
    }
    if (relativeXValue != null) {
      json["relativeXValue"] = hcJsonValue(relativeXValue);
    }
    if (selected != null) {
      json["selected"] = hcJsonValue(selected);
    }
    if (shadow != null) {
      json["shadow"] = hcJsonValue(shadow);
    }
    if (showCheckbox != null) {
      json["showCheckbox"] = hcJsonValue(showCheckbox);
    }
    if (showInLegend != null) {
      json["showInLegend"] = hcJsonValue(showInLegend);
    }
    if (showInNavigator != null) {
      json["showInNavigator"] = hcJsonValue(showInNavigator);
    }
    if (skipKeyboardNavigation != null) {
      json["skipKeyboardNavigation"] = hcJsonValue(skipKeyboardNavigation);
    }
    if (softThreshold != null) {
      json["softThreshold"] = hcJsonValue(softThreshold);
    }
    if (sonification != null) {
      json["sonification"] = sonification!.toJson();
    }
    if (stacking != null) {
      json["stacking"] = stacking;
    }
    if (states != null) {
      json["states"] = states!.toJson();
    }
    if (step != null) {
      json["step"] = step;
    }
    if (stickyTracking != null) {
      json["stickyTracking"] = hcJsonValue(stickyTracking);
    }
    if (threshold != null) {
      json["threshold"] = threshold;
    }
    if (tooltip != null) {
      json["tooltip"] = tooltip!.toJson();
    }
    if (turboThreshold != null) {
      json["turboThreshold"] = turboThreshold;
    }
    if (useOhlcData != null) {
      json["useOhlcData"] = hcJsonValue(useOhlcData);
    }
    if (visible != null) {
      json["visible"] = hcJsonValue(visible);
    }
    if (zIndex != null) {
      json["zIndex"] = zIndex;
    }
    if (zoneAxis != null) {
      json["zoneAxis"] = zoneAxis;
    }
    if (zones != null) {
      json["zones"] = zones!.map((e) => e.toJson()).toList();
    }
    if (zoomEnabled != null) {
      json["zoomEnabled"] = hcJsonValue(zoomEnabled);
    }
    return json;
  }
}
