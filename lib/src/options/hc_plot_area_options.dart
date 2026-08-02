part of 'hc_options.dart';

/// (Highcharts, Highstock) The area series type.
class HCPlotAreaOptions implements HCOption {
  const HCPlotAreaOptions({
    this.accessibility,
    this.allowPointSelect,
    this.animation,
    this.animationLimit,
    this.boostBlending,
    this.boostThreshold,
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
    this.fillColor,
    this.fillOpacity,
    this.findNearestPointBy,
    this.gapSize,
    this.gapUnit,
    this.getExtremesFromAll,
    this.inactiveOtherPoints,
    this.includeInDataExport,
    this.keys,
    this.label,
    this.lastPrice,
    this.lastVisiblePrice,
    this.legendSymbol,
    this.legendSymbolColor,
    this.linecap,
    this.lineColor,
    this.lineWidth,
    this.linkedTo,
    this.marker,
    this.navigatorOptions,
    this.negativeColor,
    this.negativeFillColor,
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
    this.trackByArea,
    this.turboThreshold,
    this.visible,
    this.zoneAxis,
    this.zones,
    this.zoomEnabled,
  });

  /// (Highcharts, Highstock) Accessibility options for a series.
  final HCSeriesAccessibilityOptionsObject? accessibility;

  /// (Highcharts, Highstock) Allow this series' points to be selected by
  final dynamic allowPointSelect;

  /// (Highcharts, Highstock) Enable or disable the initial animation when
  final dynamic animation;

  /// (Highcharts, Highstock) For some series, there is a limit that shuts
  final num? animationLimit;

  /// (Highcharts, Highstock) Sets the color blending in the boost module.
  final String? boostBlending;

  /// (Highcharts, Highstock) Set the point threshold for when a series
  final num? boostThreshold;

  /// (Highcharts, Highstock) An additional class name to apply to the
  final String? className;

  /// (Highcharts, Highstock) Disable this option to allow series rendering
  final dynamic clip;

  /// (Highcharts, Highstock) The main color of the series. In line type
  final dynamic color;

  /// (Highcharts, Highstock, Highmaps) When using dual or multiple color
  final dynamic colorAxis;

  /// (Highcharts, Highstock) Styled mode only. A specific color index to
  final num? colorIndex;

  /// (Highcharts, Highstock, Highmaps) Determines what data value should
  final String? colorKey;

  /// (Highstock) Compare the values of the series against the first
  final String? compare;

  /// (Highstock) When compare is `percent`, this option dictates whether
  final dynamic compareBase;

  /// (Highstock) Defines if comparison should start from the first point
  final dynamic compareStart;

  /// (Highcharts) Polar charts only. Whether to connect the ends of a line
  final dynamic connectEnds;

  /// (Highcharts, Highstock) Whether to connect a graph line across null
  final dynamic connectNulls;

  /// (Highcharts, Highstock, Gantt) When true, each point or column edge
  final dynamic crisp;

  /// (Highcharts, Highstock) When the series contains less points than the
  final num? cropThreshold;

  /// (Highstock) Cumulative Sum feature replaces points' values with the
  final dynamic cumulative;

  /// (Highstock) Defines if cumulation should start from the first point
  final dynamic cumulativeStart;

  /// (Highcharts, Highstock) You can set the cursor to "pointer" if you
  final String? cursor;

  /// (Highcharts, Highstock) A reserved subspace to store options and
  final HCDictionary? custom;

  /// (Highcharts, Highstock) Name of the dash style to use for the graph,
  final String? dashStyle;

  /// (Highstock) Data grouping is the concept of sampling the data values
  final HCDataGroupingOptionsObject? dataGrouping;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for the series data
  final dynamic dataLabels;

  /// (Highcharts, Highstock) The mapping between the data table and the
  final HCDataMappingOptionsObject? dataMapping;

  /// (Highcharts, Highstock) Options for series data sorting.
  final HCPlotAreaDataSortingOptions? dataSorting;

  /// (Highcharts, Highstock) Deprecated. Use
  final String? description;

  /// (Highcharts, Highstock) The draggable-points module allows points to
  final HCSeriesDragDropOptionsObject? dragDrop;

  /// (Highcharts, Highstock) Enable or disable the mouse tracking for a
  final dynamic enableMouseTracking;

  /// (Highcharts, Highstock) General event handlers for the series items.
  final HCSeriesEventsOptionsObject? events;

  /// (Highcharts, Highstock) Fill color or gradient for the area. When
  final dynamic fillColor;

  /// (Highcharts, Highstock) Fill opacity for the area. When you set an
  final num? fillOpacity;

  /// (Highcharts, Highstock) Determines whether the series should look for
  final String? findNearestPointBy;

  /// (Highcharts, Highstock) Defines when to display a gap in the graph,
  final num? gapSize;

  /// (Highcharts, Highstock) Together with gapSize, this option defines
  final String? gapUnit;

  /// (Highcharts, Highstock, Gantt) Whether to use the Y extremes of the
  final dynamic getExtremesFromAll;

  /// (Highcharts, Highstock) Highlight only the hovered point and fade the
  final dynamic inactiveOtherPoints;

  /// (Highcharts, Highstock) When set to `false` will prevent the series
  final dynamic includeInDataExport;

  /// (Highcharts, Highstock) An array specifying which option maps to
  final List<String>? keys;

  /// (Highcharts, Highstock, Gantt) Series labels are placed as close to
  final HCSeriesLabelOptionsObject? label;

  /// (Highstock) The line marks the last price from all points.
  final HCSeriesLastPriceOptionsObject? lastPrice;

  /// (Highstock) The line marks the last price from visible range of
  final HCSeriesLastVisiblePriceOptionsObject? lastVisiblePrice;

  /// (Highcharts, Highstock) What type of legend symbol to render for this
  final String? legendSymbol;

  /// (Highcharts, Highstock, Highmaps) Defines the color of the legend
  final dynamic legendSymbolColor;

  /// (Highcharts, Highstock) The line cap used for line ends and line
  final String? linecap;

  /// (Highcharts, Highstock) A separate color for the graph line. By
  final dynamic lineColor;

  /// (Highcharts, Highstock) Pixel width of the graph line.
  final num? lineWidth;

  /// (Highcharts, Highstock, Gantt) The id of another series to link to.
  final String? linkedTo;

  /// (Highcharts, Highstock) Options for the point markers of line and
  final HCPointMarkerOptionsObject? marker;

  /// (Highstock) Options for the corresponding navigator series if
  final HCPlotSeriesOptions? navigatorOptions;

  /// (Highcharts, Highstock) The color for the parts of the graph or
  final dynamic negativeColor;

  /// (Highcharts) A separate color for the negative part of the area. Note
  final dynamic negativeFillColor;

  /// (Highcharts, Highstock) Whether or not data-points with the value of
  final dynamic nullInteraction;

  /// (Highcharts, Highstock) Options for the _Series on point_ feature.
  final dynamic onPoint;

  /// (Highcharts, Highstock) Opacity of a series parts: line, fill (e.g.
  final num? opacity;

  /// (Highcharts, Highstock) Properties for each single point.
  final HCPlotSeriesPointOptions? point;

  /// (Highcharts, Highstock) Deprecated. Use
  final dynamic pointDescriptionFormat;

  /// (Highcharts, Highstock) Deprecated. Use
  final dynamic pointDescriptionFormatter;

  /// (Highcharts, Highstock, Gantt) If no x values are given for the
  final num? pointInterval;

  /// (Highcharts, Highstock, Gantt) On datetime series, this allows for
  final String? pointIntervalUnit;

  /// (Highcharts, Highstock, Gantt) Possible values: `"on"`, `"between"`,
  final dynamic pointPlacement;

  /// (Highstock) The width of each point on the x axis. For example in a
  final num? pointRange;

  /// (Highcharts, Highstock, Gantt) If no x values are given for the
  final dynamic pointStart;

  /// (Highcharts, Highstock) When true, X values in the data set are
  final dynamic relativeXValue;

  /// (Highcharts, Highstock) Whether to select the series initially. If
  final dynamic selected;

  /// (Highcharts, Highstock) Whether to apply a drop shadow to the graph
  final dynamic shadow;

  /// (Highcharts, Highstock) If true, a checkbox is displayed next to the
  final dynamic showCheckbox;

  /// (Highcharts, Highstock) Whether to display this particular series or
  final dynamic showInLegend;

  /// (Highstock) Whether or not to show the series in the navigator. Takes
  final dynamic showInNavigator;

  /// (Highcharts, Highstock) Deprecated. Use
  final dynamic skipKeyboardNavigation;

  /// (Highcharts, Highstock) When this is true, the series will not cause
  final dynamic softThreshold;

  /// (Highcharts, Highstock) Sonification/audio chart options for a
  final HCSeriesSonificationOptions? sonification;

  /// (Highcharts, Highstock) Whether to stack the values of each series on
  final String? stacking;

  /// (Highcharts, Highstock) A collection of options for different series
  final HCSeriesStatesOptionsObject? states;

  /// (Highcharts, Highstock) Whether to apply steps to the line. Possible
  final String? step;

  /// (Highcharts, Highstock) Sticky tracking of mouse events. When true,
  final dynamic stickyTracking;

  /// (Highcharts, Highstock) The Y axis value to serve as the base for the
  final num? threshold;

  /// (Highcharts, Highstock) A configuration object for the tooltip
  final HCSeriesTooltipOptionsObject? tooltip;

  /// (Highcharts, Highstock) Whether the whole area or just the line
  final dynamic trackByArea;

  /// (Highcharts, Highstock, Gantt) When a series contains a `data` array
  final num? turboThreshold;

  /// (Highcharts, Highstock) Set the initial visibility of the series.
  final dynamic visible;

  /// (Highcharts, Highstock) Defines the Axis on which the zones are
  final String? zoneAxis;

  /// (Highcharts, Highstock) An array defining zones within a series.
  final List<HCSeriesZonesOptionsObject>? zones;

  /// (Highcharts, Highstock) Whether to zoom non-cartesian series. If
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
    if (fillColor != null) {
      json["fillColor"] = hcJsonValue(fillColor);
    }
    if (fillOpacity != null) {
      json["fillOpacity"] = fillOpacity;
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
    if (lineColor != null) {
      json["lineColor"] = hcJsonValue(lineColor);
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
    if (negativeFillColor != null) {
      json["negativeFillColor"] = hcJsonValue(negativeFillColor);
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
    if (trackByArea != null) {
      json["trackByArea"] = hcJsonValue(trackByArea);
    }
    if (turboThreshold != null) {
      json["turboThreshold"] = turboThreshold;
    }
    if (visible != null) {
      json["visible"] = hcJsonValue(visible);
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
