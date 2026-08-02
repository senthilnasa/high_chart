part of 'hc_options.dart';

/// (Highmaps) A `flowmap` series. If the type option is not specified, it is
class HCSeriesFlowmapOptions implements HCOption {
  const HCSeriesFlowmapOptions({
    this.affectsMapView,
    this.allAreas,
    this.data,
    this.mapData,
    this.type,
    this.accessibility,
    this.animation,
    this.animationLimit,
    this.className,
    this.clip,
    this.color,
    this.colorAxis,
    this.colorByPoint,
    this.colorIndex,
    this.colorKey,
    this.colors,
    this.cursor,
    this.curveFactor,
    this.custom,
    this.dataMapping,
    this.description,
    this.enableMouseTracking,
    this.events,
    this.fillColor,
    this.fillOpacity,
    this.findNearestPointBy,
    this.inactiveOtherPoints,
    this.includeInDataExport,
    this.keys,
    this.legendSymbol,
    this.linecap,
    this.lineWidth,
    this.markerEnd,
    this.maxWidth,
    this.minWidth,
    this.nullColor,
    this.opacity,
    this.point,
    this.pointDescriptionFormat,
    this.pointDescriptionFormatter,
    this.selected,
    this.showInLegend,
    this.skipKeyboardNavigation,
    this.sonification,
    this.states,
    this.stickyTracking,
    this.tooltip,
    this.visible,
    this.weight,
    this.width,
    this.zIndex,
    this.zoomEnabled,
    this.id,
    this.index,
    this.legendIndex,
    this.name,
    this.stack,
    this.xAxis,
    this.yAxis,
  });

  /// Not available
  final dynamic affectsMapView;

  /// Not available
  final dynamic allAreas;

  /// (Highmaps) An array of data points for the series. For the `flowmap`
  final List<dynamic>? data;

  /// Not available
  final dynamic mapData;

  /// (Highcharts, Highstock, Highmaps, Gantt) This property is only in
  final String? type;

  /// (Highmaps) Accessibility options for a series.
  final HCSeriesAccessibilityOptionsObject? accessibility;

  /// (Highmaps) Enable or disable the initial animation when a series is
  final dynamic animation;

  /// (Highmaps) For some series, there is a limit that shuts down
  final num? animationLimit;

  /// (Highmaps) An additional class name to apply to the series' graphical
  final String? className;

  /// (Highmaps) Disable this option to allow series rendering in the whole
  final dynamic clip;

  /// (Highmaps) The main color of the series. In line type series it
  final dynamic color;

  /// (Highcharts, Highstock, Highmaps) When using dual or multiple color
  final dynamic colorAxis;

  /// (Highmaps) When using automatic point colors pulled from the global
  final dynamic colorByPoint;

  /// (Highmaps) Styled mode only. A specific color index to use for the
  final num? colorIndex;

  /// (Highcharts, Highstock, Highmaps) Determines what data value should
  final String? colorKey;

  /// (Highmaps) A series specific or series type specific color set to
  final List<dynamic>? colors;

  /// (Highmaps) You can set the cursor to "pointer" if you have click
  final String? cursor;

  /// (Highmaps) The `curveFactor` option for all links. Value higher than
  final num? curveFactor;

  /// (Highmaps) A reserved subspace to store options and values for
  final HCDictionary? custom;

  /// (Highmaps) The mapping between the data table and the series data
  final HCDataMappingOptionsObject? dataMapping;

  /// (Highmaps) Deprecated. Use
  final String? description;

  /// (Highmaps) Enable or disable the mouse tracking for a specific
  final dynamic enableMouseTracking;

  /// (Highmaps) General event handlers for the series items. These event
  final HCSeriesEventsOptionsObject? events;

  /// (Highmaps) The fill color of all the links. If not set, the series
  final dynamic fillColor;

  /// (Highmaps) The opacity of the color fill for all links.
  final num? fillOpacity;

  /// (Highmaps) Determines whether the series should look for the nearest
  final String? findNearestPointBy;

  /// (Highmaps) Highlight only the hovered point and fade the remaining
  final dynamic inactiveOtherPoints;

  /// (Highmaps) When set to `false` will prevent the series data from
  final dynamic includeInDataExport;

  /// (Highmaps) An array specifying which option maps to which key in the
  final List<String>? keys;

  /// (Highmaps) What type of legend symbol to render for this series. Can
  final String? legendSymbol;

  /// (Highmaps) The line cap used for line ends and line joins on the
  final String? linecap;

  /// (Highmaps) Specify the `lineWidth` of the links if they are not
  final num? lineWidth;

  /// (Highmaps) A `markerEnd` creates an arrow symbol indicating the
  final HCSeriesFlowMapSeriesOptionsObject? markerEnd;

  /// (Highmaps) Maximum width of a link expressed in pixels. The weight of
  final num? maxWidth;

  /// (Highmaps) Minimum width of a link expressed in pixels. The weight of
  final num? minWidth;

  /// (Highmaps) The color to apply to null points.
  final dynamic nullColor;

  /// (Highmaps) The opacity of all the links. Affects the opacity for the
  final num? opacity;

  /// (Highmaps) Properties for each single point.
  final HCPlotSeriesPointOptions? point;

  /// (Highmaps) Deprecated. Use
  final dynamic pointDescriptionFormat;

  /// (Highmaps) Deprecated. Use
  final dynamic pointDescriptionFormatter;

  /// (Highmaps) Whether to select the series initially. If `showCheckbox`
  final dynamic selected;

  /// (Highmaps) Whether to display this particular series or series type
  final dynamic showInLegend;

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

  /// (Highmaps) The weight for all links with unspecified weights. The
  final num? weight;

  /// (Highmaps) If no weight has previously been specified, this will set
  final num? width;

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
    if (data != null) {
      json["data"] = data!.map((e) => hcJsonValue(e)).toList();
    }
    if (mapData != null) {
      json["mapData"] = hcJsonValue(mapData);
    }
    if (type != null) {
      json["type"] = type;
    }
    if (accessibility != null) {
      json["accessibility"] = accessibility!.toJson();
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
    if (cursor != null) {
      json["cursor"] = cursor;
    }
    if (curveFactor != null) {
      json["curveFactor"] = curveFactor;
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
    if (inactiveOtherPoints != null) {
      json["inactiveOtherPoints"] = hcJsonValue(inactiveOtherPoints);
    }
    if (includeInDataExport != null) {
      json["includeInDataExport"] = hcJsonValue(includeInDataExport);
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
    if (lineWidth != null) {
      json["lineWidth"] = lineWidth;
    }
    if (markerEnd != null) {
      json["markerEnd"] = markerEnd!.toJson();
    }
    if (maxWidth != null) {
      json["maxWidth"] = maxWidth;
    }
    if (minWidth != null) {
      json["minWidth"] = minWidth;
    }
    if (nullColor != null) {
      json["nullColor"] = hcJsonValue(nullColor);
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
    if (showInLegend != null) {
      json["showInLegend"] = hcJsonValue(showInLegend);
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
    if (weight != null) {
      json["weight"] = weight;
    }
    if (width != null) {
      json["width"] = width;
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
