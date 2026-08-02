part of 'hc_options.dart';

/// (Highcharts) An `arcdiagram` series. If the type option is not specified, it
class HCSeriesArcdiagramOptions implements HCOption {
  const HCSeriesArcdiagramOptions({
    this.centerInCategory,
    this.curveFactor,
    this.data,
    this.linkRadius,
    this.linkWeight,
    this.nodePadding,
    this.nodes,
    this.offset,
    this.stack,
    this.type,
    this.xAxis,
    this.yAxis,
    this.accessibility,
    this.allowPointSelect,
    this.animation,
    this.borderColor,
    this.borderWidth,
    this.centeredLinks,
    this.className,
    this.clip,
    this.color,
    this.colorByPoint,
    this.colorIndex,
    this.colors,
    this.cursor,
    this.custom,
    this.dashStyle,
    this.dataLabels,
    this.dataMapping,
    this.description,
    this.enableMouseTracking,
    this.equalNodes,
    this.events,
    this.inactiveOtherPoints,
    this.includeInDataExport,
    this.keys,
    this.label,
    this.legendSymbol,
    this.levels,
    this.linkColorMode,
    this.linkedTo,
    this.linkOpacity,
    this.marker,
    this.minLinkWidth,
    this.nodeDistance,
    this.nodeWidth,
    this.nullInteraction,
    this.onPoint,
    this.opacity,
    this.point,
    this.pointDescriptionFormat,
    this.pointDescriptionFormatter,
    this.reversed,
    this.selected,
    this.showCheckbox,
    this.showInLegend,
    this.skipKeyboardNavigation,
    this.sonification,
    this.states,
    this.stickyTracking,
    this.tooltip,
    this.turboThreshold,
    this.visible,
    this.zoomEnabled,
    this.id,
    this.index,
    this.legendIndex,
    this.mapData,
    this.name,
    this.zIndex,
  });

  /// Not available
  final dynamic centerInCategory;

  /// Not available
  final dynamic curveFactor;

  /// (Highcharts) An array of data points for the series. For the `arcdiagram`
  final List<HCSeriesSankeyPointOptionsObject>? data;

  /// (Highcharts) The radius of the link arc. If not set, series renders a
  final num? linkRadius;

  /// (Highcharts) The global link weight, in pixels. If not set, width is
  final num? linkWeight;

  /// Not available
  final dynamic nodePadding;

  /// (Highcharts) A collection of options for the individual nodes. The nodes
  final List<HCSeriesSankeyNodesOptionsObject>? nodes;

  /// (Highcharts) The offset of an arc diagram nodes column in relation to the
  final String? offset;

  /// Not available
  final dynamic stack;

  /// (Highcharts, Highstock, Highmaps, Gantt) This property is only in
  final String? type;

  /// Not available
  final dynamic xAxis;

  /// Not available
  final dynamic yAxis;

  /// (Highcharts) Accessibility options for a series.
  final HCSeriesAccessibilityOptionsObject? accessibility;

  /// (Highcharts) Allow this series' points to be selected by clicking on
  final dynamic allowPointSelect;

  /// (Highcharts) Enable or disable the initial animation when a series is
  final dynamic animation;

  /// (Highcharts, Highstock, Gantt) The color of the border surrounding
  final dynamic borderColor;

  /// (Highcharts, Highstock, Gantt) The width of the border surrounding
  final num? borderWidth;

  /// (Highcharts) The option to center links rather than position them one
  final dynamic centeredLinks;

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

  /// (Highcharts, Highstock, Gantt) A series specific or series type
  final List<dynamic>? colors;

  /// (Highcharts) You can set the cursor to "pointer" if you have click
  final String? cursor;

  /// (Highcharts) A reserved subspace to store options and values for
  final HCDictionary? custom;

  /// (Highcharts) Name of the dash style to use for the graph, or for some
  final String? dashStyle;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for the data labels
  final dynamic dataLabels;

  /// (Highcharts) The mapping between the data table and the series data
  final HCDataMappingOptionsObject? dataMapping;

  /// (Highcharts) Deprecated. Use
  final String? description;

  /// (Highcharts) Enable or disable the mouse tracking for a specific
  final dynamic enableMouseTracking;

  /// (Highcharts) Whether nodes with different values should have the same
  final dynamic equalNodes;

  /// (Highcharts) General event handlers for the series items. These event
  final HCSeriesEventsOptionsObject? events;

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

  /// (Highcharts) Set options on specific levels. Takes precedence over
  final List<HCPlotArcdiagramLevelsOptions>? levels;

  /// (Highcharts) Determines color mode for sankey links. Available
  final String? linkColorMode;

  /// (Highcharts, Highstock, Gantt) The id of another series to link to.
  final String? linkedTo;

  /// (Highcharts) Opacity for the links between nodes in the sankey
  final num? linkOpacity;

  /// (Highcharts) Options for the point markers of arc diagram series.
  final HCPointMarkerOptionsObject? marker;

  /// (Highcharts) The minimal width for a line of a sankey. By default, 0
  final num? minLinkWidth;

  /// (Highcharts) The distance between nodes in a sankey diagram in the
  final dynamic nodeDistance;

  /// (Highcharts) The pixel width of each node in a sankey diagram or
  final dynamic nodeWidth;

  /// (Highcharts, Highstock) Whether or not data-points with the value of
  final dynamic nullInteraction;

  /// (Highcharts) Options for the _Series on point_ feature. Only `pie`
  final dynamic onPoint;

  /// (Highcharts) Opacity for the nodes in the sankey diagram.
  final num? opacity;

  /// (Highcharts) Properties for each single point.
  final HCPlotSeriesPointOptions? point;

  /// (Highcharts) Deprecated. Use
  final dynamic pointDescriptionFormat;

  /// (Highcharts) Deprecated. Use
  final dynamic pointDescriptionFormatter;

  /// (Highcharts) Whether the series should be placed on the other side of
  final dynamic reversed;

  /// (Highcharts) Whether to select the series initially. If
  final dynamic selected;

  /// (Highcharts) If true, a checkbox is displayed next to the legend item
  final dynamic showCheckbox;

  /// (Highcharts) Whether to display this particular series or series type
  final dynamic showInLegend;

  /// (Highcharts) Deprecated. Use series.accessibility.keyboardNavigation
  final dynamic skipKeyboardNavigation;

  /// (Highcharts) Sonification/audio chart options for a series.
  final HCSeriesSonificationOptions? sonification;

  /// (Highcharts) A collection of options for different series states.
  final HCSeriesStatesOptionsObject? states;

  /// (Highcharts) Sticky tracking of mouse events. When true, the
  final dynamic stickyTracking;

  /// (Highcharts) A configuration object for the tooltip rendering of each
  final HCSeriesTooltipOptionsObject? tooltip;

  /// (Highcharts, Highstock, Gantt) When a series contains a `data` array
  final num? turboThreshold;

  /// (Highcharts) Set the initial visibility of the series.
  final dynamic visible;

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

  /// (Highcharts, Highstock) Define the visual z index of the series.
  final num? zIndex;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (centerInCategory != null) {
      json["centerInCategory"] = hcJsonValue(centerInCategory);
    }
    if (curveFactor != null) {
      json["curveFactor"] = hcJsonValue(curveFactor);
    }
    if (data != null) {
      json["data"] = data!.map((e) => e.toJson()).toList();
    }
    if (linkRadius != null) {
      json["linkRadius"] = linkRadius;
    }
    if (linkWeight != null) {
      json["linkWeight"] = linkWeight;
    }
    if (nodePadding != null) {
      json["nodePadding"] = hcJsonValue(nodePadding);
    }
    if (nodes != null) {
      json["nodes"] = nodes!.map((e) => e.toJson()).toList();
    }
    if (offset != null) {
      json["offset"] = offset;
    }
    if (stack != null) {
      json["stack"] = hcJsonValue(stack);
    }
    if (type != null) {
      json["type"] = type;
    }
    if (xAxis != null) {
      json["xAxis"] = hcJsonValue(xAxis);
    }
    if (yAxis != null) {
      json["yAxis"] = hcJsonValue(yAxis);
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
    if (borderColor != null) {
      json["borderColor"] = hcJsonValue(borderColor);
    }
    if (borderWidth != null) {
      json["borderWidth"] = borderWidth;
    }
    if (centeredLinks != null) {
      json["centeredLinks"] = hcJsonValue(centeredLinks);
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
    if (enableMouseTracking != null) {
      json["enableMouseTracking"] = hcJsonValue(enableMouseTracking);
    }
    if (equalNodes != null) {
      json["equalNodes"] = hcJsonValue(equalNodes);
    }
    if (events != null) {
      json["events"] = events!.toJson();
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
    if (levels != null) {
      json["levels"] = levels!.map((e) => e.toJson()).toList();
    }
    if (linkColorMode != null) {
      json["linkColorMode"] = linkColorMode;
    }
    if (linkedTo != null) {
      json["linkedTo"] = linkedTo;
    }
    if (linkOpacity != null) {
      json["linkOpacity"] = linkOpacity;
    }
    if (marker != null) {
      json["marker"] = marker!.toJson();
    }
    if (minLinkWidth != null) {
      json["minLinkWidth"] = minLinkWidth;
    }
    if (nodeDistance != null) {
      json["nodeDistance"] = hcJsonValue(nodeDistance);
    }
    if (nodeWidth != null) {
      json["nodeWidth"] = hcJsonValue(nodeWidth);
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
    if (reversed != null) {
      json["reversed"] = hcJsonValue(reversed);
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
    if (zIndex != null) {
      json["zIndex"] = zIndex;
    }
    return json;
  }
}
