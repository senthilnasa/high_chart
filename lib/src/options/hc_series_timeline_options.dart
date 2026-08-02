part of 'hc_options.dart';

/// (Highcharts) The `timeline` series. If the type option is not specified,
class HCSeriesTimelineOptions implements HCOption {
  const HCSeriesTimelineOptions({
    this.data,
    this.dataParser,
    this.dataURL,
    this.stack,
    this.type,
    this.accessibility,
    this.allowPointSelect,
    this.animation,
    this.className,
    this.clip,
    this.color,
    this.colorAxis,
    this.colorByPoint,
    this.colorIndex,
    this.colorKey,
    this.crisp,
    this.cursor,
    this.custom,
    this.dataLabels,
    this.dataMapping,
    this.description,
    this.dragDrop,
    this.enableMouseTracking,
    this.events,
    this.gapSize,
    this.gapUnit,
    this.ignoreHiddenPoint,
    this.inactiveOtherPoints,
    this.includeInDataExport,
    this.keys,
    this.label,
    this.legendSymbol,
    this.legendSymbolColor,
    this.linecap,
    this.lineWidth,
    this.linkedTo,
    this.marker,
    this.nullInteraction,
    this.onPoint,
    this.opacity,
    this.point,
    this.pointDescriptionFormat,
    this.pointDescriptionFormatter,
    this.relativeXValue,
    this.selected,
    this.shadow,
    this.showCheckbox,
    this.showInLegend,
    this.skipKeyboardNavigation,
    this.sonification,
    this.states,
    this.stickyTracking,
    this.tooltip,
    this.visible,
    this.zoomEnabled,
    this.id,
    this.index,
    this.legendIndex,
    this.mapData,
    this.name,
    this.xAxis,
    this.yAxis,
    this.zIndex,
  });

  /// (Highcharts) An array of data points for the series. For the
  final List<HCPointOptionsObject>? data;

  /// Not available
  final dynamic dataParser;

  /// Not available
  final dynamic dataURL;

  /// Not available
  final dynamic stack;

  /// (Highcharts, Highstock, Highmaps, Gantt) This property is only in
  final String? type;

  /// (Highcharts) Accessibility options for a series.
  final HCSeriesAccessibilityOptionsObject? accessibility;

  /// (Highcharts) Allow this series' points to be selected by clicking on
  final dynamic allowPointSelect;

  /// (Highcharts) Enable or disable the initial animation when a series is
  final dynamic animation;

  /// (Highcharts) An additional class name to apply to the series'
  final String? className;

  /// (Highcharts) Disable this option to allow series rendering in the
  final dynamic clip;

  /// (Highcharts) The main color of the series. In line type series it
  final dynamic color;

  /// (Highcharts, Highstock, Highmaps) When using dual or multiple color
  final dynamic colorAxis;

  final dynamic colorByPoint;

  /// (Highcharts) Styled mode only. A specific color index to use for the
  final num? colorIndex;

  /// (Highcharts, Highstock, Highmaps) Determines what data value should
  final String? colorKey;

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

  /// (Highcharts) The draggable-points module allows points to be moved
  final HCSeriesDragDropOptionsObject? dragDrop;

  /// (Highcharts) Enable or disable the mouse tracking for a specific
  final dynamic enableMouseTracking;

  /// (Highcharts) General event handlers for the series items. These event
  final HCSeriesEventsOptionsObject? events;

  /// (Highcharts, Highstock) Defines when to display a gap in the graph,
  final num? gapSize;

  /// (Highcharts, Highstock) Together with gapSize, this option defines
  final String? gapUnit;

  final dynamic ignoreHiddenPoint;

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

  /// (Highcharts) The line cap used for line ends and line joins on the
  final String? linecap;

  /// (Highcharts, Highstock) Pixel width of the graph line.
  final num? lineWidth;

  /// (Highcharts, Highstock, Gantt) The id of another series to link to.
  final String? linkedTo;

  /// (Highcharts) Options for the point markers of line and scatter-like
  final HCPointMarkerOptionsObject? marker;

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

  /// (Highcharts) Sonification/audio chart options for a series.
  final HCSeriesSonificationOptions? sonification;

  /// (Highcharts) A collection of options for different series states.
  final HCSeriesStatesOptionsObject? states;

  /// (Highcharts) Sticky tracking of mouse events. When true, the
  final dynamic stickyTracking;

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
    if (accessibility != null) {
      json["accessibility"] = accessibility!.toJson();
    }
    if (allowPointSelect != null) {
      json["allowPointSelect"] = hcJsonValue(allowPointSelect);
    }
    if (animation != null) {
      json["animation"] = hcJsonValue(animation);
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
    if (dragDrop != null) {
      json["dragDrop"] = dragDrop!.toJson();
    }
    if (enableMouseTracking != null) {
      json["enableMouseTracking"] = hcJsonValue(enableMouseTracking);
    }
    if (events != null) {
      json["events"] = events!.toJson();
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
    if (lineWidth != null) {
      json["lineWidth"] = lineWidth;
    }
    if (linkedTo != null) {
      json["linkedTo"] = linkedTo;
    }
    if (marker != null) {
      json["marker"] = marker!.toJson();
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
