part of 'hc_options.dart';

/// (Highcharts) A pictorial chart uses vector images to represents the data. The
class HCPlotPictorialOptions implements HCOption {
  const HCPlotPictorialOptions({
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
    this.colorByPoint,
    this.colorIndex,
    this.colors,
    this.cropThreshold,
    this.cursor,
    this.custom,
    this.dataLabels,
    this.dataMapping,
    this.depth,
    this.description,
    this.dragDrop,
    this.edgeColor,
    this.edgeWidth,
    this.enableMouseTracking,
    this.events,
    this.findNearestPointBy,
    this.getExtremesFromAll,
    this.grouping,
    this.groupPadding,
    this.groupZPadding,
    this.inactiveOtherPoints,
    this.includeInDataExport,
    this.keys,
    this.label,
    this.legendSymbol,
    this.legendSymbolColor,
    this.linkedTo,
    this.maxPointWidth,
    this.minPointLength,
    this.negativeColor,
    this.nullInteraction,
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
    this.pointWidth,
    this.relativeXValue,
    this.selected,
    this.showCheckbox,
    this.showInLegend,
    this.skipKeyboardNavigation,
    this.softThreshold,
    this.sonification,
    this.stacking,
    this.states,
    this.stickyTracking,
    this.threshold,
    this.tooltip,
    this.turboThreshold,
    this.visible,
    this.zoneAxis,
    this.zones,
    this.zoomEnabled,
  });

  /// (Highcharts) Accessibility options for a series.
  final HCSeriesAccessibilityOptionsObject? accessibility;

  /// (Highcharts) Allow this series' points to be selected by clicking on the
  final dynamic allowPointSelect;

  /// (Highcharts) Enable or disable the initial animation when a series is
  final dynamic animation;

  /// (Highcharts) For some series, there is a limit that shuts down animation
  final num? animationLimit;

  /// (Highcharts) Sets the color blending in the boost module.
  final String? boostBlending;

  /// (Highcharts) Set the point threshold for when a series should enter boost
  final num? boostThreshold;

  /// (Highcharts, Highstock, Gantt) The color of the border surrounding each
  final dynamic borderColor;

  /// (Highcharts, Highstock, Gantt) The width of the border surrounding each
  final num? borderWidth;

  /// (Highcharts) An additional class name to apply to the series' graphical
  final String? className;

  /// (Highcharts) Disable this option to allow series rendering in the whole
  final dynamic clip;

  /// (Highcharts) The main color of the series. In line type series it applies
  final dynamic color;

  /// (Highcharts, Highstock, Gantt) When using automatic point colors pulled
  final dynamic colorByPoint;

  /// (Highcharts) Styled mode only. A specific color index to use for the
  final num? colorIndex;

  /// (Highcharts, Highstock, Gantt) A series specific or series type specific
  final List<dynamic>? colors;

  /// (Highcharts, Highstock, Gantt) When the series contains less points than
  final num? cropThreshold;

  /// (Highcharts) You can set the cursor to "pointer" if you have click events
  final String? cursor;

  /// (Highcharts) A reserved subspace to store options and values for
  final HCDictionary? custom;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for the series data
  final dynamic dataLabels;

  /// (Highcharts) The mapping between the data table and the series data
  final HCDataMappingOptionsObject? dataMapping;

  /// (Highcharts) Depth of the columns in a 3D column chart.
  final num? depth;

  /// (Highcharts) Deprecated. Use plotOptions.series.accessibility.description
  final String? description;

  /// (Highcharts) The draggable-points module allows points to be moved around
  final HCSeriesDragDropOptionsObject? dragDrop;

  /// (Highcharts) 3D columns only. The color of the edges. Similar to
  final String? edgeColor;

  /// (Highcharts) 3D columns only. The width of the colored edges.
  final num? edgeWidth;

  /// (Highcharts) Enable or disable the mouse tracking for a specific series.
  final dynamic enableMouseTracking;

  /// (Highcharts) General event handlers for the series items. These event
  final HCSeriesEventsOptionsObject? events;

  /// (Highcharts) Determines whether the series should look for the nearest
  final String? findNearestPointBy;

  /// (Highcharts, Highstock, Gantt) Whether to use the Y extremes of the total
  final dynamic getExtremesFromAll;

  /// (Highcharts, Highstock, Gantt) Whether to group non-stacked columns or to
  final dynamic grouping;

  /// (Highcharts, Highstock, Gantt) Padding between each value groups, in x
  final num? groupPadding;

  /// (Highcharts) The spacing between columns on the Z Axis in a 3D chart.
  final num? groupZPadding;

  /// (Highcharts) Highlight only the hovered point and fade the remaining
  final dynamic inactiveOtherPoints;

  /// (Highcharts) When set to `false` will prevent the series data from being
  final dynamic includeInDataExport;

  /// (Highcharts) An array specifying which option maps to which key in the
  final List<String>? keys;

  /// (Highcharts, Highstock, Gantt) Series labels are placed as close to the
  final HCSeriesLabelOptionsObject? label;

  /// (Highcharts) What type of legend symbol to render for this series. Can be
  final String? legendSymbol;

  /// (Highcharts, Highstock, Highmaps) Defines the color of the legend symbol
  final dynamic legendSymbolColor;

  /// (Highcharts, Highstock, Gantt) The id of another series to link to.
  final String? linkedTo;

  /// (Highcharts, Highstock, Gantt) The maximum allowed pixel width for a
  final num? maxPointWidth;

  /// (Highcharts, Highstock, Gantt) The minimal height for a column or width
  final num? minPointLength;

  /// (Highcharts) The color for the parts of the graph or points that are
  final dynamic negativeColor;

  /// (Highcharts, Highstock) Whether or not data-points with the value of
  final dynamic nullInteraction;

  /// (Highcharts) Opacity of a series parts: line, fill (e.g. area) and
  final num? opacity;

  /// (Highcharts) Properties for each single point.
  final HCPlotSeriesPointOptions? point;

  /// (Highcharts) Deprecated. Use series.accessibility.point.descriptionFormat
  final dynamic pointDescriptionFormat;

  /// (Highcharts) Deprecated. Use
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

  /// (Highcharts, Highstock, Gantt) A pixel value specifying a fixed width for
  final num? pointWidth;

  /// (Highcharts, Highstock) When true, X values in the data set are relative
  final dynamic relativeXValue;

  /// (Highcharts) Whether to select the series initially. If `showCheckbox` is
  final dynamic selected;

  /// (Highcharts) If true, a checkbox is displayed next to the legend item to
  final dynamic showCheckbox;

  /// (Highcharts) Whether to display this particular series or series type in
  final dynamic showInLegend;

  /// (Highcharts) Deprecated. Use series.accessibility.keyboardNavigation
  final dynamic skipKeyboardNavigation;

  /// (Highcharts, Highstock) When this is true, the series will not cause the
  final dynamic softThreshold;

  /// (Highcharts) Sonification/audio chart options for a series.
  final HCSeriesSonificationOptions? sonification;

  /// (Highcharts, Highstock) Whether to stack the values of each series on top
  final String? stacking;

  /// (Highcharts) A collection of options for different series states.
  final HCSeriesStatesOptionsObject? states;

  /// (Highcharts) Sticky tracking of mouse events. When true, the `mouseOut`
  final dynamic stickyTracking;

  /// (Highcharts) The Y axis value to serve as the base for the columns, for
  final num? threshold;

  /// (Highcharts) A configuration object for the tooltip rendering of each
  final HCSeriesTooltipOptionsObject? tooltip;

  /// (Highcharts, Highstock, Gantt) When a series contains a `data` array that
  final num? turboThreshold;

  /// (Highcharts) Set the initial visibility of the series.
  final dynamic visible;

  /// (Highcharts, Highstock) Defines the Axis on which the zones are applied.
  final String? zoneAxis;

  /// (Highcharts, Highstock) An array defining zones within a series. Zones
  final List<HCSeriesZonesOptionsObject>? zones;

  /// (Highcharts) Whether to zoom non-cartesian series. If `chart.zooming` is
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
    if (colorByPoint != null) {
      json["colorByPoint"] = hcJsonValue(colorByPoint);
    }
    if (colorIndex != null) {
      json["colorIndex"] = colorIndex;
    }
    if (colors != null) {
      json["colors"] = colors!.map((e) => hcJsonValue(e)).toList();
    }
    if (cropThreshold != null) {
      json["cropThreshold"] = cropThreshold;
    }
    if (cursor != null) {
      json["cursor"] = cursor;
    }
    if (custom != null) {
      json["custom"] = custom!.toJson();
    }
    if (dataLabels != null) {
      json["dataLabels"] = hcJsonValue(dataLabels);
    }
    if (dataMapping != null) {
      json["dataMapping"] = dataMapping!.toJson();
    }
    if (depth != null) {
      json["depth"] = depth;
    }
    if (description != null) {
      json["description"] = description;
    }
    if (dragDrop != null) {
      json["dragDrop"] = dragDrop!.toJson();
    }
    if (edgeColor != null) {
      json["edgeColor"] = edgeColor;
    }
    if (edgeWidth != null) {
      json["edgeWidth"] = edgeWidth;
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
    if (groupZPadding != null) {
      json["groupZPadding"] = groupZPadding;
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
    if (legendSymbol != null) {
      json["legendSymbol"] = legendSymbol;
    }
    if (legendSymbolColor != null) {
      json["legendSymbolColor"] = hcJsonValue(legendSymbolColor);
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
    if (negativeColor != null) {
      json["negativeColor"] = hcJsonValue(negativeColor);
    }
    if (nullInteraction != null) {
      json["nullInteraction"] = hcJsonValue(nullInteraction);
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
    if (pointWidth != null) {
      json["pointWidth"] = pointWidth;
    }
    if (relativeXValue != null) {
      json["relativeXValue"] = hcJsonValue(relativeXValue);
    }
    if (selected != null) {
      json["selected"] = hcJsonValue(selected);
    }
    if (showCheckbox != null) {
      json["showCheckbox"] = hcJsonValue(showCheckbox);
    }
    if (showInLegend != null) {
      json["showInLegend"] = hcJsonValue(showInLegend);
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
