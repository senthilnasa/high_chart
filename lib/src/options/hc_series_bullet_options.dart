part of 'hc_options.dart';

/// (Highcharts) A `bullet` series. If the type option is not specified, it
class HCSeriesBulletOptions implements HCOption {
  const HCSeriesBulletOptions({
    this.data,
    this.dataParser,
    this.dataURL,
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
    this.colorByPoint,
    this.colorIndex,
    this.colorKey,
    this.colors,
    this.crisp,
    this.cropThreshold,
    this.cursor,
    this.custom,
    this.dashStyle,
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
    this.pointWidth,
    this.relativeXValue,
    this.selected,
    this.shadow,
    this.showCheckbox,
    this.showInLegend,
    this.skipKeyboardNavigation,
    this.softThreshold,
    this.sonification,
    this.stacking,
    this.states,
    this.stickyTracking,
    this.targetOptions,
    this.threshold,
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

  /// (Highcharts) An array of data points for the series. For the `bullet`
  final List<dynamic>? data;

  /// Not available
  final dynamic dataParser;

  /// Not available
  final dynamic dataURL;

  /// (Highcharts, Highstock, Highmaps, Gantt) This property is only in
  final String? type;

  /// (Highcharts) Accessibility options for a series.
  final HCSeriesAccessibilityOptionsObject? accessibility;

  /// (Highcharts) Allow this series' points to be selected by clicking on
  final dynamic allowPointSelect;

  /// (Highcharts) Enable or disable the initial animation when a series is
  final dynamic animation;

  /// (Highcharts) For some series, there is a limit that shuts down
  final num? animationLimit;

  /// (Highcharts, Highstock, Gantt) The color of the border surrounding
  final dynamic borderColor;

  /// (Highcharts, Highstock, Gantt) The corner radius of the border
  final dynamic borderRadius;

  /// (Highcharts, Highstock, Gantt) The width of the border surrounding
  final num? borderWidth;

  /// (Highcharts, Highstock, Gantt) When `true`, the columns will center
  final dynamic centerInCategory;

  /// (Highcharts) An additional class name to apply to the series'
  final String? className;

  /// (Highcharts) Disable this option to allow series rendering in the
  final dynamic clip;

  /// (Highcharts) The main color of the series. In line type series it
  final dynamic color;

  /// (Highcharts, Highstock, Gantt) When using automatic point colors
  final dynamic colorByPoint;

  /// (Highcharts) Styled mode only. A specific color index to use for the
  final num? colorIndex;

  /// (Highcharts, Highstock, Highmaps) Determines what data value should
  final String? colorKey;

  /// (Highcharts, Highstock, Gantt) A series specific or series type
  final List<dynamic>? colors;

  /// (Highcharts, Highstock, Gantt) When true, each point or column edge
  final dynamic crisp;

  /// (Highcharts, Highstock, Gantt) When the series contains less points
  final num? cropThreshold;

  /// (Highcharts) You can set the cursor to "pointer" if you have click
  final String? cursor;

  /// (Highcharts) A reserved subspace to store options and values for
  final HCDictionary? custom;

  /// (Highcharts) Name of the dash style to use for the graph, or for some
  final String? dashStyle;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for the series data
  final dynamic dataLabels;

  /// (Highcharts) The mapping between the data table and the series data
  final HCDataMappingOptionsObject? dataMapping;

  /// (Highcharts) Depth of the columns in a 3D column chart.
  final num? depth;

  /// (Highcharts) Deprecated. Use
  final String? description;

  /// (Highcharts) The draggable-points module allows points to be moved
  final HCSeriesDragDropOptionsObject? dragDrop;

  /// (Highcharts) 3D columns only. The color of the edges. Similar to
  final String? edgeColor;

  /// (Highcharts) 3D columns only. The width of the colored edges.
  final num? edgeWidth;

  /// (Highcharts) Enable or disable the mouse tracking for a specific
  final dynamic enableMouseTracking;

  /// (Highcharts) General event handlers for the series items. These event
  final HCSeriesEventsOptionsObject? events;

  /// (Highcharts) Determines whether the series should look for the
  final String? findNearestPointBy;

  /// (Highcharts, Highstock, Gantt) Whether to use the Y extremes of the
  final dynamic getExtremesFromAll;

  /// (Highcharts, Highstock, Gantt) Whether to group non-stacked columns
  final dynamic grouping;

  /// (Highcharts, Highstock, Gantt) Padding between each value groups, in
  final num? groupPadding;

  /// (Highcharts) The spacing between columns on the Z Axis in a 3D chart.
  final num? groupZPadding;

  /// (Highcharts) Highlight only the hovered point and fade the remaining
  final dynamic inactiveOtherPoints;

  /// (Highcharts) When set to `false` will prevent the series data from
  final dynamic includeInDataExport;

  /// (Highcharts) An array specifying which option maps to which key in
  final List<String>? keys;

  /// (Highcharts, Highstock, Gantt) Series labels are placed as close to
  final HCSeriesLabelOptionsObject? label;

  /// (Highcharts) What type of legend symbol to render for this series.
  final String? legendSymbol;

  /// (Highcharts, Highstock, Highmaps) Defines the color of the legend
  final dynamic legendSymbolColor;

  /// (Highcharts, Highstock, Gantt) The id of another series to link to.
  final String? linkedTo;

  /// (Highcharts, Highstock, Gantt) The maximum allowed pixel width for a
  final num? maxPointWidth;

  /// (Highcharts, Highstock, Gantt) The minimal height for a column or
  final num? minPointLength;

  /// (Highcharts) The color for the parts of the graph or points that are
  final dynamic negativeColor;

  /// (Highcharts, Highstock) Whether or not data-points with the value of
  final dynamic nullInteraction;

  /// (Highcharts) Options for the _Series on point_ feature. Only `pie`
  final dynamic onPoint;

  /// (Highcharts) Opacity of a series parts: line, fill (e.g. area) and
  final num? opacity;

  /// (Highcharts) Properties for each single point.
  final HCPlotSeriesPointOptions? point;

  /// (Highcharts) Deprecated. Use
  final dynamic pointDescriptionFormat;

  /// (Highcharts) Deprecated. Use
  final dynamic pointDescriptionFormatter;

  /// (Highcharts, Highstock, Gantt) If no x values are given for the
  final num? pointInterval;

  /// (Highcharts, Highstock, Gantt) On datetime series, this allows for
  final String? pointIntervalUnit;

  /// (Highcharts, Highstock, Gantt) Padding between each column or bar, in
  final num? pointPadding;

  /// (Highcharts, Highstock, Gantt) Possible values: `"on"`, `"between"`,
  final dynamic pointPlacement;

  /// (Highcharts, Highstock, Gantt) The X axis range that each point is
  final num? pointRange;

  /// (Highcharts, Highstock, Gantt) If no x values are given for the
  final dynamic pointStart;

  /// (Highcharts, Highstock, Gantt) A pixel value specifying a fixed width
  final num? pointWidth;

  /// (Highcharts, Highstock) When true, X values in the data set are
  final dynamic relativeXValue;

  /// (Highcharts) Whether to select the series initially. If
  final dynamic selected;

  /// (Highcharts) Whether to apply a drop shadow to the graph line. Since
  final dynamic shadow;

  /// (Highcharts) If true, a checkbox is displayed next to the legend item
  final dynamic showCheckbox;

  /// (Highcharts) Whether to display this particular series or series type
  final dynamic showInLegend;

  /// (Highcharts) Deprecated. Use series.accessibility.keyboardNavigation
  final dynamic skipKeyboardNavigation;

  /// (Highcharts, Highstock) When this is true, the series will not cause
  final dynamic softThreshold;

  /// (Highcharts) Sonification/audio chart options for a series.
  final HCSeriesSonificationOptions? sonification;

  /// (Highcharts, Highstock) Whether to stack the values of each series on
  final String? stacking;

  /// (Highcharts) A collection of options for different series states.
  final HCSeriesStatesOptionsObject? states;

  /// (Highcharts) Sticky tracking of mouse events. When true, the
  final dynamic stickyTracking;

  /// (Highcharts) All options related with look and positioning of
  final HCPlotBulletTargetOptions? targetOptions;

  /// (Highcharts) The Y axis value to serve as the base for the columns,
  final num? threshold;

  /// (Highcharts) A configuration object for the tooltip rendering of each
  final HCSeriesTooltipOptionsObject? tooltip;

  /// (Highcharts, Highstock, Gantt) When a series contains a `data` array
  final num? turboThreshold;

  /// (Highcharts) Set the initial visibility of the series.
  final dynamic visible;

  /// (Highcharts, Highstock) Defines the Axis on which the zones are
  final String? zoneAxis;

  /// (Highcharts, Highstock) An array defining zones within a series.
  final List<HCSeriesZonesOptionsObject>? zones;

  /// (Highcharts) Whether to zoom non-cartesian series. If `chart.zooming`
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
      json["data"] = data!.map((e) => hcJsonValue(e)).toList();
    }
    if (dataParser != null) {
      json["dataParser"] = hcJsonValue(dataParser);
    }
    if (dataURL != null) {
      json["dataURL"] = hcJsonValue(dataURL);
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
      json["borderRadius"] = hcJsonValue(borderRadius);
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
    if (crisp != null) {
      json["crisp"] = hcJsonValue(crisp);
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
    if (dashStyle != null) {
      json["dashStyle"] = dashStyle;
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
    if (targetOptions != null) {
      json["targetOptions"] = targetOptions!.toJson();
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
