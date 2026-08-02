part of 'hc_options.dart';

/// (Highcharts) A `bellcurve` series. If the type option is not specified, it is
class HCSeriesBellcurveOptions implements HCOption {
  const HCSeriesBellcurveOptions({
    this.baseSeries,
    this.data,
    this.dataParser,
    this.dataURL,
    this.type,
    this.accessibility,
    this.allowPointSelect,
    this.animation,
    this.animationLimit,
    this.className,
    this.clip,
    this.color,
    this.colorAxis,
    this.colorIndex,
    this.colorKey,
    this.connectEnds,
    this.crisp,
    this.cropThreshold,
    this.cursor,
    this.custom,
    this.dashStyle,
    this.dataLabels,
    this.dataMapping,
    this.dataSorting,
    this.description,
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
    this.intervals,
    this.keys,
    this.label,
    this.legendSymbol,
    this.legendSymbolColor,
    this.linecap,
    this.lineColor,
    this.lineWidth,
    this.linkedTo,
    this.marker,
    this.negativeColor,
    this.negativeFillColor,
    this.nullInteraction,
    this.onPoint,
    this.opacity,
    this.point,
    this.pointDescriptionFormat,
    this.pointDescriptionFormatter,
    this.pointPlacement,
    this.pointsInInterval,
    this.pointStart,
    this.relativeXValue,
    this.selected,
    this.shadow,
    this.showCheckbox,
    this.showInLegend,
    this.skipKeyboardNavigation,
    this.softThreshold,
    this.sonification,
    this.states,
    this.stickyTracking,
    this.threshold,
    this.tooltip,
    this.trackByArea,
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

  /// (Highcharts) An integer identifying the index to use for the base series,
  final dynamic baseSeries;

  /// Not available
  final dynamic data;

  /// Not available
  final dynamic dataParser;

  /// Not available
  final dynamic dataURL;

  /// (Highcharts, Highstock, Highmaps, Gantt) This property is only in
  final String? type;

  /// (Highcharts) Accessibility options for a series.
  final HCSeriesAccessibilityOptionsObject? accessibility;

  /// (Highcharts) Allow this series' points to be selected by clicking on the
  final dynamic allowPointSelect;

  /// (Highcharts) Enable or disable the initial animation when a series is
  final dynamic animation;

  /// (Highcharts) For some series, there is a limit that shuts down animation
  final num? animationLimit;

  /// (Highcharts) An additional class name to apply to the series' graphical
  final String? className;

  /// (Highcharts) Disable this option to allow series rendering in the whole
  final dynamic clip;

  /// (Highcharts) The main color of the series. In line type series it applies
  final dynamic color;

  /// (Highcharts, Highstock, Highmaps) When using dual or multiple color axes,
  final dynamic colorAxis;

  /// (Highcharts) Styled mode only. A specific color index to use for the
  final num? colorIndex;

  /// (Highcharts, Highstock, Highmaps) Determines what data value should be
  final String? colorKey;

  /// (Highcharts) Polar charts only. Whether to connect the ends of a line
  final dynamic connectEnds;

  /// (Highcharts, Highstock, Gantt) When true, each point or column edge is
  final dynamic crisp;

  /// (Highcharts, Highstock) When the series contains less points than the
  final num? cropThreshold;

  /// (Highcharts) You can set the cursor to "pointer" if you have click events
  final String? cursor;

  /// (Highcharts) A reserved subspace to store options and values for
  final HCDictionary? custom;

  /// (Highcharts) Name of the dash style to use for the graph, or for some
  final String? dashStyle;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for the series data
  final dynamic dataLabels;

  /// (Highcharts) The mapping between the data table and the series data
  final HCDataMappingOptionsObject? dataMapping;

  /// (Highcharts, Highstock) Options for series data sorting.
  final HCPlotBellcurveDataSortingOptions? dataSorting;

  /// (Highcharts) Deprecated. Use plotOptions.series.accessibility.description
  final String? description;

  /// (Highcharts) Enable or disable the mouse tracking for a specific series.
  final dynamic enableMouseTracking;

  /// (Highcharts) General event handlers for the series items. These event
  final HCSeriesEventsOptionsObject? events;

  /// (Highcharts, Highstock) Fill color or gradient for the area. When
  final dynamic fillColor;

  /// (Highcharts, Highstock) Fill opacity for the area. When you set an
  final num? fillOpacity;

  /// (Highcharts) Determines whether the series should look for the nearest
  final String? findNearestPointBy;

  /// (Highcharts, Highstock) Defines when to display a gap in the graph,
  final num? gapSize;

  /// (Highcharts, Highstock) Together with gapSize, this option defines where
  final String? gapUnit;

  /// (Highcharts, Highstock, Gantt) Whether to use the Y extremes of the total
  final dynamic getExtremesFromAll;

  /// (Highcharts) Highlight only the hovered point and fade the remaining
  final dynamic inactiveOtherPoints;

  /// (Highcharts) When set to `false` will prevent the series data from being
  final dynamic includeInDataExport;

  /// (Highcharts) This option allows to define the length of the bell curve. A
  final num? intervals;

  /// (Highcharts) An array specifying which option maps to which key in the
  final List<String>? keys;

  /// (Highcharts, Highstock, Gantt) Series labels are placed as close to the
  final HCSeriesLabelOptionsObject? label;

  /// (Highcharts) What type of legend symbol to render for this series. Can be
  final String? legendSymbol;

  /// (Highcharts, Highstock, Highmaps) Defines the color of the legend symbol
  final dynamic legendSymbolColor;

  /// (Highcharts) The line cap used for line ends and line joins on the graph.
  final String? linecap;

  /// (Highcharts, Highstock) A separate color for the graph line. By default
  final dynamic lineColor;

  /// (Highcharts, Highstock) Pixel width of the graph line.
  final num? lineWidth;

  /// (Highcharts, Highstock, Gantt) The id of another series to link to.
  final String? linkedTo;

  /// (Highcharts) Options for the point markers of line and scatter-like
  final HCPointMarkerOptionsObject? marker;

  /// (Highcharts) The color for the parts of the graph or points that are
  final dynamic negativeColor;

  /// (Highcharts) A separate color for the negative part of the area. Note
  final dynamic negativeFillColor;

  /// (Highcharts, Highstock) Whether or not data-points with the value of
  final dynamic nullInteraction;

  /// (Highcharts) Options for the _Series on point_ feature. Only `pie` and
  final dynamic onPoint;

  /// (Highcharts) Opacity of a series parts: line, fill (e.g. area) and
  final num? opacity;

  /// (Highcharts) Properties for each single point.
  final HCPlotSeriesPointOptions? point;

  /// (Highcharts) Deprecated. Use series.accessibility.point.descriptionFormat
  final dynamic pointDescriptionFormat;

  /// (Highcharts) Deprecated. Use
  final dynamic pointDescriptionFormatter;

  /// (Highcharts, Highstock, Gantt) Possible values: `"on"`, `"between"`,
  final dynamic pointPlacement;

  /// (Highcharts) Defines how many points should be plotted within 1 interval.
  final num? pointsInInterval;

  /// (Highcharts, Highstock, Gantt) If no x values are given for the points in
  final dynamic pointStart;

  /// (Highcharts, Highstock) When true, X values in the data set are relative
  final dynamic relativeXValue;

  /// (Highcharts) Whether to select the series initially. If `showCheckbox` is
  final dynamic selected;

  /// (Highcharts) Whether to apply a drop shadow to the graph line. Since 2.3
  final dynamic shadow;

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

  /// (Highcharts) A collection of options for different series states.
  final HCSeriesStatesOptionsObject? states;

  /// (Highcharts) Sticky tracking of mouse events. When true, the `mouseOut`
  final dynamic stickyTracking;

  /// (Highcharts, Highstock) The Y axis value to serve as the base for the
  final num? threshold;

  /// (Highcharts) A configuration object for the tooltip rendering of each
  final HCSeriesTooltipOptionsObject? tooltip;

  /// (Highcharts, Highstock) Whether the whole area or just the line should
  final dynamic trackByArea;

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
    if (baseSeries != null) {
      json["baseSeries"] = hcJsonValue(baseSeries);
    }
    if (data != null) {
      json["data"] = hcJsonValue(data);
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
    if (connectEnds != null) {
      json["connectEnds"] = hcJsonValue(connectEnds);
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
    if (dataSorting != null) {
      json["dataSorting"] = dataSorting!.toJson();
    }
    if (description != null) {
      json["description"] = description;
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
    if (intervals != null) {
      json["intervals"] = intervals;
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
    if (pointPlacement != null) {
      json["pointPlacement"] = hcJsonValue(pointPlacement);
    }
    if (pointsInInterval != null) {
      json["pointsInInterval"] = pointsInInterval;
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
