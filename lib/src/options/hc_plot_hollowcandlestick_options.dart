part of 'hc_options.dart';

/// (Highstock) A hollow candlestick chart is a style of financial chart used to
class HCPlotHollowcandlestickOptions implements HCOption {
  const HCPlotHollowcandlestickOptions({
    this.accessibility,
    this.allowPointSelect,
    this.animation,
    this.animationLimit,
    this.boostBlending,
    this.boostThreshold,
    this.centerInCategory,
    this.className,
    this.clip,
    this.color,
    this.colorAxis,
    this.colorByPoint,
    this.colorIndex,
    this.colorKey,
    this.colors,
    this.compare,
    this.compareBase,
    this.compareStart,
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
    this.getExtremesFromAll,
    this.grouping,
    this.groupPadding,
    this.inactiveOtherPoints,
    this.includeInDataExport,
    this.keys,
    this.label,
    this.lastPrice,
    this.lastVisiblePrice,
    this.legendSymbol,
    this.legendSymbolColor,
    this.lineColor,
    this.lineWidth,
    this.linkedTo,
    this.maxPointWidth,
    this.minPointLength,
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
    this.pointPadding,
    this.pointPlacement,
    this.pointRange,
    this.pointStart,
    this.pointValKey,
    this.pointWidth,
    this.relativeXValue,
    this.selected,
    this.shadow,
    this.showCheckbox,
    this.showInLegend,
    this.showInNavigator,
    this.skipKeyboardNavigation,
    this.softThreshold,
    this.sonification,
    this.states,
    this.stickyTracking,
    this.threshold,
    this.tooltip,
    this.turboThreshold,
    this.upColor,
    this.upLineColor,
    this.visible,
    this.zoneAxis,
    this.zones,
    this.zoomEnabled,
  });

  /// (Highstock) Accessibility options for a series.
  final HCSeriesAccessibilityOptionsObject? accessibility;

  /// (Highstock) Allow this series' points to be selected by clicking on the
  final dynamic allowPointSelect;

  /// (Highstock) Enable or disable the initial animation when a series is
  final dynamic animation;

  /// (Highstock) For some series, there is a limit that shuts down animation
  final num? animationLimit;

  /// (Highstock) Sets the color blending in the boost module.
  final String? boostBlending;

  /// (Highstock) Set the point threshold for when a series should enter boost
  final num? boostThreshold;

  /// (Highcharts, Highstock, Gantt) When `true`, the columns will center in
  final dynamic centerInCategory;

  /// (Highstock) An additional class name to apply to the series' graphical
  final String? className;

  /// (Highstock) Disable this option to allow series rendering in the whole
  final dynamic clip;

  /// (Highstock) The fill color of the candlestick when the current close is
  final dynamic color;

  /// (Highcharts, Highstock, Highmaps) When using dual or multiple color axes,
  final dynamic colorAxis;

  /// (Highcharts, Highstock, Gantt) When using automatic point colors pulled
  final dynamic colorByPoint;

  /// (Highstock) Styled mode only. A specific color index to use for the
  final num? colorIndex;

  /// (Highcharts, Highstock, Highmaps) Determines what data value should be
  final String? colorKey;

  /// (Highcharts, Highstock, Gantt) A series specific or series type specific
  final List<dynamic>? colors;

  /// (Highstock) Compare the values of the series against the first non-null,
  final String? compare;

  /// (Highstock) When compare is `percent`, this option dictates whether to
  final dynamic compareBase;

  /// (Highstock) Defines if comparison should start from the first point
  final dynamic compareStart;

  /// (Highcharts, Highstock, Gantt) When the series contains less points than
  final num? cropThreshold;

  /// (Highstock) Cumulative Sum feature replaces points' values with the
  final dynamic cumulative;

  /// (Highstock) Defines if cumulation should start from the first point
  final dynamic cumulativeStart;

  /// (Highstock) You can set the cursor to "pointer" if you have click events
  final String? cursor;

  /// (Highstock) A reserved subspace to store options and values for
  final HCDictionary? custom;

  /// (Highstock) Name of the dash style to use for the graph, or for some
  final String? dashStyle;

  /// (Highstock) Data grouping is the concept of sampling the data values into
  final HCDataGroupingOptionsObject? dataGrouping;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for the series data
  final dynamic dataLabels;

  /// (Highstock) The mapping between the data table and the series data
  final HCDataMappingOptionsObject? dataMapping;

  /// (Highcharts, Highstock) Options for series data sorting.
  final HCPlotHollowcandlestickDataSortingOptions? dataSorting;

  /// (Highstock) Deprecated. Use plotOptions.series.accessibility.description
  final String? description;

  /// (Highstock) The draggable-points module allows points to be moved around
  final HCSeriesDragDropOptionsObject? dragDrop;

  /// (Highstock) Enable or disable the mouse tracking for a specific series.
  final dynamic enableMouseTracking;

  /// (Highstock) General event handlers for the series items. These event
  final HCSeriesEventsOptionsObject? events;

  /// (Highstock) Determines whether the series should look for the nearest
  final String? findNearestPointBy;

  /// (Highcharts, Highstock, Gantt) Whether to use the Y extremes of the total
  final dynamic getExtremesFromAll;

  /// (Highcharts, Highstock, Gantt) Whether to group non-stacked columns or to
  final dynamic grouping;

  /// (Highcharts, Highstock, Gantt) Padding between each value groups, in x
  final num? groupPadding;

  /// (Highstock) Highlight only the hovered point and fade the remaining
  final dynamic inactiveOtherPoints;

  /// (Highstock) When set to `false` will prevent the series data from being
  final dynamic includeInDataExport;

  /// (Highstock) An array specifying which option maps to which key in the
  final List<String>? keys;

  /// (Highcharts, Highstock, Gantt) Series labels are placed as close to the
  final HCSeriesLabelOptionsObject? label;

  /// (Highstock) The line marks the last price from all points.
  final HCSeriesLastPriceOptionsObject? lastPrice;

  /// (Highstock) The line marks the last price from visible range of points.
  final HCSeriesLastVisiblePriceOptionsObject? lastVisiblePrice;

  /// (Highstock) What type of legend symbol to render for this series. For
  final String? legendSymbol;

  /// (Highcharts, Highstock, Highmaps) Defines the color of the legend symbol
  final dynamic legendSymbolColor;

  /// (Highstock) The color of the line/border of the hollow candlestick when
  final dynamic lineColor;

  /// (Highstock) The pixel width of the candlestick line/border. Defaults to
  final num? lineWidth;

  /// (Highcharts, Highstock, Gantt) The id of another series to link to.
  final String? linkedTo;

  /// (Highcharts, Highstock, Gantt) The maximum allowed pixel width for a
  final num? maxPointWidth;

  /// (Highcharts, Highstock, Gantt) The minimal height for a column or width
  final num? minPointLength;

  /// (Highstock) Options for the corresponding navigator series if
  final HCPlotSeriesOptions? navigatorOptions;

  /// (Highstock) The color for the parts of the graph or points that are below
  final dynamic negativeColor;

  /// (Highcharts, Highstock) Whether or not data-points with the value of
  final dynamic nullInteraction;

  /// (Highstock) Options for the _Series on point_ feature. Only `pie` and
  final dynamic onPoint;

  /// (Highstock) Opacity of a series parts: line, fill (e.g. area) and
  final num? opacity;

  /// (Highstock) Properties for each single point.
  final HCPlotSeriesPointOptions? point;

  /// (Highstock) Deprecated. Use series.accessibility.point.descriptionFormat
  final dynamic pointDescriptionFormat;

  /// (Highstock) Deprecated. Use
  final dynamic pointDescriptionFormatter;

  /// (Highcharts, Highstock, Gantt) If no x values are given for the points in
  final num? pointInterval;

  /// (Highcharts, Highstock, Gantt) On datetime series, this allows for
  final String? pointIntervalUnit;

  /// (Highcharts, Highstock, Gantt) Padding between each column or bar, in x
  final num? pointPadding;

  /// (Highcharts, Highstock, Gantt) Possible values: `"on"`, `"between"`,
  final dynamic pointPlacement;

  /// (Highcharts, Highstock, Gantt) The X axis range that each point is valid
  final num? pointRange;

  /// (Highcharts, Highstock, Gantt) If no x values are given for the points in
  final dynamic pointStart;

  /// (Highstock) Determines which one of `open`, `high`, `low`, `close` values
  final String? pointValKey;

  /// (Highcharts, Highstock, Gantt) A pixel value specifying a fixed width for
  final num? pointWidth;

  /// (Highcharts, Highstock) When true, X values in the data set are relative
  final dynamic relativeXValue;

  /// (Highstock) Whether to select the series initially. If `showCheckbox` is
  final dynamic selected;

  /// (Highstock) Whether to apply a drop shadow to the graph line. Since 2.3
  final dynamic shadow;

  /// (Highstock) If true, a checkbox is displayed next to the legend item to
  final dynamic showCheckbox;

  /// (Highstock) Whether to display this particular series or series type in
  final dynamic showInLegend;

  /// (Highstock) Whether or not to show the series in the navigator. Takes
  final dynamic showInNavigator;

  /// (Highstock) Deprecated. Use series.accessibility.keyboardNavigation
  final dynamic skipKeyboardNavigation;

  /// (Highcharts, Highstock) When this is true, the series will not cause the
  final dynamic softThreshold;

  /// (Highstock) Sonification/audio chart options for a series.
  final HCSeriesSonificationOptions? sonification;

  /// (Highstock) A collection of options for different series states.
  final HCSeriesStatesOptionsObject? states;

  /// (Highstock) Sticky tracking of mouse events. When true, the `mouseOut`
  final dynamic stickyTracking;

  /// (Highstock) The Y axis value to serve as the base for the columns, for
  final num? threshold;

  /// (Highstock) A configuration object for the tooltip rendering of each
  final HCSeriesTooltipOptionsObject? tooltip;

  /// (Highcharts, Highstock, Gantt) When a series contains a `data` array that
  final num? turboThreshold;

  /// (Highstock) The fill color of the candlestick when the current close is
  final dynamic upColor;

  /// (Highstock) The color of the line/border of the hollow candlestick when
  final dynamic upLineColor;

  /// (Highstock) Set the initial visibility of the series.
  final dynamic visible;

  /// (Highcharts, Highstock) Defines the Axis on which the zones are applied.
  final String? zoneAxis;

  /// (Highcharts, Highstock) An array defining zones within a series. Zones
  final List<HCSeriesZonesOptionsObject>? zones;

  /// (Highstock) Whether to zoom non-cartesian series. If `chart.zooming` is
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
    if (centerInCategory != null) {
      json["centerInCategory"] = hcJsonValue(centerInCategory);
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
    if (colorByPoint != null) {
      json["colorByPoint"] = hcJsonValue(colorByPoint);
    }
    if (colorIndex != null) {
      json["colorIndex"] = colorIndex;
    }
    if (colorKey != null) {
      json["colorKey"] = colorKey;
    }
    if (colors != null) {
      json["colors"] = colors!.map((e) => hcJsonValue(e)).toList();
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
    if (getExtremesFromAll != null) {
      json["getExtremesFromAll"] = hcJsonValue(getExtremesFromAll);
    }
    if (grouping != null) {
      json["grouping"] = hcJsonValue(grouping);
    }
    if (groupPadding != null) {
      json["groupPadding"] = groupPadding;
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
    if (lineColor != null) {
      json["lineColor"] = hcJsonValue(lineColor);
    }
    if (lineWidth != null) {
      json["lineWidth"] = lineWidth;
    }
    if (linkedTo != null) {
      json["linkedTo"] = linkedTo;
    }
    if (maxPointWidth != null) {
      json["maxPointWidth"] = maxPointWidth;
    }
    if (minPointLength != null) {
      json["minPointLength"] = minPointLength;
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
    if (pointPadding != null) {
      json["pointPadding"] = pointPadding;
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
    if (pointValKey != null) {
      json["pointValKey"] = pointValKey;
    }
    if (pointWidth != null) {
      json["pointWidth"] = pointWidth;
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
    if (states != null) {
      json["states"] = states!.toJson();
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
    if (upColor != null) {
      json["upColor"] = hcJsonValue(upColor);
    }
    if (upLineColor != null) {
      json["upLineColor"] = hcJsonValue(upLineColor);
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
