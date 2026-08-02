part of 'hc_options.dart';

/// (Highmaps) A `mapbubble` series. If the type option is not specified, it
class HCSeriesMapbubbleOptions implements HCOption {
  const HCSeriesMapbubbleOptions({
    this.data,
    this.dataParser,
    this.dataURL,
    this.type,
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
    this.cursor,
    this.custom,
    this.dashStyle,
    this.dataLabels,
    this.dataMapping,
    this.description,
    this.displayNegative,
    this.dragDrop,
    this.enableMouseTracking,
    this.events,
    this.findNearestPointBy,
    this.inactiveOtherPoints,
    this.includeInDataExport,
    this.joinBy,
    this.keys,
    this.legendSymbol,
    this.linecap,
    this.lineColor,
    this.lineWidth,
    this.marker,
    this.maxSize,
    this.minSize,
    this.onPoint,
    this.opacity,
    this.point,
    this.pointDescriptionFormat,
    this.pointDescriptionFormatter,
    this.selected,
    this.showCheckbox,
    this.showInLegend,
    this.sizeBy,
    this.skipKeyboardNavigation,
    this.sonification,
    this.states,
    this.stickyTracking,
    this.tooltip,
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

  /// (Highmaps) An array of data points for the series. For the
  final List<dynamic>? data;

  /// Not available
  final dynamic dataParser;

  /// Not available
  final dynamic dataURL;

  /// (Highcharts, Highstock, Highmaps, Gantt) This property is only in
  final String? type;

  /// (Highmaps) Accessibility options for a series.
  final HCSeriesAccessibilityOptionsObject? accessibility;

  /// (Highmaps) Allow this series' points to be selected by clicking on
  final dynamic allowPointSelect;

  /// (Highmaps) Enable or disable the initial animation when a series is
  final dynamic animation;

  /// (Highmaps) If there are more points in the series than the
  final num? animationLimit;

  /// (Highmaps) Sets the color blending in the boost module.
  final String? boostBlending;

  /// (Highmaps) Set the point threshold for when a series should enter
  final num? boostThreshold;

  /// (Highmaps) The border color of the map areas.
  final dynamic borderColor;

  /// (Highmaps) The border width of each map area.
  final num? borderWidth;

  /// (Highmaps) An additional class name to apply to the series' graphical
  final String? className;

  /// (Highmaps) Disable this option to allow series rendering in the whole
  final dynamic clip;

  /// (Highmaps) The main color of the series. This color affects both the
  final dynamic color;

  /// (Highcharts, Highstock, Highmaps) When using dual or multiple color
  final dynamic colorAxis;

  /// (Highmaps) Styled mode only. A specific color index to use for the
  final num? colorIndex;

  /// (Highcharts, Highstock, Highmaps) Determines what data value should
  final String? colorKey;

  /// (Highmaps) You can set the cursor to "pointer" if you have click
  final String? cursor;

  /// (Highmaps) A reserved subspace to store options and values for
  final HCDictionary? custom;

  /// (Highmaps) Name of the dash style to use for the graph, or for some
  final String? dashStyle;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for the series data
  final dynamic dataLabels;

  /// (Highmaps) The mapping between the data table and the series data
  final HCDataMappingOptionsObject? dataMapping;

  /// (Highmaps) Deprecated. Use
  final String? description;

  /// (Highmaps) Whether to display negative sized bubbles. The threshold
  final dynamic displayNegative;

  /// (Highmaps) The draggable-points module allows points to be moved
  final HCSeriesDragDropOptionsObject? dragDrop;

  /// (Highmaps) Enable or disable the mouse tracking for a specific
  final dynamic enableMouseTracking;

  /// (Highmaps) General event handlers for the series items. These event
  final HCSeriesEventsOptionsObject? events;

  /// (Highmaps) Determines whether the series should look for the nearest
  final String? findNearestPointBy;

  /// (Highmaps) Highlight only the hovered point and fade the remaining
  final dynamic inactiveOtherPoints;

  /// (Highmaps) When set to `false` will prevent the series data from
  final dynamic includeInDataExport;

  /// (Highmaps) What property to join the `mapData` to the value data. For
  final dynamic joinBy;

  /// (Highmaps) An array specifying which option maps to which key in the
  final List<String>? keys;

  /// (Highmaps) What type of legend symbol to render for this series. Can
  final String? legendSymbol;

  /// (Highmaps) The line cap used for line ends and line joins on the
  final String? linecap;

  /// (Highmaps) Color of the line connecting bubbles. The default value is
  final dynamic lineColor;

  /// (Highmaps) Pixel width of the line connecting bubbles.
  final num? lineWidth;

  /// (Highmaps) Options for the point markers of line and scatter-like
  final HCPointMarkerOptionsObject? marker;

  /// (Highmaps) Maximum bubble size. Bubbles will automatically size
  final dynamic maxSize;

  /// (Highmaps) Minimum bubble size. Bubbles will automatically size
  final dynamic minSize;

  /// (Highmaps) Options for the _Series on point_ feature. Only `pie` and
  final dynamic onPoint;

  /// (Highmaps) Opacity of a series parts: line, fill (e.g. area) and
  final num? opacity;

  /// (Highmaps) Properties for each single point.
  final HCPlotSeriesPointOptions? point;

  /// (Highmaps) Deprecated. Use
  final dynamic pointDescriptionFormat;

  /// (Highmaps) Deprecated. Use
  final dynamic pointDescriptionFormatter;

  /// (Highmaps) Whether to select the series initially. If `showCheckbox`
  final dynamic selected;

  /// (Highmaps) If true, a checkbox is displayed next to the legend item
  final dynamic showCheckbox;

  /// (Highmaps) Whether to display this particular series or series type
  final dynamic showInLegend;

  /// (Highmaps) Whether the bubble's value should be represented by the
  final String? sizeBy;

  /// (Highmaps) Deprecated. Use series.accessibility.keyboardNavigation
  final dynamic skipKeyboardNavigation;

  /// (Highmaps) Sonification/audio chart options for a series.
  final HCSeriesSonificationOptions? sonification;

  /// (Highmaps) A collection of options for different series states.
  final HCSeriesStatesOptionsObject? states;

  /// (Highcharts, Highstock, Highmaps) Sticky tracking of mouse events.
  final dynamic stickyTracking;

  /// (Highcharts, Highstock, Highmaps) A configuration object for the
  final HCSeriesTooltipOptionsObject? tooltip;

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
    if (description != null) {
      json["description"] = description;
    }
    if (displayNegative != null) {
      json["displayNegative"] = hcJsonValue(displayNegative);
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
    if (legendSymbol != null) {
      json["legendSymbol"] = legendSymbol;
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
    if (marker != null) {
      json["marker"] = marker!.toJson();
    }
    if (maxSize != null) {
      json["maxSize"] = hcJsonValue(maxSize);
    }
    if (minSize != null) {
      json["minSize"] = hcJsonValue(minSize);
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
    if (selected != null) {
      json["selected"] = hcJsonValue(selected);
    }
    if (showCheckbox != null) {
      json["showCheckbox"] = hcJsonValue(showCheckbox);
    }
    if (showInLegend != null) {
      json["showInLegend"] = hcJsonValue(showInLegend);
    }
    if (sizeBy != null) {
      json["sizeBy"] = sizeBy;
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
