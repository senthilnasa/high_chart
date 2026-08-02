part of 'hc_options.dart';

/// (Highstock) Flags are used to mark events in stock charts. They can be
class HCPlotFlagsOptions implements HCOption {
  const HCPlotFlagsOptions({
    this.accessibility,
    this.allowOverlapX,
    this.allowPointSelect,
    this.animationLimit,
    this.boostBlending,
    this.boostThreshold,
    this.borderRadius,
    this.centerInCategory,
    this.className,
    this.clip,
    this.color,
    this.colorAxis,
    this.colorIndex,
    this.colorKey,
    this.colors,
    this.compare,
    this.compareBase,
    this.compareStart,
    this.crisp,
    this.cumulative,
    this.cumulativeStart,
    this.cursor,
    this.custom,
    this.dashStyle,
    this.dataLabels,
    this.dataMapping,
    this.dataSorting,
    this.description,
    this.dragDrop,
    this.enableMouseTracking,
    this.events,
    this.fillColor,
    this.findNearestPointBy,
    this.getExtremesFromAll,
    this.grouping,
    this.groupPadding,
    this.height,
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
    this.onKey,
    this.onPoint,
    this.onSeries,
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
    this.shape,
    this.showCheckbox,
    this.showInLegend,
    this.showInNavigator,
    this.skipKeyboardNavigation,
    this.softThreshold,
    this.sonification,
    this.stackDistance,
    this.stacking,
    this.states,
    this.stickyTracking,
    this.style,
    this.textAlign,
    this.title,
    this.tooltip,
    this.useHTML,
    this.visible,
    this.width,
    this.y,
    this.zoneAxis,
    this.zones,
    this.zoomEnabled,
  });

  /// (Highstock) Accessibility options for a series.
  final HCSeriesAccessibilityOptionsObject? accessibility;

  /// (Highstock) Whether the flags are allowed to overlap sideways. If
  final dynamic allowOverlapX;

  /// (Highstock) Allow this series' points to be selected by clicking on
  final dynamic allowPointSelect;

  /// (Highstock) For some series, there is a limit that shuts down
  final num? animationLimit;

  /// (Highstock) Sets the color blending in the boost module.
  final String? boostBlending;

  /// (Highstock) Set the point threshold for when a series should enter
  final num? boostThreshold;

  /// (Highcharts, Highstock, Gantt) The corner radius of the border
  final num? borderRadius;

  /// (Highcharts, Highstock, Gantt) When `true`, the columns will center
  final dynamic centerInCategory;

  /// (Highstock) An additional class name to apply to the series'
  final String? className;

  /// (Highstock) Disable this option to allow series rendering in the
  final dynamic clip;

  /// (Highstock) The main color of the series. In line type series it
  final dynamic color;

  /// (Highcharts, Highstock, Highmaps) When using dual or multiple color
  final dynamic colorAxis;

  /// (Highstock) Styled mode only. A specific color index to use for the
  final num? colorIndex;

  /// (Highcharts, Highstock, Highmaps) Determines what data value should
  final String? colorKey;

  /// (Highcharts, Highstock, Gantt) A series specific or series type
  final List<dynamic>? colors;

  /// (Highstock) Compare the values of the series against the first
  final String? compare;

  /// (Highstock) When compare is `percent`, this option dictates whether
  final dynamic compareBase;

  /// (Highstock) Defines if comparison should start from the first point
  final dynamic compareStart;

  /// (Highcharts, Highstock, Gantt) When true, each point or column edge
  final dynamic crisp;

  /// (Highstock) Cumulative Sum feature replaces points' values with the
  final dynamic cumulative;

  /// (Highstock) Defines if cumulation should start from the first point
  final dynamic cumulativeStart;

  /// (Highstock) You can set the cursor to "pointer" if you have click
  final String? cursor;

  /// (Highstock) A reserved subspace to store options and values for
  final HCDictionary? custom;

  /// (Highstock) Name of the dash style to use for the graph, or for some
  final String? dashStyle;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for the series data
  final dynamic dataLabels;

  /// (Highstock) The mapping between the data table and the series data
  final HCDataMappingOptionsObject? dataMapping;

  /// (Highcharts, Highstock) Options for series data sorting.
  final HCPlotFlagsDataSortingOptions? dataSorting;

  /// (Highstock) Deprecated. Use
  final String? description;

  /// (Highstock) The draggable-points module allows points to be moved
  final HCSeriesDragDropOptionsObject? dragDrop;

  /// (Highstock) Enable or disable the mouse tracking for a specific
  final dynamic enableMouseTracking;

  /// (Highstock) General event handlers for the series items. These event
  final HCSeriesEventsOptionsObject? events;

  /// (Highstock) The fill color for the flags.
  final dynamic fillColor;

  /// (Highstock) Determines whether the series should look for the nearest
  final String? findNearestPointBy;

  /// (Highcharts, Highstock, Gantt) Whether to use the Y extremes of the
  final dynamic getExtremesFromAll;

  /// (Highcharts, Highstock, Gantt) Whether to group non-stacked columns
  final dynamic grouping;

  /// (Highcharts, Highstock, Gantt) Padding between each value groups, in
  final num? groupPadding;

  /// (Highstock) Fixed height of the flag's shape. By default, height is
  final num? height;

  /// (Highstock) Highlight only the hovered point and fade the remaining
  final dynamic inactiveOtherPoints;

  /// (Highstock) When set to `false` will prevent the series data from
  final dynamic includeInDataExport;

  /// (Highstock) An array specifying which option maps to which key in the
  final List<String>? keys;

  /// (Highcharts, Highstock, Gantt) Series labels are placed as close to
  final HCSeriesLabelOptionsObject? label;

  /// (Highstock) The line marks the last price from all points.
  final HCSeriesLastPriceOptionsObject? lastPrice;

  /// (Highstock) The line marks the last price from visible range of
  final HCSeriesLastVisiblePriceOptionsObject? lastVisiblePrice;

  /// (Highstock) What type of legend symbol to render for this series. For
  final String? legendSymbol;

  /// (Highcharts, Highstock, Highmaps) Defines the color of the legend
  final dynamic legendSymbolColor;

  /// (Highstock) The color of the line/border of the flag.
  final dynamic lineColor;

  /// (Highstock) The pixel width of the flag's line/border.
  final num? lineWidth;

  /// (Highcharts, Highstock, Gantt) The id of another series to link to.
  final String? linkedTo;

  /// (Highcharts, Highstock, Gantt) The maximum allowed pixel width for a
  final num? maxPointWidth;

  /// (Highcharts, Highstock, Gantt) The minimal height for a column or
  final num? minPointLength;

  /// (Highstock) Options for the corresponding navigator series if
  final HCPlotSeriesOptions? navigatorOptions;

  /// (Highstock) The color for the parts of the graph or points that are
  final dynamic negativeColor;

  /// (Highcharts, Highstock) Whether or not data-points with the value of
  final dynamic nullInteraction;

  /// (Highstock) In case the flag is placed on a series, on what point key
  final String? onKey;

  /// (Highstock) Options for the _Series on point_ feature. Only `pie` and
  final dynamic onPoint;

  /// (Highstock) The id of the series that the flags should be drawn on.
  final String? onSeries;

  /// (Highstock) Opacity of a series parts: line, fill (e.g. area) and
  final num? opacity;

  /// (Highstock) Properties for each single point.
  final HCPlotSeriesPointOptions? point;

  /// (Highstock) Deprecated. Use
  final dynamic pointDescriptionFormat;

  /// (Highstock) Deprecated. Use
  final dynamic pointDescriptionFormatter;

  /// (Highcharts, Highstock, Gantt) If no x values are given for the
  final num? pointInterval;

  /// (Highcharts, Highstock, Gantt) On datetime series, this allows for
  final String? pointIntervalUnit;

  /// (Highcharts, Highstock, Gantt) Possible values: `"on"`, `"between"`,
  final dynamic pointPlacement;

  /// (Highcharts, Highstock, Gantt) The X axis range that each point is
  final num? pointRange;

  /// (Highcharts, Highstock, Gantt) If no x values are given for the
  final dynamic pointStart;

  /// (Highcharts, Highstock) When true, X values in the data set are
  final dynamic relativeXValue;

  /// (Highstock) Whether to select the series initially. If `showCheckbox`
  final dynamic selected;

  /// (Highstock) Whether to apply a drop shadow to the graph line. Since
  final dynamic shadow;

  /// (Highstock) The shape of the marker. Can be one of "flag",
  final String? shape;

  /// (Highstock) If true, a checkbox is displayed next to the legend item
  final dynamic showCheckbox;

  /// (Highstock) Whether to display this particular series or series type
  final dynamic showInLegend;

  /// (Highstock) Whether or not to show the series in the navigator. Takes
  final dynamic showInNavigator;

  /// (Highstock) Deprecated. Use series.accessibility.keyboardNavigation
  final dynamic skipKeyboardNavigation;

  /// (Highcharts, Highstock) When this is true, the series will not cause
  final dynamic softThreshold;

  /// (Highstock) Sonification/audio chart options for a series.
  final HCSeriesSonificationOptions? sonification;

  /// (Highstock) When multiple flags in the same series fall on the same
  final num? stackDistance;

  /// (Highcharts, Highstock) Whether to stack the values of each series on
  final String? stacking;

  /// (Highstock) A collection of options for different series states.
  final HCSeriesStatesOptionsObject? states;

  /// (Highstock) Sticky tracking of mouse events. When true, the
  final dynamic stickyTracking;

  /// (Highstock) The text styles of the flag.
  final HCCSSObject? style;

  /// (Highstock) Text alignment for the text inside the flag.
  final String? textAlign;

  /// (Highstock) The text to display on each flag. This can be defined on
  final String? title;

  /// (Highstock) Specific tooltip options for flag series. Flag series
  final HCSeriesTooltipOptionsObject? tooltip;

  /// (Highstock) Whether to use HTML to render the flag texts. Using HTML
  final dynamic useHTML;

  /// (Highstock) Set the initial visibility of the series.
  final dynamic visible;

  /// (Highstock) Fixed width of the flag's shape. By default, width is
  final num? width;

  /// (Highstock) The y position of the top left corner of the flag
  final num? y;

  /// (Highcharts, Highstock) Defines the Axis on which the zones are
  final String? zoneAxis;

  /// (Highcharts, Highstock) An array defining zones within a series.
  final List<HCSeriesZonesOptionsObject>? zones;

  /// (Highstock) Whether to zoom non-cartesian series. If `chart.zooming`
  final dynamic zoomEnabled;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (accessibility != null) {
      json["accessibility"] = accessibility!.toJson();
    }
    if (allowOverlapX != null) {
      json["allowOverlapX"] = hcJsonValue(allowOverlapX);
    }
    if (allowPointSelect != null) {
      json["allowPointSelect"] = hcJsonValue(allowPointSelect);
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
    if (borderRadius != null) {
      json["borderRadius"] = borderRadius;
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
    if (crisp != null) {
      json["crisp"] = hcJsonValue(crisp);
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
    if (height != null) {
      json["height"] = height;
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
    if (onKey != null) {
      json["onKey"] = onKey;
    }
    if (onPoint != null) {
      json["onPoint"] = hcJsonValue(onPoint);
    }
    if (onSeries != null) {
      json["onSeries"] = onSeries;
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
    if (shape != null) {
      json["shape"] = shape;
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
    if (stackDistance != null) {
      json["stackDistance"] = stackDistance;
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
    if (style != null) {
      json["style"] = style!.toJson();
    }
    if (textAlign != null) {
      json["textAlign"] = textAlign;
    }
    if (title != null) {
      json["title"] = title;
    }
    if (tooltip != null) {
      json["tooltip"] = tooltip!.toJson();
    }
    if (useHTML != null) {
      json["useHTML"] = hcJsonValue(useHTML);
    }
    if (visible != null) {
      json["visible"] = hcJsonValue(visible);
    }
    if (width != null) {
      json["width"] = width;
    }
    if (y != null) {
      json["y"] = y;
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
