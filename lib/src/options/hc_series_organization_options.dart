part of 'hc_options.dart';

/// (Highcharts) An `organization` series. If the type option is not specified,
class HCSeriesOrganizationOptions implements HCOption {
  const HCSeriesOrganizationOptions({
    this.data,
    this.linkColor,
    this.linkLineWidth,
    this.linkRadius,
    this.nodes,
    this.type,
    this.accessibility,
    this.animation,
    this.borderColor,
    this.borderRadius,
    this.borderWidth,
    this.centerInCategory,
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
    this.events,
    this.getExtremesFromAll,
    this.hangingIndent,
    this.hangingIndentTranslation,
    this.hangingSide,
    this.inactiveOtherPoints,
    this.includeInDataExport,
    this.keys,
    this.label,
    this.legendSymbol,
    this.levels,
    this.link,
    this.linkColorMode,
    this.linkedTo,
    this.linkOpacity,
    this.minLinkWidth,
    this.minNodeLength,
    this.nodeAlignment,
    this.nodeDistance,
    this.nodePadding,
    this.nodeWidth,
    this.nullInteraction,
    this.onPoint,
    this.opacity,
    this.point,
    this.pointDescriptionFormat,
    this.pointDescriptionFormatter,
    this.relativeXValue,
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
    this.stack,
    this.xAxis,
    this.yAxis,
    this.zIndex,
  });

  /// (Highcharts) An array of data points for the series. For the
  final List<HCSeriesSankeyPointOptionsObject>? data;

  /// (Highcharts) The color of the links between nodes. This option is moved
  final String? linkColor;

  /// (Highcharts) The line width of the links connecting nodes, in pixels.
  final dynamic linkLineWidth;

  /// (Highcharts) Radius for the rounded corners of the links between nodes.
  final dynamic linkRadius;

  /// (Highcharts) A collection of options for the individual nodes. The nodes
  final List<HCSeriesSankeyNodesOptionsObject>? nodes;

  /// (Highcharts, Highstock, Highmaps, Gantt) This property is only in
  final String? type;

  /// (Highcharts) Accessibility options for a series.
  final HCSeriesAccessibilityOptionsObject? accessibility;

  /// (Highcharts) Enable or disable the initial animation when a series is
  final dynamic animation;

  /// (Highcharts, Highstock, Gantt) The border color of the node cards.
  final String? borderColor;

  /// (Highcharts) The border radius of the node cards.
  final num? borderRadius;

  /// (Highcharts, Highstock, Gantt) The width of the border surrounding each
  final num? borderWidth;

  /// (Highcharts, Highstock, Gantt) When `true`, the columns will center in
  final dynamic centerInCategory;

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

  /// (Highcharts) You can set the cursor to "pointer" if you have click events
  final String? cursor;

  /// (Highcharts) A reserved subspace to store options and values for
  final HCDictionary? custom;

  /// (Highcharts) Name of the dash style to use for the graph, or for some
  final String? dashStyle;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for the data labels
  final dynamic dataLabels;

  /// (Highcharts) The mapping between the data table and the series data
  final HCDataMappingOptionsObject? dataMapping;

  /// (Highcharts) Deprecated. Use plotOptions.series.accessibility.description
  final String? description;

  /// (Highcharts) Enable or disable the mouse tracking for a specific series.
  final dynamic enableMouseTracking;

  /// (Highcharts) General event handlers for the series items. These event
  final HCSeriesEventsOptionsObject? events;

  /// (Highcharts, Highstock, Gantt) Whether to use the Y extremes of the total
  final dynamic getExtremesFromAll;

  /// (Highcharts) The indentation in pixels of hanging nodes, nodes which
  final num? hangingIndent;

  /// (Highcharts) Defines the indentation of a `hanging` layout parent's
  final String? hangingIndentTranslation;

  /// (Highcharts) Whether links connecting hanging nodes should be drawn on
  final String? hangingSide;

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

  /// (Highcharts) Set options on specific levels. Takes precedence over series
  final List<HCPlotOrganizationLevelsOptions>? levels;

  /// (Highcharts) Link Styling options
  final HCPlotOrganizationLinkOptions? link;

  /// (Highcharts) Determines color mode for sankey links. Available options:
  final String? linkColorMode;

  /// (Highcharts, Highstock, Gantt) The id of another series to link to.
  final String? linkedTo;

  /// (Highcharts) Opacity for the links between nodes in the sankey diagram.
  final num? linkOpacity;

  /// (Highcharts) The minimal width for a line of a sankey. By default, 0
  final num? minLinkWidth;

  /// (Highcharts) In a horizontal chart, the minimum width of the **hanging**
  final num? minNodeLength;

  /// (Highcharts) Determines which side of the chart the nodes are to be
  final String? nodeAlignment;

  /// (Highcharts) The distance between nodes in a sankey diagram in the
  final dynamic nodeDistance;

  /// (Highcharts) The padding between nodes in a sankey diagram or dependency
  final num? nodePadding;

  /// (Highcharts) In a horizontal chart, the width of the nodes in pixels.
  final num? nodeWidth;

  /// (Highcharts, Highstock) Whether or not data-points with the value of
  final dynamic nullInteraction;

  /// (Highcharts) Options for the _Series on point_ feature. Only `pie` and
  final dynamic onPoint;

  /// (Highcharts) Opacity for the nodes in the sankey diagram.
  final num? opacity;

  /// (Highcharts) Properties for each single point.
  final HCPlotSeriesPointOptions? point;

  /// (Highcharts) Deprecated. Use series.accessibility.point.descriptionFormat
  final dynamic pointDescriptionFormat;

  /// (Highcharts) Deprecated. Use
  final dynamic pointDescriptionFormatter;

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

  /// (Highcharts) Sonification/audio chart options for a series.
  final HCSeriesSonificationOptions? sonification;

  /// (Highcharts) A collection of options for different series states.
  final HCSeriesStatesOptionsObject? states;

  /// (Highcharts) Sticky tracking of mouse events. When true, the `mouseOut`
  final dynamic stickyTracking;

  /// (Highcharts) A configuration object for the tooltip rendering of each
  final HCSeriesTooltipOptionsObject? tooltip;

  /// (Highcharts, Highstock, Gantt) When a series contains a `data` array that
  final num? turboThreshold;

  /// (Highcharts) Set the initial visibility of the series.
  final dynamic visible;

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
    if (data != null) {
      json["data"] = data!.map((e) => e.toJson()).toList();
    }
    if (linkColor != null) {
      json["linkColor"] = linkColor;
    }
    if (linkLineWidth != null) {
      json["linkLineWidth"] = hcJsonValue(linkLineWidth);
    }
    if (linkRadius != null) {
      json["linkRadius"] = hcJsonValue(linkRadius);
    }
    if (nodes != null) {
      json["nodes"] = nodes!.map((e) => e.toJson()).toList();
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
    if (borderColor != null) {
      json["borderColor"] = borderColor;
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
    if (events != null) {
      json["events"] = events!.toJson();
    }
    if (getExtremesFromAll != null) {
      json["getExtremesFromAll"] = hcJsonValue(getExtremesFromAll);
    }
    if (hangingIndent != null) {
      json["hangingIndent"] = hangingIndent;
    }
    if (hangingIndentTranslation != null) {
      json["hangingIndentTranslation"] = hangingIndentTranslation;
    }
    if (hangingSide != null) {
      json["hangingSide"] = hangingSide;
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
    if (link != null) {
      json["link"] = link!.toJson();
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
    if (minLinkWidth != null) {
      json["minLinkWidth"] = minLinkWidth;
    }
    if (minNodeLength != null) {
      json["minNodeLength"] = minNodeLength;
    }
    if (nodeAlignment != null) {
      json["nodeAlignment"] = nodeAlignment;
    }
    if (nodeDistance != null) {
      json["nodeDistance"] = hcJsonValue(nodeDistance);
    }
    if (nodePadding != null) {
      json["nodePadding"] = nodePadding;
    }
    if (nodeWidth != null) {
      json["nodeWidth"] = nodeWidth;
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
