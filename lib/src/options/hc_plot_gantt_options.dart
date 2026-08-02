part of 'hc_options.dart';

/// (Gantt) A `gantt` series. If the type option is not specified, it is
class HCPlotGanttOptions implements HCOption {
  const HCPlotGanttOptions({
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
    this.colors,
    this.connectors,
    this.cursor,
    this.custom,
    this.dashStyle,
    this.dataLabels,
    this.dataMapping,
    this.description,
    this.dragDrop,
    this.enableMouseTracking,
    this.events,
    this.grouping,
    this.groupPadding,
    this.inactiveOtherPoints,
    this.includeInDataExport,
    this.keys,
    this.label,
    this.legendSymbol,
    this.linkedTo,
    this.maxPointWidth,
    this.minPointLength,
    this.onPoint,
    this.opacity,
    this.partialFill,
    this.point,
    this.pointDescriptionFormat,
    this.pointDescriptionFormatter,
    this.pointPadding,
    this.pointRange,
    this.pointWidth,
    this.selected,
    this.shadow,
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
  });

  /// (Gantt) Accessibility options for a series.
  final HCSeriesAccessibilityOptionsObject? accessibility;

  /// (Gantt) Allow this series' points to be selected by clicking on the
  final dynamic allowPointSelect;

  /// (Gantt) Enable or disable the initial animation when a series is
  final dynamic animation;

  /// (Gantt) For some series, there is a limit that shuts down animation by
  final num? animationLimit;

  /// (Highcharts, Highstock, Gantt) The color of the border surrounding each
  final dynamic borderColor;

  /// (Highcharts, Highstock, Gantt) The corner radius of the border
  final num? borderRadius;

  /// (Highcharts, Highstock, Gantt) The width of the border surrounding each
  final num? borderWidth;

  /// (Highcharts, Highstock, Gantt) When `true`, the columns will center in
  final dynamic centerInCategory;

  /// (Gantt) An additional class name to apply to the series' graphical
  final String? className;

  /// (Gantt) Disable this option to allow series rendering in the whole
  final dynamic clip;

  /// (Gantt) The main color of the series. In line type series it applies to
  final dynamic color;

  /// (Highcharts, Highstock, Gantt) In an X-range series, this option makes
  final dynamic colorByPoint;

  /// (Gantt) Styled mode only. A specific color index to use for the series,
  final num? colorIndex;

  /// (Highcharts, Highstock, Gantt) A series specific or series type specific
  final List<dynamic>? colors;

  /// (Gantt) Override Pathfinder connector options for a series. Requires
  final HCSeriesConnectorsOptionsObject? connectors;

  /// (Gantt) You can set the cursor to "pointer" if you have click events
  final String? cursor;

  /// (Gantt) A reserved subspace to store options and values for customized
  final HCDictionary? custom;

  /// (Gantt) Name of the dash style to use for the graph, or for some series
  final String? dashStyle;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for the series data
  final dynamic dataLabels;

  /// (Gantt) The mapping between the data table and the series data points.
  final HCDataMappingOptionsObject? dataMapping;

  /// (Gantt) Deprecated. Use plotOptions.series.accessibility.description
  final String? description;

  /// (Gantt) The draggable-points module allows points to be moved around or
  final HCSeriesDragDropOptionsObject? dragDrop;

  /// (Gantt) Enable or disable the mouse tracking for a specific series. This
  final dynamic enableMouseTracking;

  /// (Gantt) General event handlers for the series items. These event hooks
  final HCSeriesEventsOptionsObject? events;

  /// (Highcharts, Highstock, Gantt) Whether to group non-stacked columns or to
  final dynamic grouping;

  /// (Highcharts, Highstock, Gantt) Padding between each value groups, in x
  final num? groupPadding;

  /// (Gantt) Highlight only the hovered point and fade the remaining points.
  final dynamic inactiveOtherPoints;

  /// (Gantt) When set to `false` will prevent the series data from being
  final dynamic includeInDataExport;

  /// (Gantt) An array specifying which option maps to which key in the data
  final List<String>? keys;

  /// (Highcharts, Highstock, Gantt) Series labels are placed as close to the
  final HCSeriesLabelOptionsObject? label;

  /// (Gantt) What type of legend symbol to render for this series. Can be one
  final String? legendSymbol;

  /// (Highcharts, Highstock, Gantt) The id of another series to link to.
  final String? linkedTo;

  /// (Highcharts, Highstock, Gantt) The maximum allowed pixel width for a
  final num? maxPointWidth;

  /// (Highcharts, Highstock, Gantt) The minimal height for a column or width
  final num? minPointLength;

  /// (Gantt) Options for the _Series on point_ feature. Only `pie` and
  final dynamic onPoint;

  /// (Gantt) Opacity of a series parts: line, fill (e.g. area) and dataLabels.
  final num? opacity;

  /// (Highcharts, Highstock, Gantt) A partial fill for each point, typically
  final HCPlotGanttPartialFillOptions? partialFill;

  /// (Gantt) Properties for each single point.
  final HCPlotSeriesPointOptions? point;

  /// (Gantt) Deprecated. Use series.accessibility.point.descriptionFormat
  final dynamic pointDescriptionFormat;

  /// (Gantt) Deprecated. Use series.accessibility.point.descriptionFormatter
  final dynamic pointDescriptionFormatter;

  /// (Highcharts, Highstock, Gantt) Padding between each column or bar, in x
  final num? pointPadding;

  final num? pointRange;

  /// (Highcharts, Highstock, Gantt) A pixel value specifying a fixed width for
  final num? pointWidth;

  /// (Gantt) Whether to select the series initially. If `showCheckbox` is
  final dynamic selected;

  /// (Gantt) Whether to apply a drop shadow to the graph line. Since 2.3 the
  final dynamic shadow;

  /// (Gantt) If true, a checkbox is displayed next to the legend item to allow
  final dynamic showCheckbox;

  /// (Gantt) Whether to display this particular series or series type in the
  final dynamic showInLegend;

  /// (Gantt) Deprecated. Use series.accessibility.keyboardNavigation instead.
  final dynamic skipKeyboardNavigation;

  /// (Gantt) Sonification/audio chart options for a series.
  final HCSeriesSonificationOptions? sonification;

  /// (Gantt) A collection of options for different series states.
  final HCSeriesStatesOptionsObject? states;

  /// (Gantt) Sticky tracking of mouse events. When true, the `mouseOut` event
  final dynamic stickyTracking;

  /// (Gantt) A configuration object for the tooltip rendering of each single
  final HCSeriesTooltipOptionsObject? tooltip;

  /// (Highcharts, Highstock, Gantt) When a series contains a `data` array that
  final num? turboThreshold;

  /// (Gantt) Set the initial visibility of the series.
  final dynamic visible;

  /// (Gantt) Whether to zoom non-cartesian series. If `chart.zooming` is set,
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
    if (colorByPoint != null) {
      json["colorByPoint"] = hcJsonValue(colorByPoint);
    }
    if (colorIndex != null) {
      json["colorIndex"] = colorIndex;
    }
    if (colors != null) {
      json["colors"] = colors!.map((e) => hcJsonValue(e)).toList();
    }
    if (connectors != null) {
      json["connectors"] = connectors!.toJson();
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
    if (linkedTo != null) {
      json["linkedTo"] = linkedTo;
    }
    if (maxPointWidth != null) {
      json["maxPointWidth"] = maxPointWidth;
    }
    if (minPointLength != null) {
      json["minPointLength"] = minPointLength;
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
    return json;
  }
}
