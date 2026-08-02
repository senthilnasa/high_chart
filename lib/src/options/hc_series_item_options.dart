part of 'hc_options.dart';

/// (Highcharts) An `item` series. If the type option is not specified, it is
class HCSeriesItemOptions implements HCOption {
  const HCSeriesItemOptions({
    this.data,
    this.dataParser,
    this.dataURL,
    this.stack,
    this.type,
    this.xAxis,
    this.yAxis,
    this.accessibility,
    this.allowPointSelect,
    this.animation,
    this.borderRadius,
    this.center,
    this.className,
    this.clip,
    this.color,
    this.colorAxis,
    this.colorIndex,
    this.colorKey,
    this.colors,
    this.crisp,
    this.cursor,
    this.custom,
    this.dataLabels,
    this.dataMapping,
    this.description,
    this.enableMouseTracking,
    this.endAngle,
    this.events,
    this.fillColor,
    this.gapSize,
    this.gapUnit,
    this.ignoreHiddenPoint,
    this.inactiveOtherPoints,
    this.includeInDataExport,
    this.innerSize,
    this.itemPadding,
    this.keys,
    this.layout,
    this.legendSymbol,
    this.legendSymbolColor,
    this.marker,
    this.minSize,
    this.nullInteraction,
    this.onPoint,
    this.opacity,
    this.point,
    this.pointDescriptionFormat,
    this.pointDescriptionFormatter,
    this.relativeXValue,
    this.rows,
    this.selected,
    this.showCheckbox,
    this.showInLegend,
    this.size,
    this.skipKeyboardNavigation,
    this.sonification,
    this.startAngle,
    this.states,
    this.stickyTracking,
    this.thickness,
    this.tooltip,
    this.visible,
    this.zoomEnabled,
    this.id,
    this.index,
    this.legendIndex,
    this.mapData,
    this.name,
    this.zIndex,
  });

  /// (Highcharts) An array of data points for the series. For the `item`
  final List<dynamic>? data;

  /// Not available
  final dynamic dataParser;

  /// Not available
  final dynamic dataURL;

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

  /// (Highcharts) The corner radius of the border surrounding each slice.
  final dynamic borderRadius;

  /// (Highcharts, Highmaps) The center of the pie chart relative to the
  final dynamic center;

  /// (Highcharts) An additional class name to apply to the series'
  final String? className;

  /// (Highcharts) Disable this option to allow series rendering in the
  final dynamic clip;

  /// (Highcharts) The color of the pie series. A pie series is represented
  final dynamic color;

  /// (Highcharts, Highstock, Highmaps) When using dual or multiple color
  final dynamic colorAxis;

  /// (Highcharts) Styled mode only. A specific color index to use for the
  final num? colorIndex;

  /// (Highcharts, Highstock, Highmaps) Determines what data value should
  final String? colorKey;

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

  /// (Highcharts, Highmaps) In circular view, the end angle of the item
  final num? endAngle;

  /// (Highcharts) General event handlers for the series items. These event
  final HCSeriesEventsOptionsObject? events;

  /// (Highcharts) If the total sum of the pie's values is 0, the series is
  final dynamic fillColor;

  /// (Highcharts, Highstock) Defines when to display a gap in the graph,
  final num? gapSize;

  /// (Highcharts, Highstock) Together with gapSize, this option defines
  final String? gapUnit;

  /// (Highcharts, Highmaps) Equivalent to chart.ignoreHiddenSeries, this
  final dynamic ignoreHiddenPoint;

  /// (Highcharts) Highlight only the hovered point and fade the remaining
  final dynamic inactiveOtherPoints;

  /// (Highcharts) When set to `false` will prevent the series data from
  final dynamic includeInDataExport;

  /// (Highcharts, Highmaps) In circular view, the size of the inner
  final dynamic innerSize;

  /// (Highcharts) The padding between the items, given in relative size
  final num? itemPadding;

  /// (Highcharts) An array specifying which option maps to which key in
  final List<String>? keys;

  /// (Highcharts) The layout of the items in rectangular view. Can be
  final String? layout;

  /// (Highcharts) What type of legend symbol to render for this series.
  final String? legendSymbol;

  /// (Highcharts, Highstock, Highmaps) Defines the color of the legend
  final dynamic legendSymbolColor;

  /// (Highcharts) Options for the point markers of line and scatter-like
  final HCPointMarkerOptionsObject? marker;

  /// (Highcharts, Highmaps) The minimum size for a pie in response to auto
  final dynamic minSize;

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

  /// (Highcharts) The number of rows to display in the rectangular or
  final num? rows;

  /// (Highcharts) Whether to select the series initially. If
  final dynamic selected;

  /// (Highcharts) If true, a checkbox is displayed next to the legend item
  final dynamic showCheckbox;

  /// (Highcharts, Highmaps) Whether to display this particular series or
  final dynamic showInLegend;

  /// (Highcharts, Highmaps) The diameter of the pie relative to the plot
  final dynamic size;

  /// (Highcharts) Deprecated. Use series.accessibility.keyboardNavigation
  final dynamic skipKeyboardNavigation;

  /// (Highcharts) Sonification/audio chart options for a series.
  final HCSeriesSonificationOptions? sonification;

  /// (Highcharts, Highmaps) In circular view, the start angle of the item
  final num? startAngle;

  /// (Highcharts) A collection of options for different series states.
  final HCSeriesStatesOptionsObject? states;

  /// (Highcharts, Highmaps) Sticky tracking of mouse events. When true,
  final dynamic stickyTracking;

  /// (Highcharts) Thickness describing the ring size for a donut type
  final num? thickness;

  /// (Highcharts) A configuration object for the tooltip rendering of each
  final HCSeriesTooltipOptionsObject? tooltip;

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
    if (data != null) {
      json["data"] = data!.map((e) => hcJsonValue(e)).toList();
    }
    if (dataParser != null) {
      json["dataParser"] = hcJsonValue(dataParser);
    }
    if (dataURL != null) {
      json["dataURL"] = hcJsonValue(dataURL);
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
    if (borderRadius != null) {
      json["borderRadius"] = hcJsonValue(borderRadius);
    }
    if (center != null) {
      json["center"] = hcJsonValue(center);
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
    if (endAngle != null) {
      json["endAngle"] = endAngle;
    }
    if (events != null) {
      json["events"] = events!.toJson();
    }
    if (fillColor != null) {
      json["fillColor"] = hcJsonValue(fillColor);
    }
    if (gapSize != null) {
      json["gapSize"] = gapSize;
    }
    if (gapUnit != null) {
      json["gapUnit"] = gapUnit;
    }
    if (ignoreHiddenPoint != null) {
      json["ignoreHiddenPoint"] = hcJsonValue(ignoreHiddenPoint);
    }
    if (inactiveOtherPoints != null) {
      json["inactiveOtherPoints"] = hcJsonValue(inactiveOtherPoints);
    }
    if (includeInDataExport != null) {
      json["includeInDataExport"] = hcJsonValue(includeInDataExport);
    }
    if (innerSize != null) {
      json["innerSize"] = hcJsonValue(innerSize);
    }
    if (itemPadding != null) {
      json["itemPadding"] = itemPadding;
    }
    if (keys != null) {
      json["keys"] = keys;
    }
    if (layout != null) {
      json["layout"] = layout;
    }
    if (legendSymbol != null) {
      json["legendSymbol"] = legendSymbol;
    }
    if (legendSymbolColor != null) {
      json["legendSymbolColor"] = hcJsonValue(legendSymbolColor);
    }
    if (marker != null) {
      json["marker"] = marker!.toJson();
    }
    if (minSize != null) {
      json["minSize"] = hcJsonValue(minSize);
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
    if (rows != null) {
      json["rows"] = rows;
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
    if (size != null) {
      json["size"] = hcJsonValue(size);
    }
    if (skipKeyboardNavigation != null) {
      json["skipKeyboardNavigation"] = hcJsonValue(skipKeyboardNavigation);
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
