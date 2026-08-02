part of 'hc_options.dart';

/// (Highcharts) A Sunburst displays hierarchical data, where a level in the
class HCPlotSunburstOptions implements HCOption {
  const HCPlotSunburstOptions({
    this.accessibility,
    this.allowDrillToNode,
    this.allowPointSelect,
    this.allowTraversingTree,
    this.animation,
    this.borderColor,
    this.borderRadius,
    this.borderWidth,
    this.breadcrumbs,
    this.center,
    this.className,
    this.clip,
    this.color,
    this.colorByPoint,
    this.colorIndex,
    this.colors,
    this.crisp,
    this.cursor,
    this.custom,
    this.dataLabels,
    this.dataMapping,
    this.description,
    this.enableMouseTracking,
    this.events,
    this.fillColor,
    this.inactiveOtherPoints,
    this.includeInDataExport,
    this.keys,
    this.legendSymbol,
    this.legendSymbolColor,
    this.levelIsConstant,
    this.levels,
    this.levelSize,
    this.nullInteraction,
    this.onPoint,
    this.opacity,
    this.point,
    this.pointDescriptionFormat,
    this.pointDescriptionFormatter,
    this.relativeXValue,
    this.rootId,
    this.selected,
    this.shadow,
    this.showCheckbox,
    this.showInLegend,
    this.size,
    this.skipKeyboardNavigation,
    this.slicedOffset,
    this.sonification,
    this.startAngle,
    this.states,
    this.stickyTracking,
    this.thickness,
    this.tooltip,
    this.traverseUpButton,
    this.visible,
    this.zoomEnabled,
  });

  /// (Highcharts) Accessibility options for a series.
  final HCSeriesAccessibilityOptionsObject? accessibility;

  /// (Highcharts) When enabled the user can click on a point which is a
  final dynamic allowDrillToNode;

  /// (Highcharts) Allow this series' points to be selected by clicking on
  final dynamic allowPointSelect;

  /// (Highcharts) When enabled the user can click on a point which is a
  final dynamic allowTraversingTree;

  /// (Highcharts) Enable or disable the initial animation when a series is
  final dynamic animation;

  /// (Highcharts, Highmaps) The color of the border surrounding each
  final dynamic borderColor;

  /// (Highcharts) The corner radius of the border surrounding each slice.
  final dynamic borderRadius;

  /// (Highcharts, Highmaps) The width of the border surrounding each
  final num? borderWidth;

  /// (Highcharts) Options for the breadcrumbs, the navigation at the top
  final HCPlotSunburstBreadcrumbsOptions? breadcrumbs;

  /// (Highcharts) The center of the sunburst chart relative to the plot
  final List<dynamic>? center;

  /// (Highcharts) An additional class name to apply to the series'
  final String? className;

  final dynamic clip;

  /// (Highcharts) The color of the pie series. A pie series is represented
  final dynamic color;

  final dynamic colorByPoint;

  /// (Highcharts) Styled mode only. A specific color index to use for the
  final num? colorIndex;

  /// (Highcharts, Highmaps) A series specific or series type specific
  final List<dynamic>? colors;

  /// (Highcharts, Highstock, Gantt) When true, each point or column edge
  final dynamic crisp;

  /// (Highcharts) You can set the cursor to "pointer" if you have click
  final String? cursor;

  /// (Highcharts) A reserved subspace to store options and values for
  final HCDictionary? custom;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for the series data
  final dynamic dataLabels;

  /// (Highcharts) The mapping between the data table and the series data
  final HCDataMappingOptionsObject? dataMapping;

  /// (Highcharts) Deprecated. Use
  final String? description;

  /// (Highcharts) Enable or disable the mouse tracking for a specific
  final dynamic enableMouseTracking;

  /// (Highcharts) General event handlers for the series items. These event
  final HCSeriesEventsOptionsObject? events;

  /// (Highcharts) If the total sum of the pie's values is 0, the series is
  final dynamic fillColor;

  /// (Highcharts) Highlight only the hovered point and fade the remaining
  final dynamic inactiveOtherPoints;

  /// (Highcharts) When set to `false` will prevent the series data from
  final dynamic includeInDataExport;

  /// (Highcharts) An array specifying which option maps to which key in
  final List<String>? keys;

  /// (Highcharts) What type of legend symbol to render for this series.
  final String? legendSymbol;

  /// (Highcharts, Highstock, Highmaps) Defines the color of the legend
  final dynamic legendSymbolColor;

  /// (Highcharts) Used together with the levels and `allowDrillToNode`
  final dynamic levelIsConstant;

  /// (Highcharts) Set options on specific levels. Takes precedence over
  final List<HCPlotSunburstLevelsOptions>? levels;

  /// (Highcharts) Determines the width of the ring per level.
  final HCPlotSunburstLevelSizeOptions? levelSize;

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

  /// (Highcharts, Highstock) When true, X values in the data set are
  final dynamic relativeXValue;

  /// (Highcharts) Which point to use as a root in the visualization.
  final String? rootId;

  /// (Highcharts) Whether to select the series initially. If
  final dynamic selected;

  /// (Highcharts) Whether to apply a drop shadow to the graph line. Since
  final dynamic shadow;

  /// (Highcharts) If true, a checkbox is displayed next to the legend item
  final dynamic showCheckbox;

  /// (Highcharts, Highmaps) Whether to display this particular series or
  final dynamic showInLegend;

  /// (Highcharts, Highmaps) The diameter of the pie relative to the plot
  final dynamic size;

  /// (Highcharts) Deprecated. Use series.accessibility.keyboardNavigation
  final dynamic skipKeyboardNavigation;

  /// (Highcharts, Highmaps) If a point is sliced, moved out from the
  final num? slicedOffset;

  /// (Highcharts) Sonification/audio chart options for a series.
  final HCSeriesSonificationOptions? sonification;

  /// (Highcharts, Highmaps) The start angle of the pie slices in degrees
  final num? startAngle;

  /// (Highcharts) A collection of options for different series states.
  final HCSeriesStatesOptionsObject? states;

  /// (Highcharts, Highmaps) Sticky tracking of mouse events. When true,
  final dynamic stickyTracking;

  /// (Highcharts) Thickness describing the ring size for a donut type
  final num? thickness;

  /// (Highcharts) A configuration object for the tooltip rendering of each
  final HCSeriesTooltipOptionsObject? tooltip;

  /// (Highcharts) Options for the button appearing when traversing down in
  final HCPlotSunburstTraverseUpButtonOptions? traverseUpButton;

  /// (Highcharts) Set the initial visibility of the series.
  final dynamic visible;

  /// (Highcharts) Whether to zoom non-cartesian series. If `chart.zooming`
  final dynamic zoomEnabled;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (accessibility != null) {
      json["accessibility"] = accessibility!.toJson();
    }
    if (allowDrillToNode != null) {
      json["allowDrillToNode"] = hcJsonValue(allowDrillToNode);
    }
    if (allowPointSelect != null) {
      json["allowPointSelect"] = hcJsonValue(allowPointSelect);
    }
    if (allowTraversingTree != null) {
      json["allowTraversingTree"] = hcJsonValue(allowTraversingTree);
    }
    if (animation != null) {
      json["animation"] = hcJsonValue(animation);
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
    if (breadcrumbs != null) {
      json["breadcrumbs"] = breadcrumbs!.toJson();
    }
    if (center != null) {
      json["center"] = center!.map((e) => hcJsonValue(e)).toList();
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
    if (crisp != null) {
      json["crisp"] = hcJsonValue(crisp);
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
    if (legendSymbolColor != null) {
      json["legendSymbolColor"] = hcJsonValue(legendSymbolColor);
    }
    if (levelIsConstant != null) {
      json["levelIsConstant"] = hcJsonValue(levelIsConstant);
    }
    if (levels != null) {
      json["levels"] = levels!.map((e) => e.toJson()).toList();
    }
    if (levelSize != null) {
      json["levelSize"] = levelSize!.toJson();
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
    if (rootId != null) {
      json["rootId"] = rootId;
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
    if (size != null) {
      json["size"] = hcJsonValue(size);
    }
    if (skipKeyboardNavigation != null) {
      json["skipKeyboardNavigation"] = hcJsonValue(skipKeyboardNavigation);
    }
    if (slicedOffset != null) {
      json["slicedOffset"] = slicedOffset;
    }
    if (sonification != null) {
      json["sonification"] = sonification!.toJson();
    }
    if (startAngle != null) {
      json["startAngle"] = startAngle;
    }
    if (states != null) {
      json["states"] = states!.toJson();
    }
    if (stickyTracking != null) {
      json["stickyTracking"] = hcJsonValue(stickyTracking);
    }
    if (thickness != null) {
      json["thickness"] = thickness;
    }
    if (tooltip != null) {
      json["tooltip"] = tooltip!.toJson();
    }
    if (traverseUpButton != null) {
      json["traverseUpButton"] = traverseUpButton!.toJson();
    }
    if (visible != null) {
      json["visible"] = hcJsonValue(visible);
    }
    if (zoomEnabled != null) {
      json["zoomEnabled"] = hcJsonValue(zoomEnabled);
    }
    return json;
  }
}
