part of 'hc_options.dart';

/// (Highcharts, Highstock, Gantt) An `xrange` series. If the type option is not
class HCSeriesXrangeOptions implements HCOption {
  const HCSeriesXrangeOptions({
    this.data,
    this.depth,
    this.edgeColor,
    this.edgeWidth,
    this.type,
    this.accessibility,
    this.allowPointSelect,
    this.animation,
    this.animationLimit,
    this.borderColor,
    this.borderRadius,
    this.borderWidth,
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
    this.connectors,
    this.cumulative,
    this.cumulativeStart,
    this.cursor,
    this.custom,
    this.dashStyle,
    this.dataGrouping,
    this.dataLabels,
    this.dataMapping,
    this.description,
    this.dragDrop,
    this.enableMouseTracking,
    this.events,
    this.grouping,
    this.groupPadding,
    this.groupZPadding,
    this.inactiveOtherPoints,
    this.includeInDataExport,
    this.keys,
    this.label,
    this.lastPrice,
    this.lastVisiblePrice,
    this.legendSymbol,
    this.legendSymbolColor,
    this.linkedTo,
    this.maxPointWidth,
    this.minPointLength,
    this.navigatorOptions,
    this.nullInteraction,
    this.onPoint,
    this.opacity,
    this.partialFill,
    this.point,
    this.pointDescriptionFormat,
    this.pointDescriptionFormatter,
    this.pointPadding,
    this.pointRange,
    this.pointWidth,
    this.relativeXValue,
    this.selected,
    this.shadow,
    this.showCheckbox,
    this.showInLegend,
    this.showInNavigator,
    this.skipKeyboardNavigation,
    this.sonification,
    this.states,
    this.stickyTracking,
    this.tooltip,
    this.turboThreshold,
    this.visible,
    this.zoneAxis,
    this.zones,
    this.zoomEnabled,
    this.id,
    this.index,
    this.legendIndex,
    this.mapData,
    this.name,
    this.stack,
    this.xAxis,
    this.yAxis,
    this.zIndex,
  });

  /// (Highcharts, Highstock, Gantt) An array of data points for the series.
  final List<HCXrangePointOptionsObject>? data;

  /// Not available
  final dynamic depth;

  /// Not available
  final dynamic edgeColor;

  /// Not available
  final dynamic edgeWidth;

  /// (Highcharts, Highstock, Highmaps, Gantt) This property is only in
  final String? type;

  /// (Highcharts, Highstock, Gantt) Accessibility options for a series.
  final HCSeriesAccessibilityOptionsObject? accessibility;

  /// (Highcharts, Highstock, Gantt) Allow this series' points to be
  final dynamic allowPointSelect;

  /// (Highcharts, Highstock, Gantt) Enable or disable the initial
  final dynamic animation;

  /// (Highcharts, Highstock, Gantt) For some series, there is a limit that
  final num? animationLimit;

  /// (Highcharts, Highstock, Gantt) The color of the border surrounding
  final dynamic borderColor;

  /// (Highcharts, Highstock, Gantt) The corner radius of the border
  final num? borderRadius;

  /// (Highcharts, Highstock, Gantt) The width of the border surrounding
  final num? borderWidth;

  /// (Highcharts, Highstock, Gantt) When `true`, the columns will center
  final dynamic centerInCategory;

  /// (Highcharts, Highstock, Gantt) An additional class name to apply to
  final String? className;

  /// (Highcharts, Highstock, Gantt) Disable this option to allow series
  final dynamic clip;

  /// (Highcharts, Highstock, Gantt) The main color of the series. In line
  final dynamic color;

  /// (Highcharts, Highstock, Highmaps) When using dual or multiple color
  final dynamic colorAxis;

  /// (Highcharts, Highstock, Gantt) In an X-range series, this option
  final dynamic colorByPoint;

  /// (Highcharts, Highstock, Gantt) Styled mode only. A specific color
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

  /// (Gantt) Override Pathfinder connector options for a series. Requires
  final HCSeriesConnectorsOptionsObject? connectors;

  /// (Highstock) Cumulative Sum feature replaces points' values with the
  final dynamic cumulative;

  /// (Highstock) Defines if cumulation should start from the first point
  final dynamic cumulativeStart;

  /// (Highcharts, Highstock, Gantt) You can set the cursor to "pointer" if
  final String? cursor;

  /// (Highcharts, Highstock, Gantt) A reserved subspace to store options
  final HCDictionary? custom;

  /// (Highcharts, Highstock, Gantt) Name of the dash style to use for the
  final String? dashStyle;

  /// (Highstock) Data grouping is the concept of sampling the data values
  final HCDataGroupingOptionsObject? dataGrouping;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for the series data
  final dynamic dataLabels;

  /// (Highcharts, Highstock, Gantt) The mapping between the data table and
  final HCDataMappingOptionsObject? dataMapping;

  /// (Highcharts, Highstock, Gantt) Deprecated. Use
  final String? description;

  /// (Highcharts, Highstock, Gantt) The draggable-points module allows
  final HCSeriesDragDropOptionsObject? dragDrop;

  /// (Highcharts, Highstock, Gantt) Enable or disable the mouse tracking
  final dynamic enableMouseTracking;

  /// (Highcharts, Highstock, Gantt) General event handlers for the series
  final HCSeriesEventsOptionsObject? events;

  /// (Highcharts, Highstock, Gantt) Whether to group non-stacked columns
  final dynamic grouping;

  /// (Highcharts, Highstock, Gantt) Padding between each value groups, in
  final num? groupPadding;

  /// (Highcharts) The spacing between columns on the Z Axis in a 3D chart.
  final num? groupZPadding;

  /// (Highcharts, Highstock, Gantt) Highlight only the hovered point and
  final dynamic inactiveOtherPoints;

  /// (Highcharts, Highstock, Gantt) When set to `false` will prevent the
  final dynamic includeInDataExport;

  /// (Highcharts, Highstock, Gantt) An array specifying which option maps
  final List<String>? keys;

  /// (Highcharts, Highstock, Gantt) Series labels are placed as close to
  final HCSeriesLabelOptionsObject? label;

  /// (Highstock) The line marks the last price from all points.
  final HCSeriesLastPriceOptionsObject? lastPrice;

  /// (Highstock) The line marks the last price from visible range of
  final HCSeriesLastVisiblePriceOptionsObject? lastVisiblePrice;

  /// (Highcharts, Highstock, Gantt) What type of legend symbol to render
  final String? legendSymbol;

  /// (Highcharts, Highstock, Highmaps) Defines the color of the legend
  final dynamic legendSymbolColor;

  /// (Highcharts, Highstock, Gantt) The id of another series to link to.
  final String? linkedTo;

  /// (Highcharts, Highstock, Gantt) The maximum allowed pixel width for a
  final num? maxPointWidth;

  /// (Highcharts, Highstock, Gantt) The minimal height for a column or
  final num? minPointLength;

  /// (Highstock) Options for the corresponding navigator series if
  final HCPlotSeriesOptions? navigatorOptions;

  /// (Highcharts, Highstock) Whether or not data-points with the value of
  final dynamic nullInteraction;

  /// (Highcharts, Highstock, Gantt) Options for the _Series on point_
  final dynamic onPoint;

  /// (Highcharts, Highstock, Gantt) Opacity of a series parts: line, fill
  final num? opacity;

  /// (Highcharts, Highstock, Gantt) A partial fill for each point,
  final HCPlotXrangePartialFillOptions? partialFill;

  /// (Highcharts, Highstock, Gantt) Properties for each single point.
  final HCPlotSeriesPointOptions? point;

  /// (Highcharts, Highstock, Gantt) Deprecated. Use
  final dynamic pointDescriptionFormat;

  /// (Highcharts, Highstock, Gantt) Deprecated. Use
  final dynamic pointDescriptionFormatter;

  /// (Highcharts, Highstock, Gantt) Padding between each column or bar, in
  final num? pointPadding;

  final num? pointRange;

  /// (Highcharts, Highstock, Gantt) A pixel value specifying a fixed width
  final num? pointWidth;

  /// (Highcharts, Highstock) When true, X values in the data set are
  final dynamic relativeXValue;

  /// (Highcharts, Highstock, Gantt) Whether to select the series
  final dynamic selected;

  /// (Highcharts, Highstock, Gantt) Whether to apply a drop shadow to the
  final dynamic shadow;

  /// (Highcharts, Highstock, Gantt) If true, a checkbox is displayed next
  final dynamic showCheckbox;

  /// (Highcharts, Highstock, Gantt) Whether to display this particular
  final dynamic showInLegend;

  /// (Highstock) Whether or not to show the series in the navigator. Takes
  final dynamic showInNavigator;

  /// (Highcharts, Highstock, Gantt) Deprecated. Use
  final dynamic skipKeyboardNavigation;

  /// (Highcharts, Highstock, Gantt) Sonification/audio chart options for a
  final HCSeriesSonificationOptions? sonification;

  /// (Highcharts, Highstock, Gantt) A collection of options for different
  final HCSeriesStatesOptionsObject? states;

  /// (Highcharts, Highstock, Gantt) Sticky tracking of mouse events. When
  final dynamic stickyTracking;

  /// (Highcharts, Highstock, Gantt) A configuration object for the tooltip
  final HCSeriesTooltipOptionsObject? tooltip;

  /// (Highcharts, Highstock, Gantt) When a series contains a `data` array
  final num? turboThreshold;

  /// (Highcharts, Highstock, Gantt) Set the initial visibility of the
  final dynamic visible;

  /// (Highcharts, Highstock) Defines the Axis on which the zones are
  final String? zoneAxis;

  /// (Highcharts, Highstock) An array defining zones within a series.
  final List<HCSeriesZonesOptionsObject>? zones;

  /// (Highcharts, Highstock, Gantt) Whether to zoom non-cartesian series.
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

  /// (Highcharts, Highstock) Define the visual z index of the series.
  final num? zIndex;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (data != null) {
      json["data"] = data!.map((e) => e.toJson()).toList();
    }
    if (depth != null) {
      json["depth"] = hcJsonValue(depth);
    }
    if (edgeColor != null) {
      json["edgeColor"] = hcJsonValue(edgeColor);
    }
    if (edgeWidth != null) {
      json["edgeWidth"] = hcJsonValue(edgeWidth);
    }
    if (type != null) {
      json["type"] = type;
    }
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
    if (borderColor != null) {
      json["borderColor"] = hcJsonValue(borderColor);
    }
    if (borderRadius != null) {
      json["borderRadius"] = borderRadius;
    }
    if (borderWidth != null) {
      json["borderWidth"] = borderWidth;
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
    if (connectors != null) {
      json["connectors"] = connectors!.toJson();
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
    if (nullInteraction != null) {
      json["nullInteraction"] = hcJsonValue(nullInteraction);
    }
    if (onPoint != null) {
      json["onPoint"] = hcJsonValue(onPoint);
    }
    if (opacity != null) {
      json["opacity"] = opacity;
    }
    if (partialFill != null) {
      json["partialFill"] = partialFill!.toJson();
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
    if (pointPadding != null) {
      json["pointPadding"] = pointPadding;
    }
    if (pointRange != null) {
      json["pointRange"] = pointRange;
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
    if (sonification != null) {
      json["sonification"] = sonification!.toJson();
    }
    if (states != null) {
      json["states"] = states!.toJson();
    }
    if (stickyTracking != null) {
      json["stickyTracking"] = hcJsonValue(stickyTracking);
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
    if (zIndex != null) {
      json["zIndex"] = zIndex;
    }
    return json;
  }
}
