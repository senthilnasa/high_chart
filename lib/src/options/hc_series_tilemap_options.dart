part of 'hc_options.dart';

/// (Highcharts, Highmaps) A `tilemap` series. If the type option is not
class HCSeriesTilemapOptions implements HCOption {
  const HCSeriesTilemapOptions({
    this.allAreas,
    this.data,
    this.dataParser,
    this.dataURL,
    this.mapData,
    this.stack,
    this.type,
    this.accessibility,
    this.allowPointSelect,
    this.animation,
    this.borderColor,
    this.borderRadius,
    this.borderWidth,
    this.className,
    this.clip,
    this.color,
    this.colorAxis,
    this.colorIndex,
    this.colorKey,
    this.colsize,
    this.crisp,
    this.cursor,
    this.custom,
    this.dataLabels,
    this.dataMapping,
    this.description,
    this.enableMouseTracking,
    this.events,
    this.gapSize,
    this.gapUnit,
    this.inactiveOtherPoints,
    this.includeInDataExport,
    this.interpolation,
    this.keys,
    this.label,
    this.legendSymbol,
    this.linkedTo,
    this.marker,
    this.negativeColor,
    this.nullColor,
    this.nullInteraction,
    this.onPoint,
    this.opacity,
    this.point,
    this.pointDescriptionFormat,
    this.pointDescriptionFormatter,
    this.pointPadding,
    this.relativeXValue,
    this.rowsize,
    this.selected,
    this.showCheckbox,
    this.showInLegend,
    this.skipKeyboardNavigation,
    this.sonification,
    this.states,
    this.stickyTracking,
    this.tileShape,
    this.tooltip,
    this.turboThreshold,
    this.visible,
    this.zIndex,
    this.zoneAxis,
    this.zones,
    this.zoomEnabled,
    this.id,
    this.index,
    this.legendIndex,
    this.name,
    this.xAxis,
    this.yAxis,
  });

  /// Not available
  final dynamic allAreas;

  /// (Highcharts, Highmaps) An array of data points for the series. For
  final List<dynamic>? data;

  /// Not available
  final dynamic dataParser;

  /// Not available
  final dynamic dataURL;

  /// Not available
  final dynamic mapData;

  /// Not available
  final dynamic stack;

  /// (Highcharts, Highstock, Highmaps, Gantt) This property is only in
  final String? type;

  /// (Highcharts, Highmaps) Accessibility options for a series.
  final HCSeriesAccessibilityOptionsObject? accessibility;

  /// (Highcharts, Highmaps) Allow this series' points to be selected by
  final dynamic allowPointSelect;

  /// (Highcharts, Highmaps) Animation is disabled by default on the
  final dynamic animation;

  /// (Highmaps) The border color of the map areas.
  final dynamic borderColor;

  /// (Highcharts, Highmaps) The border radius for each heatmap item. The
  final num? borderRadius;

  /// (Highmaps) The border width for each heatmap item.
  final num? borderWidth;

  /// (Highcharts, Highmaps) An additional class name to apply to the
  final String? className;

  /// (Highcharts, Highmaps) Disable this option to allow series rendering
  final dynamic clip;

  /// (Highcharts) The main color of the series. In heat maps this color is
  final dynamic color;

  /// (Highcharts, Highstock, Highmaps) When using dual or multiple color
  final dynamic colorAxis;

  /// (Highcharts, Highmaps) Styled mode only. A specific color index to
  final num? colorIndex;

  /// (Highcharts, Highstock, Highmaps) Determines what data value should
  final String? colorKey;

  /// (Highcharts, Highmaps) The column size - how many X axis units each
  final num? colsize;

  /// (Highcharts, Highstock, Gantt) When true, each point or column edge
  final dynamic crisp;

  /// (Highcharts, Highmaps) You can set the cursor to "pointer" if you
  final String? cursor;

  /// (Highcharts, Highmaps) A reserved subspace to store options and
  final HCDictionary? custom;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for the series data
  final dynamic dataLabels;

  /// (Highcharts, Highmaps) The mapping between the data table and the
  final HCDataMappingOptionsObject? dataMapping;

  /// (Highcharts, Highmaps) Deprecated. Use
  final String? description;

  /// (Highcharts, Highmaps) Enable or disable the mouse tracking for a
  final dynamic enableMouseTracking;

  /// (Highcharts, Highmaps) General event handlers for the series items.
  final HCSeriesEventsOptionsObject? events;

  /// (Highcharts, Highstock) Defines when to display a gap in the graph,
  final num? gapSize;

  /// (Highcharts, Highstock) Together with gapSize, this option defines
  final String? gapUnit;

  /// (Highcharts, Highmaps) Highlight only the hovered point and fade the
  final dynamic inactiveOtherPoints;

  /// (Highcharts, Highmaps) When set to `false` will prevent the series
  final dynamic includeInDataExport;

  /// (Highcharts, Highmaps) Make the heatmap render its data points as an
  final dynamic interpolation;

  /// (Highcharts, Highmaps) An array specifying which option maps to which
  final List<String>? keys;

  /// (Highcharts, Highstock, Gantt) Series labels are placed as close to
  final HCSeriesLabelOptionsObject? label;

  /// (Highcharts, Highmaps) What type of legend symbol to render for this
  final String? legendSymbol;

  /// (Highcharts, Highstock, Gantt) The id of another series to link to.
  final String? linkedTo;

  final dynamic marker;

  /// (Highcharts, Highmaps) The color for the parts of the graph or points
  final dynamic negativeColor;

  /// (Highcharts, Highmaps) The color applied to null points. In styled
  final dynamic nullColor;

  /// (Highcharts, Highstock) Whether or not data-points with the value of
  final dynamic nullInteraction;

  /// (Highcharts, Highmaps) Options for the _Series on point_ feature.
  final dynamic onPoint;

  /// (Highcharts, Highmaps) Opacity of a series parts: line, fill (e.g.
  final num? opacity;

  /// (Highcharts, Highmaps) Properties for each single point.
  final HCPlotSeriesPointOptions? point;

  /// (Highcharts, Highmaps) Deprecated. Use
  final dynamic pointDescriptionFormat;

  /// (Highcharts, Highmaps) Deprecated. Use
  final dynamic pointDescriptionFormatter;

  /// (Highcharts, Highmaps) The padding between points in the tilemap.
  final num? pointPadding;

  /// (Highcharts, Highstock) When true, X values in the data set are
  final dynamic relativeXValue;

  /// (Highcharts, Highmaps) The row size - how many Y axis units each
  final num? rowsize;

  /// (Highcharts, Highmaps) Whether to select the series initially. If
  final dynamic selected;

  /// (Highcharts, Highmaps) If true, a checkbox is displayed next to the
  final dynamic showCheckbox;

  /// (Highcharts, Highmaps) Whether to display this particular series or
  final dynamic showInLegend;

  /// (Highcharts, Highmaps) Deprecated. Use
  final dynamic skipKeyboardNavigation;

  /// (Highcharts, Highmaps) Sonification/audio chart options for a series.
  final HCSeriesSonificationOptions? sonification;

  /// (Highcharts, Highmaps) A collection of options for different series
  final HCSeriesStatesOptionsObject? states;

  /// (Highcharts, Highstock, Highmaps) Sticky tracking of mouse events.
  final dynamic stickyTracking;

  /// (Highcharts, Highmaps) The shape of the tiles in the tilemap.
  final String? tileShape;

  /// (Highcharts, Highstock, Highmaps) A configuration object for the
  final HCSeriesTooltipOptionsObject? tooltip;

  /// (Highcharts, Highstock, Gantt) When a series contains a `data` array
  final num? turboThreshold;

  /// (Highcharts, Highmaps) Set the initial visibility of the series.
  final dynamic visible;

  /// (Highmaps) Define the z index of the series.
  final num? zIndex;

  /// (Highcharts, Highstock) Defines the Axis on which the zones are
  final String? zoneAxis;

  /// (Highcharts, Highstock) An array defining zones within a series.
  final List<HCSeriesZonesOptionsObject>? zones;

  /// (Highcharts, Highmaps) Whether to zoom non-cartesian series. If
  final dynamic zoomEnabled;

  /// (Highcharts, Highstock, Highmaps, Gantt) An id for the series. This can
  final String? id;

  /// (Highcharts, Highstock, Highmaps, Gantt) The index of the series in the
  final num? index;

  /// (Highcharts, Highstock, Highmaps, Gantt) The sequential index of the
  final num? legendIndex;

  /// (Highcharts, Highstock, Highmaps, Gantt) The name of the series as shown
  final String? name;

  /// (Highcharts, Highstock) When using dual or multiple x axes, this number
  final dynamic xAxis;

  /// (Highcharts, Highstock) When using dual or multiple y axes, this number
  final dynamic yAxis;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (allAreas != null) {
      json["allAreas"] = hcJsonValue(allAreas);
    }
    if (data != null) {
      json["data"] = data!.map((e) => hcJsonValue(e)).toList();
    }
    if (dataParser != null) {
      json["dataParser"] = hcJsonValue(dataParser);
    }
    if (dataURL != null) {
      json["dataURL"] = hcJsonValue(dataURL);
    }
    if (mapData != null) {
      json["mapData"] = hcJsonValue(mapData);
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
    if (borderColor != null) {
      json["borderColor"] = hcJsonValue(borderColor);
    }
    if (borderRadius != null) {
      json["borderRadius"] = borderRadius;
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
    if (colsize != null) {
      json["colsize"] = colsize;
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
    if (gapSize != null) {
      json["gapSize"] = gapSize;
    }
    if (gapUnit != null) {
      json["gapUnit"] = gapUnit;
    }
    if (inactiveOtherPoints != null) {
      json["inactiveOtherPoints"] = hcJsonValue(inactiveOtherPoints);
    }
    if (includeInDataExport != null) {
      json["includeInDataExport"] = hcJsonValue(includeInDataExport);
    }
    if (interpolation != null) {
      json["interpolation"] = hcJsonValue(interpolation);
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
    if (marker != null) {
      json["marker"] = hcJsonValue(marker);
    }
    if (negativeColor != null) {
      json["negativeColor"] = hcJsonValue(negativeColor);
    }
    if (nullColor != null) {
      json["nullColor"] = hcJsonValue(nullColor);
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
    if (pointPadding != null) {
      json["pointPadding"] = pointPadding;
    }
    if (relativeXValue != null) {
      json["relativeXValue"] = hcJsonValue(relativeXValue);
    }
    if (rowsize != null) {
      json["rowsize"] = rowsize;
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
    if (tileShape != null) {
      json["tileShape"] = tileShape;
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
    if (zIndex != null) {
      json["zIndex"] = zIndex;
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
    if (name != null) {
      json["name"] = name;
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
