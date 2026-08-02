part of 'hc_options.dart';

/// (Highcharts, Highstock) Options for series data sorting.
class HCPlotSmaDataSortingOptions implements HCOption {
  const HCPlotSmaDataSortingOptions({
    this.enabled,
    this.matchByName,
    this.sortKey,
  });

  /// (Highcharts, Highstock) Enable or disable data sorting for the series. Use xAxis.reversed to change the sorting order.
  final bool? enabled;

  /// (Highcharts, Highstock) Whether to allow matching points by name in an update. If this option is disabled, points will be matched by order.
  final bool? matchByName;

  /// (Highcharts, Highstock) Determines what data value should be used to sort by.
  final String? sortKey;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    if (matchByName != null) {
      json['matchByName'] = matchByName;
    }
    if (sortKey != null) {
      json['sortKey'] = sortKey;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Gantt) Styles for the series label. The color defaults to the series color, or a contrast color if `onArea`.
class HCPlotSmaLabelStyleOptions implements HCOption {
  const HCPlotSmaLabelStyleOptions({
    this.fontSize,
    this.fontWeight,
  });

  final num? fontSize;

  final String? fontWeight;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (fontSize != null) {
      json['fontSize'] = fontSize;
    }
    if (fontWeight != null) {
      json['fontWeight'] = fontWeight;
    }
    return json;
  }
}

/// (Highstock) Animation when hovering over the marker.
class HCPlotSmaMarkerStatesHoverAnimationOptions implements HCOption {
  const HCPlotSmaMarkerStatesHoverAnimationOptions({
    this.duration,
  });

  final num? duration;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (duration != null) {
      json['duration'] = duration;
    }
    return json;
  }
}

/// (Highstock) Options for the connector in the _Series on point_ feature.
class HCPlotSmaOnPointConnectorOptions implements HCOption {
  const HCPlotSmaOnPointConnectorOptions({
    this.dashstyle,
    this.stroke,
    this.width,
  });

  /// (Highstock) A name for the dash style to use for the connector.
  final String? dashstyle;

  /// (Highstock) Color of the connector line. By default it's the series' color.
  final String? stroke;

  /// (Highstock) Pixel width of the connector line.
  final num? width;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (dashstyle != null) {
      json['dashstyle'] = dashstyle;
    }
    if (stroke != null) {
      json['stroke'] = stroke;
    }
    if (width != null) {
      json['width'] = width;
    }
    return json;
  }
}

/// (Highstock) Options for the _Series on point_ feature. Only `pie` and `sunburst` series are supported at this moment.
class HCPlotSmaOnPointOptions implements HCOption {
  const HCPlotSmaOnPointOptions({
    this.connectorOptions,
    this.id,
    this.position,
  });

  /// (Highstock) Options for the connector in the _Series on point_ feature.
  final dynamic connectorOptions;

  /// (Highstock) The `id` of the point that we connect the series to. Only points with a given `plotX` and `plotY` values and map points are valid.
  final String? id;

  /// (Highstock) Options allowing to set a position and an offset of the series in the _Series on point_ feature.
  final dynamic position;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (connectorOptions != null) {
      json['connectorOptions'] = hcJsonValue(connectorOptions);
    }
    if (id != null) {
      json['id'] = id;
    }
    if (position != null) {
      json['position'] = hcJsonValue(position);
    }
    return json;
  }
}

/// (Highstock) Options allowing to set a position and an offset of the series in the _Series on point_ feature.
class HCPlotSmaOnPointPositionOptions implements HCOption {
  const HCPlotSmaOnPointPositionOptions({
    this.offsetX,
    this.offsetY,
    this.x,
    this.y,
  });

  /// (Highstock) Series center offset from the original x position. If defined, the connector line is drawn connecting original position with new position.
  final num? offsetX;

  /// (Highstock) Series center offset from the original y position. If defined, the connector line is drawn from original position to a new position.
  final num? offsetY;

  /// (Highstock) X position of the series center. By default, the series is displayed on the point that it is connected to.
  final num? x;

  /// (Highstock) Y position of the series center. By default, the series is displayed on the point that it is connected to.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (offsetX != null) {
      json['offsetX'] = offsetX;
    }
    if (offsetY != null) {
      json['offsetY'] = offsetY;
    }
    if (x != null) {
      json['x'] = x;
    }
    if (y != null) {
      json['y'] = y;
    }
    return json;
  }
}

/// (Highstock) Simple moving average indicator (SMA). This series requires `linkedTo` option to be set.
class HCPlotSmaOptions implements HCOption {
  const HCPlotSmaOptions({
    this.accessibility,
    this.allowPointSelect,
    this.animation,
    this.animationLimit,
    this.boostBlending,
    this.boostThreshold,
    this.className,
    this.clip,
    this.color,
    this.colorIndex,
    this.colorKey,
    this.compare,
    this.compareBase,
    this.compareStart,
    this.compareToMain,
    this.connectNulls,
    this.crisp,
    this.cropThreshold,
    this.cumulative,
    this.cumulativeStart,
    this.cursor,
    this.custom,
    this.dashStyle,
    this.dataGrouping,
    this.dataLabels,
    this.dataMapping,
    this.dataSorting,
    this.description,
    this.enableMouseTracking,
    this.events,
    this.findNearestPointBy,
    this.gapSize,
    this.gapUnit,
    this.getExtremesFromAll,
    this.inactiveOtherPoints,
    this.includeInDataExport,
    this.label,
    this.lastPrice,
    this.lastVisiblePrice,
    this.legendSymbol,
    this.legendSymbolColor,
    this.linecap,
    this.lineWidth,
    this.linkedTo,
    this.marker,
    this.name,
    this.negativeColor,
    this.nullInteraction,
    this.onPoint,
    this.opacity,
    this.params,
    this.point,
    this.pointDescriptionFormat,
    this.pointDescriptionFormatter,
    this.relativeXValue,
    this.selected,
    this.shadow,
    this.showCheckbox,
    this.showInLegend,
    this.skipKeyboardNavigation,
    this.softThreshold,
    this.sonification,
    this.states,
    this.step,
    this.stickyTracking,
    this.threshold,
    this.tooltip,
    this.turboThreshold,
    this.visible,
    this.zoneAxis,
    this.zones,
    this.zoomEnabled,
  });

  /// (Highstock) Accessibility options for a series.
  final HCSeriesAccessibilityOptionsObject? accessibility;

  /// (Highstock) Allow this series' points to be selected by clicking on the graphic (columns, point markers, pie slices, map areas etc).
  final bool? allowPointSelect;

  /// (Highstock) Enable or disable the initial animation when a series is displayed. The animation can also be set as a configuration object. Please note that this option only applies to the initial animation of the series itself. For other animations, see chart.animation and the animation parameter unde
  final dynamic animation;

  /// (Highstock) For some series, there is a limit that shuts down animation by default when the total number of points in the chart is too high. For example, for a column chart and its derivatives, animation does not run if there is more than 250 points totally. To disable this cap, set `animationLimit`
  final num? animationLimit;

  /// (Highstock) Sets the color blending in the boost module.
  final String? boostBlending;

  /// (Highstock) Set the point threshold for when a series should enter boost mode.
  final num? boostThreshold;

  /// (Highstock) An additional class name to apply to the series' graphical elements. This option does not replace default class names of the graphical element. Changes to the series' color will also be reflected in a chart's legend and tooltip.
  final String? className;

  /// (Highstock) Disable this option to allow series rendering in the whole plotting area.
  final bool? clip;

  /// (Highstock) The main color of the series. In line type series it applies to the line and the point markers unless otherwise specified. In bar type series it applies to the bars unless a color is specified per point. The default value is pulled from the `options.colors` array.
  final dynamic color;

  /// (Highstock) Styled mode only. A specific color index to use for the series, so its graphic representations are given the class name `highcharts-color-{n}`.
  final num? colorIndex;

  /// (Highcharts, Highstock, Highmaps) Determines what data value should be used to calculate point color if `colorAxis` is used. Requires to set `min` and `max` if some custom point property is used or if approximation for data grouping is set to `'sum'`.
  final String? colorKey;

  /// (Highstock) Compare the values of the series against the first non-null, non- zero value in the visible range. The y axis will show percentage or absolute change depending on whether `compare` is set to `"percent"` or `"value"`. When this is applied to multiple series, it allows comparing the develo
  final String? compare;

  /// (Highstock) When compare is `percent`, this option dictates whether to use 0 or 100 as the base of comparison.
  final dynamic compareBase;

  /// (Highstock) Defines if comparison should start from the first point within the visible range or should start from the last point **before** the range.
  final bool? compareStart;

  /// (Highstock) Whether to compare indicator to the main series values or indicator values.
  final bool? compareToMain;

  /// (Highcharts, Highstock) Whether to connect a graph line across null points, or render a gap between the two points on either side of the null.
  final bool? connectNulls;

  /// (Highcharts, Highstock, Gantt) When true, each point or column edge is rounded to its nearest pixel in order to render sharp on screen. In some cases, when there are a lot of densely packed columns, this leads to visible difference in column widths or distance between columns. In these cases, settin
  final bool? crisp;

  /// (Highcharts, Highstock) When the series contains less points than the crop threshold, all points are drawn, even if the points fall outside the visible plot area at the current zoom. The advantage of drawing all points (including markers and columns), is that animation is performed on updates. On th
  final num? cropThreshold;

  /// (Highstock) Cumulative Sum feature replaces points' values with the following formula: `sum of all previous points' values + current point's value`. Works only for points in a visible range. Adds the `cumulativeSum` field to each point object that can be accessed e.g. in the tooltip.pointFormat.
  final bool? cumulative;

  /// (Highstock) Defines if cumulation should start from the first point within the visible range or should start from the last point **before** the range.
  final bool? cumulativeStart;

  /// (Highstock) You can set the cursor to "pointer" if you have click events attached to the series, to signal to the user that the points and lines can be clicked.
  final String? cursor;

  /// (Highstock) A reserved subspace to store options and values for customized functionality. Here you can add additional data for your own event callbacks and formatter callbacks.
  final HCDictionary? custom;

  /// (Highstock) Name of the dash style to use for the graph, or for some series types the outline of each shape.
  final String? dashStyle;

  /// (Highstock) Data grouping is the concept of sampling the data values into larger blocks in order to ease readability and increase performance of the JavaScript charts. Highcharts Stock by default applies data grouping when the points become closer than a certain pixel value, determined by the `group
  final HCDataGroupingOptionsObject? dataGrouping;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for the series data labels, appearing next to each data point.
  final dynamic dataLabels;

  /// (Highstock) The mapping between the data table and the series data points. This is used in conjunction with the `dataTable` option (on chart or series level) to map columns from the data table to the properties of the data points. The keys of the `dataMapping` object correspond to the properties of
  final HCDataMappingOptionsObject? dataMapping;

  /// (Highcharts, Highstock) Options for series data sorting.
  final HCPlotSmaDataSortingOptions? dataSorting;

  /// (Highstock) Deprecated. Use plotOptions.series.accessibility.description instead.
  final String? description;

  /// (Highstock) Enable or disable the mouse tracking for a specific series. This includes point tooltips and click events on graphs and points. For large datasets it improves performance.
  final bool? enableMouseTracking;

  /// (Highstock) General event handlers for the series items. These event hooks can also be attached to the series at run time using the `Highcharts.addEvent` function.
  final HCSeriesEventsOptionsObject? events;

  /// (Highstock) Determines whether the series should look for the nearest point in both dimensions or just the x-dimension when hovering the series. Defaults to `'xy'` for scatter series and `'x'` for most other series. If the data has duplicate x-values, it is recommended to set this to `'xy'` to allow
  final String? findNearestPointBy;

  /// (Highcharts, Highstock) Defines when to display a gap in the graph, together with the gapUnit option.
  final num? gapSize;

  /// (Highcharts, Highstock) Together with gapSize, this option defines where to draw gaps in the graph.
  final String? gapUnit;

  /// (Highcharts, Highstock, Gantt) Whether to use the Y extremes of the total chart width or only the zoomed area when zooming in on parts of the X axis. By default, the Y axis adjusts to the min and max of the visible data. Cartesian series only.
  final bool? getExtremesFromAll;

  /// (Highstock) Highlight only the hovered point and fade the remaining points.
  final bool? inactiveOtherPoints;

  /// (Highstock) When set to `false` will prevent the series data from being included in any form of data export.
  final bool? includeInDataExport;

  /// (Highcharts, Highstock, Gantt) Series labels are placed as close to the series as possible in a natural way, seeking to avoid other series. The goal of this feature is to make the chart more easily readable, like if a human designer placed the labels in the optimal position.
  final HCSeriesLabelOptionsObject? label;

  /// (Highstock) The line marks the last price from all points.
  final HCSeriesLastPriceOptionsObject? lastPrice;

  /// (Highstock) The line marks the last price from visible range of points.
  final HCSeriesLastVisiblePriceOptionsObject? lastVisiblePrice;

  /// (Highstock) What type of legend symbol to render for this series. Can be one of `areaMarker`, `lineMarker` or `rectangle`.
  final String? legendSymbol;

  /// (Highcharts, Highstock, Highmaps) Defines the color of the legend symbol for this series. Defaults to undefined, in which case the series color is used. Does not work with styled mode.
  final dynamic legendSymbolColor;

  /// (Highstock) The line cap used for line ends and line joins on the graph.
  final String? linecap;

  /// (Highcharts, Highstock) Pixel width of the graph line.
  final num? lineWidth;

  /// (Highcharts, Highstock, Gantt) The main series ID that indicator will be based on. Required for this indicator.
  final String? linkedTo;

  /// (Highstock) Options for the point markers of line and scatter-like series. Properties like `fillColor`, `lineColor` and `lineWidth` define the visual appearance of the markers. The `symbol` option defines the shape. Other series types, like column series, don't have markers, but have visual options
  final HCPointMarkerOptionsObject? marker;

  /// (Highstock) The name of the series as shown in the legend, tooltip etc. If not set, it will be based on a technical indicator type and default params.
  final String? name;

  /// (Highstock) The color for the parts of the graph or points that are below the threshold. Note that `zones` takes precedence over the negative color. Using `negativeColor` is equivalent to applying a zone with value of 0.
  final dynamic negativeColor;

  /// (Highcharts, Highstock) Whether or not data-points with the value of `null` should be interactive. When this is set to `true`, tooltips may highlight these points, and this option also enables keyboard navigation for such points. Format options for such points include `nullFormat` and `nullFormatter
  final bool? nullInteraction;

  /// (Highstock) Options for the _Series on point_ feature. Only `pie` and `sunburst` series are supported at this moment.
  final dynamic onPoint;

  /// (Highstock) Opacity of a series parts: line, fill (e.g. area) and dataLabels.
  final num? opacity;

  /// (Highstock) Parameters used in calculation of regression series' points.
  final HCPlotSmaParamsOptions? params;

  /// (Highstock) Properties for each single point.
  final HCPlotSeriesPointOptions? point;

  /// (Highstock) Deprecated. Use series.accessibility.point.descriptionFormat instead.
  final dynamic pointDescriptionFormat;

  /// (Highstock) Deprecated. Use series.accessibility.point.descriptionFormatter instead.
  final dynamic pointDescriptionFormatter;

  /// (Highcharts, Highstock) When true, X values in the data set are relative to the current `pointStart`, `pointInterval` and `pointIntervalUnit` settings. This allows compression of the data for datasets with irregular X values.
  final bool? relativeXValue;

  /// (Highstock) Whether to select the series initially. If `showCheckbox` is true, the checkbox next to the series name in the legend will be checked for a selected series.
  final bool? selected;

  /// (Highstock) Whether to apply a drop shadow to the graph line. Since 2.3 the shadow can be an object configuration containing `color`, `offsetX`, `offsetY`, `opacity` and `width`.
  final dynamic shadow;

  /// (Highstock) If true, a checkbox is displayed next to the legend item to allow selecting the series. The state of the checkbox is determined by the `selected` option.
  final bool? showCheckbox;

  /// (Highstock) Whether to display this particular series or series type in the legend. Standalone series are shown in legend by default, and linked series are not. Since v7.2.0 it is possible to show series that use colorAxis by setting this option to `true`.
  final bool? showInLegend;

  /// (Highstock) Deprecated. Use series.accessibility.keyboardNavigation instead.
  final bool? skipKeyboardNavigation;

  /// (Highcharts, Highstock) When this is true, the series will not cause the Y axis to cross the zero plane (or threshold option) unless the data actually crosses the plane.
  final bool? softThreshold;

  /// (Highstock) Sonification/audio chart options for a series.
  final HCSeriesSonificationOptions? sonification;

  /// (Highstock) A collection of options for different series states.
  final HCSeriesStatesOptionsObject? states;

  /// (Highcharts, Highstock) Whether to apply steps to the line. Possible values are `left`, `center` and `right`.
  final String? step;

  /// (Highstock) Sticky tracking of mouse events. When true, the `mouseOut` event on a series isn't triggered until the mouse moves over another series, or out of the plot area. When false, the `mouseOut` event on a series is triggered when the mouse leaves the area around the series' graph or markers. T
  final bool? stickyTracking;

  /// (Highcharts, Highstock) The threshold, also called zero level or base level. For line type series this is only used in conjunction with negativeColor.
  final num? threshold;

  /// (Highstock) A configuration object for the tooltip rendering of each single series. Properties are inherited from tooltip, but only the following properties can be defined on a series level.
  final HCSeriesTooltipOptionsObject? tooltip;

  /// (Highcharts, Highstock, Gantt) When a series contains a `data` array that is longer than this, the Series class looks for data configurations of plain numbers or arrays of numbers. The first and last valid points are checked. If found, the rest of the data is assumed to be the same. This saves expen
  final num? turboThreshold;

  /// (Highstock) Set the initial visibility of the series.
  final bool? visible;

  /// (Highcharts, Highstock) Defines the Axis on which the zones are applied.
  final String? zoneAxis;

  /// (Highcharts, Highstock) An array defining zones within a series. Zones can be applied to the X axis, Y axis or Z axis for bubbles, according to the `zoneAxis` option. The zone definitions have to be in ascending order regarding to the value.
  final List<HCSeriesZonesOptionsObject>? zones;

  /// (Highstock) Whether to zoom non-cartesian series. If `chart.zooming` is set, the option allows to disable zooming on an individual non-cartesian series. By default zooming is enabled for all series.
  final bool? zoomEnabled;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (accessibility != null) {
      json['accessibility'] = accessibility!.toJson();
    }
    if (allowPointSelect != null) {
      json['allowPointSelect'] = allowPointSelect;
    }
    if (animation != null) {
      json['animation'] = hcJsonValue(animation);
    }
    if (animationLimit != null) {
      json['animationLimit'] = animationLimit;
    }
    if (boostBlending != null) {
      json['boostBlending'] = boostBlending;
    }
    if (boostThreshold != null) {
      json['boostThreshold'] = boostThreshold;
    }
    if (className != null) {
      json['className'] = className;
    }
    if (clip != null) {
      json['clip'] = clip;
    }
    if (color != null) {
      json['color'] = hcJsonValue(color);
    }
    if (colorIndex != null) {
      json['colorIndex'] = colorIndex;
    }
    if (colorKey != null) {
      json['colorKey'] = colorKey;
    }
    if (compare != null) {
      json['compare'] = compare;
    }
    if (compareBase != null) {
      json['compareBase'] = hcJsonValue(compareBase);
    }
    if (compareStart != null) {
      json['compareStart'] = compareStart;
    }
    if (compareToMain != null) {
      json['compareToMain'] = compareToMain;
    }
    if (connectNulls != null) {
      json['connectNulls'] = connectNulls;
    }
    if (crisp != null) {
      json['crisp'] = crisp;
    }
    if (cropThreshold != null) {
      json['cropThreshold'] = cropThreshold;
    }
    if (cumulative != null) {
      json['cumulative'] = cumulative;
    }
    if (cumulativeStart != null) {
      json['cumulativeStart'] = cumulativeStart;
    }
    if (cursor != null) {
      json['cursor'] = cursor;
    }
    if (custom != null) {
      json['custom'] = custom!.toJson();
    }
    if (dashStyle != null) {
      json['dashStyle'] = dashStyle;
    }
    if (dataGrouping != null) {
      json['dataGrouping'] = dataGrouping!.toJson();
    }
    if (dataLabels != null) {
      json['dataLabels'] = hcJsonValue(dataLabels);
    }
    if (dataMapping != null) {
      json['dataMapping'] = dataMapping!.toJson();
    }
    if (dataSorting != null) {
      json['dataSorting'] = dataSorting!.toJson();
    }
    if (description != null) {
      json['description'] = description;
    }
    if (enableMouseTracking != null) {
      json['enableMouseTracking'] = enableMouseTracking;
    }
    if (events != null) {
      json['events'] = events!.toJson();
    }
    if (findNearestPointBy != null) {
      json['findNearestPointBy'] = findNearestPointBy;
    }
    if (gapSize != null) {
      json['gapSize'] = gapSize;
    }
    if (gapUnit != null) {
      json['gapUnit'] = gapUnit;
    }
    if (getExtremesFromAll != null) {
      json['getExtremesFromAll'] = getExtremesFromAll;
    }
    if (inactiveOtherPoints != null) {
      json['inactiveOtherPoints'] = inactiveOtherPoints;
    }
    if (includeInDataExport != null) {
      json['includeInDataExport'] = includeInDataExport;
    }
    if (label != null) {
      json['label'] = label!.toJson();
    }
    if (lastPrice != null) {
      json['lastPrice'] = lastPrice!.toJson();
    }
    if (lastVisiblePrice != null) {
      json['lastVisiblePrice'] = lastVisiblePrice!.toJson();
    }
    if (legendSymbol != null) {
      json['legendSymbol'] = legendSymbol;
    }
    if (legendSymbolColor != null) {
      json['legendSymbolColor'] = hcJsonValue(legendSymbolColor);
    }
    if (linecap != null) {
      json['linecap'] = linecap;
    }
    if (lineWidth != null) {
      json['lineWidth'] = lineWidth;
    }
    if (linkedTo != null) {
      json['linkedTo'] = linkedTo;
    }
    if (marker != null) {
      json['marker'] = marker!.toJson();
    }
    if (name != null) {
      json['name'] = name;
    }
    if (negativeColor != null) {
      json['negativeColor'] = hcJsonValue(negativeColor);
    }
    if (nullInteraction != null) {
      json['nullInteraction'] = nullInteraction;
    }
    if (onPoint != null) {
      json['onPoint'] = hcJsonValue(onPoint);
    }
    if (opacity != null) {
      json['opacity'] = opacity;
    }
    if (params != null) {
      json['params'] = params!.toJson();
    }
    if (point != null) {
      json['point'] = point!.toJson();
    }
    if (pointDescriptionFormat != null) {
      json['pointDescriptionFormat'] = hcJsonValue(pointDescriptionFormat);
    }
    if (pointDescriptionFormatter != null) {
      json['pointDescriptionFormatter'] =
          hcJsonValue(pointDescriptionFormatter);
    }
    if (relativeXValue != null) {
      json['relativeXValue'] = relativeXValue;
    }
    if (selected != null) {
      json['selected'] = selected;
    }
    if (shadow != null) {
      json['shadow'] = hcJsonValue(shadow);
    }
    if (showCheckbox != null) {
      json['showCheckbox'] = showCheckbox;
    }
    if (showInLegend != null) {
      json['showInLegend'] = showInLegend;
    }
    if (skipKeyboardNavigation != null) {
      json['skipKeyboardNavigation'] = skipKeyboardNavigation;
    }
    if (softThreshold != null) {
      json['softThreshold'] = softThreshold;
    }
    if (sonification != null) {
      json['sonification'] = sonification!.toJson();
    }
    if (states != null) {
      json['states'] = states!.toJson();
    }
    if (step != null) {
      json['step'] = step;
    }
    if (stickyTracking != null) {
      json['stickyTracking'] = stickyTracking;
    }
    if (threshold != null) {
      json['threshold'] = threshold;
    }
    if (tooltip != null) {
      json['tooltip'] = tooltip!.toJson();
    }
    if (turboThreshold != null) {
      json['turboThreshold'] = turboThreshold;
    }
    if (visible != null) {
      json['visible'] = visible;
    }
    if (zoneAxis != null) {
      json['zoneAxis'] = zoneAxis;
    }
    if (zones != null) {
      json['zones'] = zones!.map((e) => e.toJson()).toList();
    }
    if (zoomEnabled != null) {
      json['zoomEnabled'] = zoomEnabled;
    }
    return json;
  }
}

/// (Highstock) Parameters used in calculation of regression series' points.
class HCPlotSmaParamsOptions implements HCOption {
  const HCPlotSmaParamsOptions({
    this.index,
    this.period,
  });

  /// (Highstock) The point index which indicator calculations will base. For example using OHLC data, index=2 means the indicator will be calculated using Low values.
  final num? index;

  /// (Highstock) The base period for indicator calculations. This is the number of data points which are taken into account for the indicator calculations.
  final num? period;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (index != null) {
      json['index'] = index;
    }
    if (period != null) {
      json['period'] = period;
    }
    return json;
  }
}

/// (Highcharts, Highstock) Animation setting for hovering the graph in line-type series.
class HCPlotSmaStatesHoverAnimationOptions implements HCOption {
  const HCPlotSmaStatesHoverAnimationOptions({
    this.duration,
  });

  /// (Highcharts, Highstock) The duration of the hover animation in milliseconds. By default the hover state animates quickly in, and slowly back to normal.
  final num? duration;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (duration != null) {
      json['duration'] = duration;
    }
    return json;
  }
}

/// (Highstock) Animation when not hovering over the marker.
class HCPlotSmaStatesInactiveAnimationOptions implements HCOption {
  const HCPlotSmaStatesInactiveAnimationOptions({
    this.duration,
  });

  final num? duration;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (duration != null) {
      json['duration'] = duration;
    }
    return json;
  }
}

/// (Highcharts, Highstock) Animation setting for hovering the graph in line-type series.
class HCPlotSmaStatesSelectAnimationOptions implements HCOption {
  const HCPlotSmaStatesSelectAnimationOptions({
    this.duration,
  });

  /// (Highcharts, Highstock) The duration of the hover animation in milliseconds. By default the hover state animates quickly in, and slowly back to normal.
  final num? duration;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (duration != null) {
      json['duration'] = duration;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Gantt) For series on datetime axes, the date format in the tooltip's header will by default be guessed based on the closest data points. This member gives the default string representations used for each unit. For an overview of the string or object configuration, see dateFor
class HCPlotSmaTooltipDateTimeLabelFormatsOptions implements HCOption {
  const HCPlotSmaTooltipDateTimeLabelFormatsOptions({
    this.day,
    this.hour,
    this.millisecond,
    this.minute,
    this.month,
    this.second,
    this.week,
    this.year,
  });

  final String? day;

  final String? hour;

  final String? millisecond;

  final String? minute;

  final String? month;

  final String? second;

  final String? week;

  final String? year;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (day != null) {
      json['day'] = day;
    }
    if (hour != null) {
      json['hour'] = hour;
    }
    if (millisecond != null) {
      json['millisecond'] = millisecond;
    }
    if (minute != null) {
      json['minute'] = minute;
    }
    if (month != null) {
      json['month'] = month;
    }
    if (second != null) {
      json['second'] = second;
    }
    if (week != null) {
      json['week'] = week;
    }
    if (year != null) {
      json['year'] = year;
    }
    return json;
  }
}

/// (Highstock) Options for the tooltip header when tooltip.split is enabled. The header is the box containing the X value in a split tooltip.
class HCPlotSmaTooltipHeaderOptions implements HCOption {
  const HCPlotSmaTooltipHeaderOptions({
    this.backgroundColor,
    this.borderColor,
    this.borderWidth,
    this.distance,
    this.shape,
    this.style,
  });

  /// (Highstock) Background color for the tooltip header when tooltip.split is enabled.
  final dynamic backgroundColor;

  /// (Highstock) Border color for the tooltip header when tooltip.split is enabled.
  final dynamic borderColor;

  /// (Highstock) The width of the border for the tooltip header when tooltip.split is enabled.
  final num? borderWidth;

  /// (Highstock) Distance between the plot area and the header (except the chevron) in a split tooltip, in pixels. The default value makes the header text align with the axis labels.
  final num? distance;

  /// (Highstock) The name of a symbol to use for the border around the tooltip header. Applies only when tooltip.split is enabled.
  final String? shape;

  /// (Highstock) CSS styles for the tooltip header. The default is `{ fontSize: '1em' }`, ensuring that the header text is the same size as the axis labels.
  final dynamic style;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (backgroundColor != null) {
      json['backgroundColor'] = hcJsonValue(backgroundColor);
    }
    if (borderColor != null) {
      json['borderColor'] = hcJsonValue(borderColor);
    }
    if (borderWidth != null) {
      json['borderWidth'] = borderWidth;
    }
    if (distance != null) {
      json['distance'] = distance;
    }
    if (shape != null) {
      json['shape'] = shape;
    }
    if (style != null) {
      json['style'] = hcJsonValue(style);
    }
    return json;
  }
}

/// (Highstock) Positioning options for fixed tooltip, taking effect only when tooltip.fixed is `true`.
class HCPlotSmaTooltipPositionOptions implements HCOption {
  const HCPlotSmaTooltipPositionOptions({
    this.align,
    this.relativeTo,
    this.verticalAlign,
    this.x,
    this.y,
  });

  /// (Highstock) The horizontal alignment of the fixed tooltip.
  final String? align;

  /// (Highstock) What the fixed tooltip alignment should be relative to.
  final String? relativeTo;

  /// (Highstock) The vertical alignment of the fixed tooltip.
  final String? verticalAlign;

  /// (Highstock) X pixel offset from the given position. Can be used to shy away from axis lines, grid lines etc to avoid the tooltip overlapping other elements.
  final num? x;

  /// (Highstock) Y pixel offset from the given position. Can be used to shy away from axis lines, grid lines etc to avoid the tooltip overlapping other elements.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (align != null) {
      json['align'] = align;
    }
    if (relativeTo != null) {
      json['relativeTo'] = relativeTo;
    }
    if (verticalAlign != null) {
      json['verticalAlign'] = verticalAlign;
    }
    if (x != null) {
      json['x'] = x;
    }
    if (y != null) {
      json['y'] = y;
    }
    return json;
  }
}

/// (Highcharts) Point accessibility options for a series.
class HCPlotSolidgaugeAccessibilityPointOptions implements HCOption {
  const HCPlotSolidgaugeAccessibilityPointOptions({
    this.dateFormat,
    this.describeNull,
    this.descriptionFormat,
    this.valueDecimals,
    this.valueDescriptionFormat,
    this.valuePrefix,
    this.valueSuffix,
  });

  /// (Highcharts) Date format to use for points on datetime axes when describing them to screen reader users.
  final String? dateFormat;

  /// (Highcharts) Whether or not to describe points with the value `null` to assistive technology, such as screen readers.
  final bool? describeNull;

  /// (Highcharts) A format string to use instead of the default for point descriptions.
  final String? descriptionFormat;

  /// (Highcharts) Decimals to use for the values in the point descriptions. Uses tooltip.valueDecimals if not defined.
  final num? valueDecimals;

  /// (Highcharts) Format to use for describing the values of data points to assistive technology - including screen readers. The point context is available as `{point}`.
  final String? valueDescriptionFormat;

  /// (Highcharts) Prefix to add to the values in the point descriptions. Uses tooltip.valuePrefix if not defined.
  final String? valuePrefix;

  /// (Highcharts) Suffix to add to the values in the point descriptions. Uses tooltip.valueSuffix if not defined.
  final String? valueSuffix;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (dateFormat != null) {
      json['dateFormat'] = dateFormat;
    }
    if (describeNull != null) {
      json['describeNull'] = describeNull;
    }
    if (descriptionFormat != null) {
      json['descriptionFormat'] = descriptionFormat;
    }
    if (valueDecimals != null) {
      json['valueDecimals'] = valueDecimals;
    }
    if (valueDescriptionFormat != null) {
      json['valueDescriptionFormat'] = valueDescriptionFormat;
    }
    if (valuePrefix != null) {
      json['valuePrefix'] = valuePrefix;
    }
    if (valueSuffix != null) {
      json['valueSuffix'] = valueSuffix;
    }
    return json;
  }
}

/// (Highcharts) Enable or disable the initial animation when a series is displayed for the `dataLabels`. The animation can also be set as a configuration object. Please note that this option only applies to the initial animation.
class HCPlotSolidgaugeDataLabelsAnimationOptions implements HCOption {
  const HCPlotSolidgaugeDataLabelsAnimationOptions({
    this.defer,
  });

  /// (Highcharts) The animation delay time in milliseconds. Set to `0` to render the data labels immediately. As `undefined` inherits defer time from the series.animation.defer.
  final num? defer;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (defer != null) {
      json['defer'] = defer;
    }
    return json;
  }
}

/// (Highcharts) Data labels for the gauge. For gauges, the data labels are enabled by default and shown in the center.
class HCPlotSolidgaugeDataLabelsOptions implements HCOption {
  const HCPlotSolidgaugeDataLabelsOptions({
    this.align,
    this.alignTo,
    this.allowOverlap,
    this.animation,
    this.backgroundColor,
    this.borderColor,
    this.borderRadius,
    this.borderWidth,
    this.className,
    this.color,
    this.crop,
    this.defer,
    this.distance,
    this.enabled,
    this.filter,
    this.format,
    this.inside,
    this.labelrank,
    this.nullFormat,
    this.overflow,
    this.padding,
    this.position,
    this.rotation,
    this.shadow,
    this.shape,
    this.style,
    this.textPath,
    this.useHTML,
    this.verticalAlign,
    this.x,
    this.y,
    this.zIndex,
  });

  /// (Highcharts) The alignment of the data label compared to the point. If `right`, the right side of the label should be touching the point. For points with an extent, like columns, the alignments also dictates how to align it inside the box, as given with the inside option. Can be one of `left`, `cent
  final String? align;

  /// (Highcharts) Alignment method for data labels. If set to `plotEdges`, the labels are aligned within the plot area in the direction of the y-axis. So in a regular column chart, the labels are aligned vertically according to the `verticalAlign` setting. In a bar chart, which is inverted, the labels ar
  final String? alignTo;

  /// (Highcharts) Whether to allow data labels to overlap. To make the labels less sensitive for overlapping, the dataLabels.padding can be set to 0.
  final bool? allowOverlap;

  /// (Highcharts) Enable or disable the initial animation when a series is displayed for the `dataLabels`. The animation can also be set as a configuration object. Please note that this option only applies to the initial animation.
  final dynamic animation;

  /// (Highcharts) The background color or gradient for the data label. In addition to regular colors, there are two special setting for this option:
  final dynamic backgroundColor;

  /// (Highcharts) The border color for the data label. Setting it to `auto` will use the point's color. Defaults to `undefined`.
  final dynamic borderColor;

  /// (Highcharts) The border radius in pixels for the data label.
  final num? borderRadius;

  /// (Highcharts) The border width in pixels for the data label.
  final num? borderWidth;

  /// (Highcharts) A class name for the data label. Particularly in styled mode, this can be used to give each series' or point's data label unique styling. In addition to this option, a default color class name is added so that we can give the labels a contrast text shadow.
  final String? className;

  /// (Highcharts) This options is deprecated. Use style.color instead.
  final dynamic color;

  /// (Highcharts) Whether to hide data labels that are outside the plot area. By default, the data label is moved inside the plot area according to the overflow option.
  final bool? crop;

  /// (Highcharts, Highstock, Gantt) Whether to defer displaying the data labels until the initial series animation has finished. Setting to `false` renders the data label immediately. If set to `true` inherits the defer time set in plotOptions.series.animation.
  final bool? defer;

  /// (Highcharts, Highstock, Gantt) The distance of the data label from the data point. Note that the `padding` setting also affects the rendered distance, but is not visible unless the data label has a border or background.
  final num? distance;

  /// (Highcharts) Enable or disable the data labels.
  final bool? enabled;

  /// (Highcharts) A declarative filter to control of which data labels to display. The declarative filter is designed for use when callback functions are not available, like when the chart options require a pure JSON structure or for use with graphical editors. For programmatic control, use the `formatte
  final HCDataLabelsFilterOptionsObject? filter;

  /// (Highcharts) A format string for the data label. Available variables are the same as for `formatter`.
  final String? format;

  /// (Highcharts) For points with an extent, like columns or map areas, whether to align the data label inside the box or to the actual value point. Defaults to `false` in most cases, `true` in stacked columns.
  final bool? inside;

  /// (Highcharts) The rank for this point's data label in case of collision. If two data labels are about to overlap, only the one with the highest `labelrank` will be drawn.
  final num? labelrank;

  /// (Highcharts) Format for points with the value of null. Works analogously to format. `nullFormat` can be applied only to series which support displaying null points. `heatmap` and `tilemap` supports `nullFormat` by default while the following series requires [#series.nullInteraction] set to `true`: `
  final dynamic nullFormat;

  /// (Highcharts) How to handle data labels that flow outside the plot area. The default is `"justify"`, which aligns them inside the plot area. For columns and bars, this means it will be moved inside the bar. To display data labels outside the plot area, set `crop` to `false` and `overflow` to `"allow"
  final String? overflow;

  /// (Highcharts) When either the `borderWidth` or the `backgroundColor` is set, this is the padding within the box.
  final num? padding;

  /// (Highcharts) Aligns data labels relative to points. If `center` alignment is not possible, it defaults to `right`.
  final String? position;

  /// (Highcharts) Text rotation in degrees. Note that due to a more complex structure, backgrounds, borders and padding will be lost on a rotated data label.
  final num? rotation;

  /// (Highcharts) The shadow of the box. Works best with `borderWidth` or `backgroundColor`. Since 2.3 the shadow can be an object configuration containing `color`, `offsetX`, `offsetY`, `opacity` and `width`.
  final dynamic shadow;

  /// (Highcharts) The name of a symbol to use for the border around the label. Symbols are predefined functions on the Renderer object.
  final String? shape;

  /// (Highcharts) Styles for the label. The default `color` setting is `"contrast"`, which is a pseudo color that Highcharts picks up and applies the maximum contrast to the underlying point item, for example the bar in a bar chart.
  final dynamic style;

  /// (Highcharts) Options for a label text which should follow marker's shape. Border and background are disabled for a label that follows a path.
  final HCDataLabelsTextPathOptionsObject? textPath;

  /// (Highcharts) Whether to use HTML to render the labels.
  final bool? useHTML;

  /// (Highcharts) The vertical alignment of a data label. Can be one of `top`, `middle` or `bottom`. The default value depends on the data, for instance in a column chart, the label is above positive values and below negative values.
  final String? verticalAlign;

  /// (Highcharts) The x position offset of the label relative to the point in pixels.
  final num? x;

  /// (Highcharts) The y position offset of the label relative to the point in pixels.
  final num? y;

  /// (Highcharts) The z index of the data labels group. Does not apply below series level options.
  final num? zIndex;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (align != null) {
      json['align'] = align;
    }
    if (alignTo != null) {
      json['alignTo'] = alignTo;
    }
    if (allowOverlap != null) {
      json['allowOverlap'] = allowOverlap;
    }
    if (animation != null) {
      json['animation'] = hcJsonValue(animation);
    }
    if (backgroundColor != null) {
      json['backgroundColor'] = hcJsonValue(backgroundColor);
    }
    if (borderColor != null) {
      json['borderColor'] = hcJsonValue(borderColor);
    }
    if (borderRadius != null) {
      json['borderRadius'] = borderRadius;
    }
    if (borderWidth != null) {
      json['borderWidth'] = borderWidth;
    }
    if (className != null) {
      json['className'] = className;
    }
    if (color != null) {
      json['color'] = hcJsonValue(color);
    }
    if (crop != null) {
      json['crop'] = crop;
    }
    if (defer != null) {
      json['defer'] = defer;
    }
    if (distance != null) {
      json['distance'] = distance;
    }
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    if (filter != null) {
      json['filter'] = filter!.toJson();
    }
    if (format != null) {
      json['format'] = format;
    }
    if (inside != null) {
      json['inside'] = inside;
    }
    if (labelrank != null) {
      json['labelrank'] = labelrank;
    }
    if (nullFormat != null) {
      json['nullFormat'] = hcJsonValue(nullFormat);
    }
    if (overflow != null) {
      json['overflow'] = overflow;
    }
    if (padding != null) {
      json['padding'] = padding;
    }
    if (position != null) {
      json['position'] = position;
    }
    if (rotation != null) {
      json['rotation'] = rotation;
    }
    if (shadow != null) {
      json['shadow'] = hcJsonValue(shadow);
    }
    if (shape != null) {
      json['shape'] = shape;
    }
    if (style != null) {
      json['style'] = hcJsonValue(style);
    }
    if (textPath != null) {
      json['textPath'] = textPath!.toJson();
    }
    if (useHTML != null) {
      json['useHTML'] = useHTML;
    }
    if (verticalAlign != null) {
      json['verticalAlign'] = verticalAlign;
    }
    if (x != null) {
      json['x'] = x;
    }
    if (y != null) {
      json['y'] = y;
    }
    if (zIndex != null) {
      json['zIndex'] = zIndex;
    }
    return json;
  }
}

/// (Highcharts) Styles for the label. The default `color` setting is `"contrast"`, which is a pseudo color that Highcharts picks up and applies the maximum contrast to the underlying point item, for example the bar in a bar chart.
class HCPlotSolidgaugeDataLabelsStyleOptions implements HCOption {
  const HCPlotSolidgaugeDataLabelsStyleOptions({
    this.fontSize,
  });

  final num? fontSize;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (fontSize != null) {
      json['fontSize'] = fontSize;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Gantt) Styles for the series label. The color defaults to the series color, or a contrast color if `onArea`.
class HCPlotSolidgaugeLabelStyleOptions implements HCOption {
  const HCPlotSolidgaugeLabelStyleOptions({
    this.fontSize,
    this.fontWeight,
  });

  final num? fontSize;

  final String? fontWeight;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (fontSize != null) {
      json['fontSize'] = fontSize;
    }
    if (fontWeight != null) {
      json['fontWeight'] = fontWeight;
    }
    return json;
  }
}

/// (Highcharts) Options for the connector in the _Series on point_ feature.
class HCPlotSolidgaugeOnPointConnectorOptions implements HCOption {
  const HCPlotSolidgaugeOnPointConnectorOptions({
    this.dashstyle,
    this.stroke,
    this.width,
  });

  /// (Highcharts) A name for the dash style to use for the connector.
  final String? dashstyle;

  /// (Highcharts) Color of the connector line. By default it's the series' color.
  final String? stroke;

  /// (Highcharts) Pixel width of the connector line.
  final num? width;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (dashstyle != null) {
      json['dashstyle'] = dashstyle;
    }
    if (stroke != null) {
      json['stroke'] = stroke;
    }
    if (width != null) {
      json['width'] = width;
    }
    return json;
  }
}

/// (Highcharts) Options for the _Series on point_ feature. Only `pie` and `sunburst` series are supported at this moment.
class HCPlotSolidgaugeOnPointOptions implements HCOption {
  const HCPlotSolidgaugeOnPointOptions({
    this.connectorOptions,
    this.id,
    this.position,
  });

  /// (Highcharts) Options for the connector in the _Series on point_ feature.
  final dynamic connectorOptions;

  /// (Highcharts) The `id` of the point that we connect the series to. Only points with a given `plotX` and `plotY` values and map points are valid.
  final String? id;

  /// (Highcharts) Options allowing to set a position and an offset of the series in the _Series on point_ feature.
  final dynamic position;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (connectorOptions != null) {
      json['connectorOptions'] = hcJsonValue(connectorOptions);
    }
    if (id != null) {
      json['id'] = id;
    }
    if (position != null) {
      json['position'] = hcJsonValue(position);
    }
    return json;
  }
}

/// (Highcharts) Options allowing to set a position and an offset of the series in the _Series on point_ feature.
class HCPlotSolidgaugeOnPointPositionOptions implements HCOption {
  const HCPlotSolidgaugeOnPointPositionOptions({
    this.offsetX,
    this.offsetY,
    this.x,
    this.y,
  });

  /// (Highcharts) Series center offset from the original x position. If defined, the connector line is drawn connecting original position with new position.
  final num? offsetX;

  /// (Highcharts) Series center offset from the original y position. If defined, the connector line is drawn from original position to a new position.
  final num? offsetY;

  /// (Highcharts) X position of the series center. By default, the series is displayed on the point that it is connected to.
  final num? x;

  /// (Highcharts) Y position of the series center. By default, the series is displayed on the point that it is connected to.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (offsetX != null) {
      json['offsetX'] = offsetX;
    }
    if (offsetY != null) {
      json['offsetY'] = offsetY;
    }
    if (x != null) {
      json['x'] = x;
    }
    if (y != null) {
      json['y'] = y;
    }
    return json;
  }
}

/// (Highcharts) A solid gauge is a circular gauge where the value is indicated by a filled arc, and the color of the arc may variate with the value.
class HCPlotSolidgaugeOptions implements HCOption {
  const HCPlotSolidgaugeOptions({
    this.accessibility,
    this.allowPointSelect,
    this.animation,
    this.borderRadius,
    this.className,
    this.clip,
    this.color,
    this.colorByPoint,
    this.colorIndex,
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
    this.innerRadius,
    this.keys,
    this.label,
    this.legendSymbol,
    this.legendSymbolColor,
    this.linecap,
    this.lineWidth,
    this.linkedTo,
    this.nullInteraction,
    this.onPoint,
    this.opacity,
    this.overshoot,
    this.point,
    this.pointDescriptionFormat,
    this.pointDescriptionFormatter,
    this.pointInterval,
    this.pointIntervalUnit,
    this.pointStart,
    this.radius,
    this.relativeXValue,
    this.rounded,
    this.selected,
    this.showCheckbox,
    this.showInLegend,
    this.skipKeyboardNavigation,
    this.sonification,
    this.stickyTracking,
    this.threshold,
    this.tooltip,
    this.visible,
    this.zoomEnabled,
  });

  /// (Highcharts) Accessibility options for a series.
  final HCSeriesAccessibilityOptionsObject? accessibility;

  /// (Highcharts) Allow this series' points to be selected by clicking on the graphic (columns, point markers, pie slices, map areas etc).
  final bool? allowPointSelect;

  /// (Highcharts) Enable or disable the initial animation when a series is displayed. The animation can also be set as a configuration object. Please note that this option only applies to the initial animation of the series itself. For other animations, see chart.animation and the animation parameter und
  final dynamic animation;

  /// (Highcharts) The corner radius of the border surrounding solid gauge. A number signifies pixels and percentage string, like for example `50%`, signifies a relative size.
  final dynamic borderRadius;

  /// (Highcharts) An additional class name to apply to the series' graphical elements. This option does not replace default class names of the graphical element. Changes to the series' color will also be reflected in a chart's legend and tooltip.
  final String? className;

  /// (Highcharts) Disable this option to allow series rendering in the whole plotting area.
  final bool? clip;

  /// (Highcharts) The main color of the series. In line type series it applies to the line and the point markers unless otherwise specified. In bar type series it applies to the bars unless a color is specified per point. The default value is pulled from the `options.colors` array.
  final String? color;

  /// (Highcharts) Whether to give each point an individual color.
  final bool? colorByPoint;

  /// (Highcharts) Styled mode only. A specific color index to use for the series, so its graphic representations are given the class name `highcharts-color-{n}`.
  final num? colorIndex;

  /// (Highcharts, Highstock, Gantt) When true, each point or column edge is rounded to its nearest pixel in order to render sharp on screen. In some cases, when there are a lot of densely packed columns, this leads to visible difference in column widths or distance between columns. In these cases, settin
  final bool? crisp;

  /// (Highcharts) You can set the cursor to "pointer" if you have click events attached to the series, to signal to the user that the points and lines can be clicked.
  final String? cursor;

  /// (Highcharts) A reserved subspace to store options and values for customized functionality. Here you can add additional data for your own event callbacks and formatter callbacks.
  final HCDictionary? custom;

  /// (Highcharts) Data labels for the gauge. For gauges, the data labels are enabled by default and shown in the center.
  final dynamic dataLabels;

  /// (Highcharts) The mapping between the data table and the series data points. This is used in conjunction with the `dataTable` option (on chart or series level) to map columns from the data table to the properties of the data points. The keys of the `dataMapping` object correspond to the properties of
  final HCDataMappingOptionsObject? dataMapping;

  /// (Highcharts) Deprecated. Use plotOptions.series.accessibility.description instead.
  final String? description;

  /// (Highcharts) Enable or disable the mouse tracking for a specific series. This includes point tooltips and click events on graphs and points. For large datasets it improves performance.
  final bool? enableMouseTracking;

  /// (Highcharts) General event handlers for the series items. These event hooks can also be attached to the series at run time using the `Highcharts.addEvent` function.
  final HCSeriesEventsOptionsObject? events;

  /// (Highcharts, Highstock) Defines when to display a gap in the graph, together with the gapUnit option.
  final num? gapSize;

  /// (Highcharts, Highstock) Together with gapSize, this option defines where to draw gaps in the graph.
  final String? gapUnit;

  /// (Highcharts) Highlight only the hovered point and fade the remaining points.
  final bool? inactiveOtherPoints;

  /// (Highcharts) When set to `false` will prevent the series data from being included in any form of data export.
  final bool? includeInDataExport;

  /// (Highcharts) The inner radius for points in a solid gauge. Can be given either as a pixel value (number), or as a percentage string, like `"50%"`. Defaults to match the `pane.innerSize`.
  final String? innerRadius;

  /// (Highcharts) An array specifying which option maps to which key in the data point array. This makes it convenient to work with unstructured data arrays from different sources.
  final List<String>? keys;

  /// (Highcharts, Highstock, Gantt) Series labels are placed as close to the series as possible in a natural way, seeking to avoid other series. The goal of this feature is to make the chart more easily readable, like if a human designer placed the labels in the optimal position.
  final HCSeriesLabelOptionsObject? label;

  /// (Highcharts) What type of legend symbol to render for this series. Can be one of `areaMarker`, `lineMarker` or `rectangle`.
  final String? legendSymbol;

  /// (Highcharts, Highstock, Highmaps) Defines the color of the legend symbol for this series. Defaults to undefined, in which case the series color is used. Does not work with styled mode.
  final dynamic legendSymbolColor;

  /// (Highcharts) Whether the strokes of the solid gauge should be `round` or `square`.
  final String? linecap;

  /// (Highcharts, Highstock) Pixel width of the graph line.
  final num? lineWidth;

  /// (Highcharts, Highstock, Gantt) The id of another series to link to. Additionally, the value can be ":previous" to link to the previous series. When two series are linked, only the first one appears in the legend. Toggling the visibility of this also toggles the linked series.
  final String? linkedTo;

  /// (Highcharts, Highstock) Whether or not data-points with the value of `null` should be interactive. When this is set to `true`, tooltips may highlight these points, and this option also enables keyboard navigation for such points. Format options for such points include `nullFormat` and `nullFormatter
  final bool? nullInteraction;

  /// (Highcharts) Options for the _Series on point_ feature. Only `pie` and `sunburst` series are supported at this moment.
  final dynamic onPoint;

  /// (Highcharts) Opacity of a series parts: line, fill (e.g. area) and dataLabels.
  final num? opacity;

  /// (Highcharts) Allow the gauge to overshoot the end of the perimeter axis by this many degrees. Say if the gauge axis goes from 0 to 60, a value of 100, or 1000, will show 5 degrees beyond the end of the axis when this option is set to 5.
  final num? overshoot;

  /// (Highcharts) Properties for each single point.
  final HCPlotSeriesPointOptions? point;

  /// (Highcharts) Deprecated. Use series.accessibility.point.descriptionFormat instead.
  final dynamic pointDescriptionFormat;

  /// (Highcharts) Deprecated. Use series.accessibility.point.descriptionFormatter instead.
  final dynamic pointDescriptionFormatter;

  /// (Highcharts, Highstock, Gantt) If no x values are given for the points in a series, `pointInterval` defines the interval of the x values. For example, if a series contains one value every decade starting from year 0, set `pointInterval` to `10`. In true `datetime` axes, the `pointInterval` is set in
  final num? pointInterval;

  /// (Highcharts, Highstock, Gantt) On datetime series, this allows for setting the pointInterval to irregular time units, `day`, `month` and `year`. A day is usually the same as 24 hours, but `pointIntervalUnit` also takes the DST crossover into consideration when dealing with local time. Combine this o
  final String? pointIntervalUnit;

  /// (Highcharts, Highstock, Gantt) If no x values are given for the points in a series, `pointStart` defines on what value to start. For example, if a series contains one yearly value starting from 1945, set `pointStart` to 1945.
  final dynamic pointStart;

  /// (Highcharts) The outer radius for points in a solid gauge. Can be given either as a pixel value (number), or as a percentage string, like `"100%"`. Defaults to match the `pane.size`.
  final String? radius;

  /// (Highcharts, Highstock) When true, X values in the data set are relative to the current `pointStart`, `pointInterval` and `pointIntervalUnit` settings. This allows compression of the data for datasets with irregular X values.
  final bool? relativeXValue;

  /// (Highcharts) Whether to draw rounded edges on the gauge. This options adds the radius of the rounding to the ends of the arc, so it extends past the actual values. When `borderRadius` is set, it takes precedence over `rounded`. A `borderRadius` of 50% behaves like `rounded`, except the shape is not
  final bool? rounded;

  /// (Highcharts) Whether to select the series initially. If `showCheckbox` is true, the checkbox next to the series name in the legend will be checked for a selected series.
  final bool? selected;

  /// (Highcharts) If true, a checkbox is displayed next to the legend item to allow selecting the series. The state of the checkbox is determined by the `selected` option.
  final bool? showCheckbox;

  /// (Highcharts) Whether to display this particular series or series type in the legend. Defaults to false for gauge series.
  final bool? showInLegend;

  /// (Highcharts) Deprecated. Use series.accessibility.keyboardNavigation instead.
  final bool? skipKeyboardNavigation;

  /// (Highcharts) Sonification/audio chart options for a series.
  final HCSeriesSonificationOptions? sonification;

  /// (Highcharts) Sticky tracking of mouse events. When true, the `mouseOut` event on a series isn't triggered until the mouse moves over another series, or out of the plot area. When false, the `mouseOut` event on a series is triggered when the mouse leaves the area around the series' graph or markers.
  final bool? stickyTracking;

  /// (Highcharts) The threshold or base level for the gauge.
  final num? threshold;

  /// (Highcharts) A configuration object for the tooltip rendering of each single series. Properties are inherited from tooltip, but only the following properties can be defined on a series level.
  final HCSeriesTooltipOptionsObject? tooltip;

  /// (Highcharts) Set the initial visibility of the series.
  final bool? visible;

  /// (Highcharts) Whether to zoom non-cartesian series. If `chart.zooming` is set, the option allows to disable zooming on an individual non-cartesian series. By default zooming is enabled for all series.
  final bool? zoomEnabled;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (accessibility != null) {
      json['accessibility'] = accessibility!.toJson();
    }
    if (allowPointSelect != null) {
      json['allowPointSelect'] = allowPointSelect;
    }
    if (animation != null) {
      json['animation'] = hcJsonValue(animation);
    }
    if (borderRadius != null) {
      json['borderRadius'] = hcJsonValue(borderRadius);
    }
    if (className != null) {
      json['className'] = className;
    }
    if (clip != null) {
      json['clip'] = clip;
    }
    if (color != null) {
      json['color'] = color;
    }
    if (colorByPoint != null) {
      json['colorByPoint'] = colorByPoint;
    }
    if (colorIndex != null) {
      json['colorIndex'] = colorIndex;
    }
    if (crisp != null) {
      json['crisp'] = crisp;
    }
    if (cursor != null) {
      json['cursor'] = cursor;
    }
    if (custom != null) {
      json['custom'] = custom!.toJson();
    }
    if (dataLabels != null) {
      json['dataLabels'] = hcJsonValue(dataLabels);
    }
    if (dataMapping != null) {
      json['dataMapping'] = dataMapping!.toJson();
    }
    if (description != null) {
      json['description'] = description;
    }
    if (enableMouseTracking != null) {
      json['enableMouseTracking'] = enableMouseTracking;
    }
    if (events != null) {
      json['events'] = events!.toJson();
    }
    if (gapSize != null) {
      json['gapSize'] = gapSize;
    }
    if (gapUnit != null) {
      json['gapUnit'] = gapUnit;
    }
    if (inactiveOtherPoints != null) {
      json['inactiveOtherPoints'] = inactiveOtherPoints;
    }
    if (includeInDataExport != null) {
      json['includeInDataExport'] = includeInDataExport;
    }
    if (innerRadius != null) {
      json['innerRadius'] = innerRadius;
    }
    if (keys != null) {
      json['keys'] = keys;
    }
    if (label != null) {
      json['label'] = label!.toJson();
    }
    if (legendSymbol != null) {
      json['legendSymbol'] = legendSymbol;
    }
    if (legendSymbolColor != null) {
      json['legendSymbolColor'] = hcJsonValue(legendSymbolColor);
    }
    if (linecap != null) {
      json['linecap'] = linecap;
    }
    if (lineWidth != null) {
      json['lineWidth'] = lineWidth;
    }
    if (linkedTo != null) {
      json['linkedTo'] = linkedTo;
    }
    if (nullInteraction != null) {
      json['nullInteraction'] = nullInteraction;
    }
    if (onPoint != null) {
      json['onPoint'] = hcJsonValue(onPoint);
    }
    if (opacity != null) {
      json['opacity'] = opacity;
    }
    if (overshoot != null) {
      json['overshoot'] = overshoot;
    }
    if (point != null) {
      json['point'] = point!.toJson();
    }
    if (pointDescriptionFormat != null) {
      json['pointDescriptionFormat'] = hcJsonValue(pointDescriptionFormat);
    }
    if (pointDescriptionFormatter != null) {
      json['pointDescriptionFormatter'] =
          hcJsonValue(pointDescriptionFormatter);
    }
    if (pointInterval != null) {
      json['pointInterval'] = pointInterval;
    }
    if (pointIntervalUnit != null) {
      json['pointIntervalUnit'] = pointIntervalUnit;
    }
    if (pointStart != null) {
      json['pointStart'] = hcJsonValue(pointStart);
    }
    if (radius != null) {
      json['radius'] = radius;
    }
    if (relativeXValue != null) {
      json['relativeXValue'] = relativeXValue;
    }
    if (rounded != null) {
      json['rounded'] = rounded;
    }
    if (selected != null) {
      json['selected'] = selected;
    }
    if (showCheckbox != null) {
      json['showCheckbox'] = showCheckbox;
    }
    if (showInLegend != null) {
      json['showInLegend'] = showInLegend;
    }
    if (skipKeyboardNavigation != null) {
      json['skipKeyboardNavigation'] = skipKeyboardNavigation;
    }
    if (sonification != null) {
      json['sonification'] = sonification!.toJson();
    }
    if (stickyTracking != null) {
      json['stickyTracking'] = stickyTracking;
    }
    if (threshold != null) {
      json['threshold'] = threshold;
    }
    if (tooltip != null) {
      json['tooltip'] = tooltip!.toJson();
    }
    if (visible != null) {
      json['visible'] = visible;
    }
    if (zoomEnabled != null) {
      json['zoomEnabled'] = zoomEnabled;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Gantt) For series on datetime axes, the date format in the tooltip's header will by default be guessed based on the closest data points. This member gives the default string representations used for each unit. For an overview of the string or object configuration, see dateFor
class HCPlotSolidgaugeTooltipDateTimeLabelFormatsOptions implements HCOption {
  const HCPlotSolidgaugeTooltipDateTimeLabelFormatsOptions({
    this.day,
    this.hour,
    this.millisecond,
    this.minute,
    this.month,
    this.second,
    this.week,
    this.year,
  });

  final String? day;

  final String? hour;

  final String? millisecond;

  final String? minute;

  final String? month;

  final String? second;

  final String? week;

  final String? year;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (day != null) {
      json['day'] = day;
    }
    if (hour != null) {
      json['hour'] = hour;
    }
    if (millisecond != null) {
      json['millisecond'] = millisecond;
    }
    if (minute != null) {
      json['minute'] = minute;
    }
    if (month != null) {
      json['month'] = month;
    }
    if (second != null) {
      json['second'] = second;
    }
    if (week != null) {
      json['week'] = week;
    }
    if (year != null) {
      json['year'] = year;
    }
    return json;
  }
}

/// (Highcharts) Options for the tooltip header when tooltip.split is enabled. The header is the box containing the X value in a split tooltip.
class HCPlotSolidgaugeTooltipHeaderOptions implements HCOption {
  const HCPlotSolidgaugeTooltipHeaderOptions({
    this.backgroundColor,
    this.borderColor,
    this.borderWidth,
    this.distance,
    this.shape,
    this.style,
  });

  /// (Highcharts) Background color for the tooltip header when tooltip.split is enabled.
  final dynamic backgroundColor;

  /// (Highcharts) Border color for the tooltip header when tooltip.split is enabled.
  final dynamic borderColor;

  /// (Highcharts) The width of the border for the tooltip header when tooltip.split is enabled.
  final num? borderWidth;

  /// (Highcharts) Distance between the plot area and the header (except the chevron) in a split tooltip, in pixels. The default value makes the header text align with the axis labels.
  final num? distance;

  /// (Highcharts) The name of a symbol to use for the border around the tooltip header. Applies only when tooltip.split is enabled.
  final String? shape;

  /// (Highcharts) CSS styles for the tooltip header. The default is `{ fontSize: '1em' }`, ensuring that the header text is the same size as the axis labels.
  final dynamic style;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (backgroundColor != null) {
      json['backgroundColor'] = hcJsonValue(backgroundColor);
    }
    if (borderColor != null) {
      json['borderColor'] = hcJsonValue(borderColor);
    }
    if (borderWidth != null) {
      json['borderWidth'] = borderWidth;
    }
    if (distance != null) {
      json['distance'] = distance;
    }
    if (shape != null) {
      json['shape'] = shape;
    }
    if (style != null) {
      json['style'] = hcJsonValue(style);
    }
    return json;
  }
}

/// (Highcharts) Positioning options for fixed tooltip, taking effect only when tooltip.fixed is `true`.
class HCPlotSolidgaugeTooltipPositionOptions implements HCOption {
  const HCPlotSolidgaugeTooltipPositionOptions({
    this.align,
    this.relativeTo,
    this.verticalAlign,
    this.x,
    this.y,
  });

  /// (Highcharts) The horizontal alignment of the fixed tooltip.
  final String? align;

  /// (Highcharts) What the fixed tooltip alignment should be relative to.
  final String? relativeTo;

  /// (Highcharts) The vertical alignment of the fixed tooltip.
  final String? verticalAlign;

  /// (Highcharts) X pixel offset from the given position. Can be used to shy away from axis lines, grid lines etc to avoid the tooltip overlapping other elements.
  final num? x;

  /// (Highcharts) Y pixel offset from the given position. Can be used to shy away from axis lines, grid lines etc to avoid the tooltip overlapping other elements.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (align != null) {
      json['align'] = align;
    }
    if (relativeTo != null) {
      json['relativeTo'] = relativeTo;
    }
    if (verticalAlign != null) {
      json['verticalAlign'] = verticalAlign;
    }
    if (x != null) {
      json['x'] = x;
    }
    if (y != null) {
      json['y'] = y;
    }
    return json;
  }
}

/// (Highcharts, Highstock) Point accessibility options for a series.
class HCPlotSplineAccessibilityPointOptions implements HCOption {
  const HCPlotSplineAccessibilityPointOptions({
    this.dateFormat,
    this.describeNull,
    this.descriptionFormat,
    this.valueDecimals,
    this.valueDescriptionFormat,
    this.valuePrefix,
    this.valueSuffix,
  });

  /// (Highcharts, Highstock) Date format to use for points on datetime axes when describing them to screen reader users.
  final String? dateFormat;

  /// (Highcharts, Highstock) Whether or not to describe points with the value `null` to assistive technology, such as screen readers.
  final bool? describeNull;

  /// (Highcharts, Highstock) A format string to use instead of the default for point descriptions.
  final String? descriptionFormat;

  /// (Highcharts, Highstock) Decimals to use for the values in the point descriptions. Uses tooltip.valueDecimals if not defined.
  final num? valueDecimals;

  /// (Highcharts, Highstock) Format to use for describing the values of data points to assistive technology - including screen readers. The point context is available as `{point}`.
  final String? valueDescriptionFormat;

  /// (Highcharts, Highstock) Prefix to add to the values in the point descriptions. Uses tooltip.valuePrefix if not defined.
  final String? valuePrefix;

  /// (Highcharts, Highstock) Suffix to add to the values in the point descriptions. Uses tooltip.valueSuffix if not defined.
  final String? valueSuffix;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (dateFormat != null) {
      json['dateFormat'] = dateFormat;
    }
    if (describeNull != null) {
      json['describeNull'] = describeNull;
    }
    if (descriptionFormat != null) {
      json['descriptionFormat'] = descriptionFormat;
    }
    if (valueDecimals != null) {
      json['valueDecimals'] = valueDecimals;
    }
    if (valueDescriptionFormat != null) {
      json['valueDescriptionFormat'] = valueDescriptionFormat;
    }
    if (valuePrefix != null) {
      json['valuePrefix'] = valuePrefix;
    }
    if (valueSuffix != null) {
      json['valueSuffix'] = valueSuffix;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Enable or disable the initial animation when a series is displayed for the `dataLabels`. The animation can also be set as a configuration object. Please note that this option only applies to the initial animation.
class HCPlotSplineDataLabelsAnimationOptions implements HCOption {
  const HCPlotSplineDataLabelsAnimationOptions({
    this.defer,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) The animation delay time in milliseconds. Set to `0` to render the data labels immediately. As `undefined` inherits defer time from the series.animation.defer.
  final num? defer;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (defer != null) {
      json['defer'] = defer;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Options for the series data labels, appearing next to each data point.
class HCPlotSplineDataLabelsOptions implements HCOption {
  const HCPlotSplineDataLabelsOptions({
    this.align,
    this.alignTo,
    this.allowOverlap,
    this.animation,
    this.backgroundColor,
    this.borderColor,
    this.borderRadius,
    this.borderWidth,
    this.className,
    this.color,
    this.crop,
    this.defer,
    this.distance,
    this.enabled,
    this.filter,
    this.format,
    this.inside,
    this.labelrank,
    this.nullFormat,
    this.overflow,
    this.padding,
    this.position,
    this.rotation,
    this.shadow,
    this.shape,
    this.style,
    this.textPath,
    this.useHTML,
    this.verticalAlign,
    this.x,
    this.y,
    this.zIndex,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) The alignment of the data label compared to the point. If `right`, the right side of the label should be touching the point. For points with an extent, like columns, the alignments also dictates how to align it inside the box, as given with the inside option.
  final String? align;

  /// (Highcharts, Highstock, Highmaps, Gantt) Alignment method for data labels. If set to `plotEdges`, the labels are aligned within the plot area in the direction of the y-axis. So in a regular column chart, the labels are aligned vertically according to the `verticalAlign` setting. In a bar chart, whic
  final String? alignTo;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to allow data labels to overlap. To make the labels less sensitive for overlapping, the dataLabels.padding can be set to 0.
  final bool? allowOverlap;

  /// (Highcharts, Highstock, Highmaps, Gantt) Enable or disable the initial animation when a series is displayed for the `dataLabels`. The animation can also be set as a configuration object. Please note that this option only applies to the initial animation.
  final dynamic animation;

  /// (Highcharts, Highstock, Highmaps, Gantt) The background color or gradient for the data label. In addition to regular colors, there are two special setting for this option:
  final dynamic backgroundColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) The border color for the data label. Setting it to `auto` will use the point's color. Defaults to `undefined`.
  final dynamic borderColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) The border radius in pixels for the data label.
  final num? borderRadius;

  /// (Highcharts, Highstock, Highmaps, Gantt) The border width in pixels for the data label.
  final num? borderWidth;

  /// (Highcharts, Highstock, Highmaps, Gantt) A class name for the data label. Particularly in styled mode, this can be used to give each series' or point's data label unique styling. In addition to this option, a default color class name is added so that we can give the labels a contrast text shadow.
  final String? className;

  /// (Highcharts, Highstock, Highmaps, Gantt) This options is deprecated. Use style.color instead.
  final dynamic color;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to hide data labels that are outside the plot area. By default, the data label is moved inside the plot area according to the overflow option.
  final bool? crop;

  /// (Highcharts, Highstock, Gantt) Whether to defer displaying the data labels until the initial series animation has finished. Setting to `false` renders the data label immediately. If set to `true` inherits the defer time set in plotOptions.series.animation.
  final bool? defer;

  /// (Highcharts, Highstock, Gantt) The distance of the data label from the data point. Note that the `padding` setting also affects the rendered distance, but is not visible unless the data label has a border or background.
  final num? distance;

  /// (Highcharts, Highstock, Highmaps, Gantt) Enable or disable the data labels.
  final bool? enabled;

  /// (Highcharts, Highstock, Highmaps, Gantt) A declarative filter to control of which data labels to display. The declarative filter is designed for use when callback functions are not available, like when the chart options require a pure JSON structure or for use with graphical editors. For programmati
  final HCDataLabelsFilterOptionsObject? filter;

  /// (Highcharts, Highstock, Highmaps, Gantt) A format string for the data label. Available variables are the same as for `formatter`.
  final String? format;

  /// (Highcharts, Highstock, Highmaps, Gantt) For points with an extent, like columns or map areas, whether to align the data label inside the box or to the actual value point. Defaults to `false` in most cases, `true` in stacked columns.
  final bool? inside;

  /// (Highcharts, Highstock, Highmaps, Gantt) The rank for this point's data label in case of collision. If two data labels are about to overlap, only the one with the highest `labelrank` will be drawn.
  final num? labelrank;

  /// (Highcharts, Highstock, Highmaps, Gantt) Format for points with the value of null. Works analogously to format. `nullFormat` can be applied only to series which support displaying null points. `heatmap` and `tilemap` supports `nullFormat` by default while the following series requires [#series.nullI
  final dynamic nullFormat;

  /// (Highcharts, Highstock, Highmaps, Gantt) How to handle data labels that flow outside the plot area. The default is `"justify"`, which aligns them inside the plot area. For columns and bars, this means it will be moved inside the bar. To display data labels outside the plot area, set `crop` to `false
  final String? overflow;

  /// (Highcharts, Highstock, Highmaps, Gantt) When either the `borderWidth` or the `backgroundColor` is set, this is the padding within the box.
  final dynamic padding;

  /// (Highcharts, Highstock, Highmaps, Gantt) Aligns data labels relative to points. If `center` alignment is not possible, it defaults to `right`.
  final String? position;

  /// (Highcharts, Highstock, Highmaps, Gantt) Text rotation in degrees. Note that due to a more complex structure, backgrounds, borders and padding will be lost on a rotated data label.
  final num? rotation;

  /// (Highcharts, Highstock, Highmaps, Gantt) The shadow of the box. Works best with `borderWidth` or `backgroundColor`. Since 2.3 the shadow can be an object configuration containing `color`, `offsetX`, `offsetY`, `opacity` and `width`.
  final dynamic shadow;

  /// (Highcharts, Highstock, Highmaps, Gantt) The name of a symbol to use for the border around the label. Symbols are predefined functions on the Renderer object.
  final String? shape;

  /// (Highcharts, Highstock, Highmaps, Gantt) Styles for the label. The default `color` setting is `"contrast"`, which is a pseudo color that Highcharts picks up and applies the maximum contrast to the underlying point item, for example the bar in a bar chart.
  final HCCSSObject? style;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for a label text which should follow marker's shape. Border and background are disabled for a label that follows a path.
  final HCDataLabelsTextPathOptionsObject? textPath;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to use HTML to render the labels.
  final bool? useHTML;

  /// (Highcharts, Highstock, Highmaps, Gantt) The vertical alignment of a data label. Can be one of `top`, `middle` or `bottom`. The default value depends on the data, for instance in a column chart, the label is above positive values and below negative values.
  final String? verticalAlign;

  /// (Highcharts, Highstock, Highmaps, Gantt) The x position offset of the label relative to the point in pixels.
  final num? x;

  /// (Highcharts, Highstock, Highmaps, Gantt) The y position offset of the label relative to the point in pixels.
  final num? y;

  /// (Highcharts, Highstock, Highmaps, Gantt) The z index of the data labels group. Does not apply below series level options.
  final num? zIndex;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (align != null) {
      json['align'] = align;
    }
    if (alignTo != null) {
      json['alignTo'] = alignTo;
    }
    if (allowOverlap != null) {
      json['allowOverlap'] = allowOverlap;
    }
    if (animation != null) {
      json['animation'] = hcJsonValue(animation);
    }
    if (backgroundColor != null) {
      json['backgroundColor'] = hcJsonValue(backgroundColor);
    }
    if (borderColor != null) {
      json['borderColor'] = hcJsonValue(borderColor);
    }
    if (borderRadius != null) {
      json['borderRadius'] = borderRadius;
    }
    if (borderWidth != null) {
      json['borderWidth'] = borderWidth;
    }
    if (className != null) {
      json['className'] = className;
    }
    if (color != null) {
      json['color'] = hcJsonValue(color);
    }
    if (crop != null) {
      json['crop'] = crop;
    }
    if (defer != null) {
      json['defer'] = defer;
    }
    if (distance != null) {
      json['distance'] = distance;
    }
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    if (filter != null) {
      json['filter'] = filter!.toJson();
    }
    if (format != null) {
      json['format'] = format;
    }
    if (inside != null) {
      json['inside'] = inside;
    }
    if (labelrank != null) {
      json['labelrank'] = labelrank;
    }
    if (nullFormat != null) {
      json['nullFormat'] = hcJsonValue(nullFormat);
    }
    if (overflow != null) {
      json['overflow'] = overflow;
    }
    if (padding != null) {
      json['padding'] = hcJsonValue(padding);
    }
    if (position != null) {
      json['position'] = position;
    }
    if (rotation != null) {
      json['rotation'] = rotation;
    }
    if (shadow != null) {
      json['shadow'] = hcJsonValue(shadow);
    }
    if (shape != null) {
      json['shape'] = shape;
    }
    if (style != null) {
      json['style'] = style!.toJson();
    }
    if (textPath != null) {
      json['textPath'] = textPath!.toJson();
    }
    if (useHTML != null) {
      json['useHTML'] = useHTML;
    }
    if (verticalAlign != null) {
      json['verticalAlign'] = verticalAlign;
    }
    if (x != null) {
      json['x'] = x;
    }
    if (y != null) {
      json['y'] = y;
    }
    if (zIndex != null) {
      json['zIndex'] = zIndex;
    }
    return json;
  }
}

/// (Highcharts, Highstock) Options for series data sorting.
class HCPlotSplineDataSortingOptions implements HCOption {
  const HCPlotSplineDataSortingOptions({
    this.enabled,
    this.matchByName,
    this.sortKey,
  });

  /// (Highcharts, Highstock) Enable or disable data sorting for the series. Use xAxis.reversed to change the sorting order.
  final bool? enabled;

  /// (Highcharts, Highstock) Whether to allow matching points by name in an update. If this option is disabled, points will be matched by order.
  final bool? matchByName;

  /// (Highcharts, Highstock) Determines what data value should be used to sort by.
  final String? sortKey;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    if (matchByName != null) {
      json['matchByName'] = matchByName;
    }
    if (sortKey != null) {
      json['sortKey'] = sortKey;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Gantt) Styles for the series label. The color defaults to the series color, or a contrast color if `onArea`.
class HCPlotSplineLabelStyleOptions implements HCOption {
  const HCPlotSplineLabelStyleOptions({
    this.fontSize,
    this.fontWeight,
  });

  final num? fontSize;

  final String? fontWeight;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (fontSize != null) {
      json['fontSize'] = fontSize;
    }
    if (fontWeight != null) {
      json['fontWeight'] = fontWeight;
    }
    return json;
  }
}

/// (Highcharts, Highstock) Animation when hovering over the marker.
class HCPlotSplineMarkerStatesHoverAnimationOptions implements HCOption {
  const HCPlotSplineMarkerStatesHoverAnimationOptions({
    this.duration,
  });

  final num? duration;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (duration != null) {
      json['duration'] = duration;
    }
    return json;
  }
}

/// (Highcharts, Highstock) Options for the connector in the _Series on point_ feature.
class HCPlotSplineOnPointConnectorOptions implements HCOption {
  const HCPlotSplineOnPointConnectorOptions({
    this.dashstyle,
    this.stroke,
    this.width,
  });

  /// (Highcharts, Highstock) A name for the dash style to use for the connector.
  final String? dashstyle;

  /// (Highcharts, Highstock) Color of the connector line. By default it's the series' color.
  final String? stroke;

  /// (Highcharts, Highstock) Pixel width of the connector line.
  final num? width;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (dashstyle != null) {
      json['dashstyle'] = dashstyle;
    }
    if (stroke != null) {
      json['stroke'] = stroke;
    }
    if (width != null) {
      json['width'] = width;
    }
    return json;
  }
}

/// (Highcharts, Highstock) Options for the _Series on point_ feature. Only `pie` and `sunburst` series are supported at this moment.
class HCPlotSplineOnPointOptions implements HCOption {
  const HCPlotSplineOnPointOptions({
    this.connectorOptions,
    this.id,
    this.position,
  });

  /// (Highcharts, Highstock) Options for the connector in the _Series on point_ feature.
  final dynamic connectorOptions;

  /// (Highcharts, Highstock) The `id` of the point that we connect the series to. Only points with a given `plotX` and `plotY` values and map points are valid.
  final String? id;

  /// (Highcharts, Highstock) Options allowing to set a position and an offset of the series in the _Series on point_ feature.
  final dynamic position;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (connectorOptions != null) {
      json['connectorOptions'] = hcJsonValue(connectorOptions);
    }
    if (id != null) {
      json['id'] = id;
    }
    if (position != null) {
      json['position'] = hcJsonValue(position);
    }
    return json;
  }
}

/// (Highcharts, Highstock) Options allowing to set a position and an offset of the series in the _Series on point_ feature.
class HCPlotSplineOnPointPositionOptions implements HCOption {
  const HCPlotSplineOnPointPositionOptions({
    this.offsetX,
    this.offsetY,
    this.x,
    this.y,
  });

  /// (Highcharts, Highstock) Series center offset from the original x position. If defined, the connector line is drawn connecting original position with new position.
  final num? offsetX;

  /// (Highcharts, Highstock) Series center offset from the original y position. If defined, the connector line is drawn from original position to a new position.
  final num? offsetY;

  /// (Highcharts, Highstock) X position of the series center. By default, the series is displayed on the point that it is connected to.
  final num? x;

  /// (Highcharts, Highstock) Y position of the series center. By default, the series is displayed on the point that it is connected to.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (offsetX != null) {
      json['offsetX'] = offsetX;
    }
    if (offsetY != null) {
      json['offsetY'] = offsetY;
    }
    if (x != null) {
      json['x'] = x;
    }
    if (y != null) {
      json['y'] = y;
    }
    return json;
  }
}

/// (Highcharts, Highstock) A spline series is a special type of line series, where the segments between the data points are smoothed.
class HCPlotSplineOptions implements HCOption {
  const HCPlotSplineOptions({
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
    this.compare,
    this.compareBase,
    this.compareStart,
    this.connectEnds,
    this.connectNulls,
    this.crisp,
    this.cropThreshold,
    this.cumulative,
    this.cumulativeStart,
    this.cursor,
    this.custom,
    this.dashStyle,
    this.dataGrouping,
    this.dataLabels,
    this.dataMapping,
    this.dataSorting,
    this.description,
    this.dragDrop,
    this.enableMouseTracking,
    this.events,
    this.findNearestPointBy,
    this.gapSize,
    this.gapUnit,
    this.getExtremesFromAll,
    this.inactiveOtherPoints,
    this.includeInDataExport,
    this.keys,
    this.label,
    this.lastPrice,
    this.lastVisiblePrice,
    this.legendSymbol,
    this.legendSymbolColor,
    this.linecap,
    this.lineWidth,
    this.linkedTo,
    this.marker,
    this.navigatorOptions,
    this.negativeColor,
    this.nullInteraction,
    this.onPoint,
    this.opacity,
    this.point,
    this.pointDescriptionFormat,
    this.pointDescriptionFormatter,
    this.pointInterval,
    this.pointIntervalUnit,
    this.pointPlacement,
    this.pointRange,
    this.pointStart,
    this.relativeXValue,
    this.selected,
    this.shadow,
    this.showCheckbox,
    this.showInLegend,
    this.showInNavigator,
    this.skipKeyboardNavigation,
    this.softThreshold,
    this.sonification,
    this.stacking,
    this.states,
    this.stickyTracking,
    this.threshold,
    this.tooltip,
    this.turboThreshold,
    this.useOhlcData,
    this.visible,
    this.zoneAxis,
    this.zones,
    this.zoomEnabled,
  });

  /// (Highcharts, Highstock) Accessibility options for a series.
  final HCSeriesAccessibilityOptionsObject? accessibility;

  /// (Highcharts, Highstock) Allow this series' points to be selected by clicking on the graphic (columns, point markers, pie slices, map areas etc).
  final bool? allowPointSelect;

  /// (Highcharts, Highstock) Enable or disable the initial animation when a series is displayed. The animation can also be set as a configuration object. Please note that this option only applies to the initial animation of the series itself. For other animations, see chart.animation and the animation pa
  final dynamic animation;

  /// (Highcharts, Highstock) For some series, there is a limit that shuts down animation by default when the total number of points in the chart is too high. For example, for a column chart and its derivatives, animation does not run if there is more than 250 points totally. To disable this cap, set `ani
  final num? animationLimit;

  /// (Highcharts, Highstock) An additional class name to apply to the series' graphical elements. This option does not replace default class names of the graphical element. Changes to the series' color will also be reflected in a chart's legend and tooltip.
  final String? className;

  /// (Highcharts, Highstock) Disable this option to allow series rendering in the whole plotting area.
  final bool? clip;

  /// (Highcharts, Highstock) The main color of the series. In line type series it applies to the line and the point markers unless otherwise specified. In bar type series it applies to the bars unless a color is specified per point. The default value is pulled from the `options.colors` array.
  final dynamic color;

  /// (Highcharts, Highstock, Highmaps) When using dual or multiple color axes, this number defines which colorAxis the particular series is connected to. It refers to either the axis id or the index of the axis in the colorAxis array, with 0 being the first. Set this option to false to prevent a series f
  final dynamic colorAxis;

  /// (Highcharts, Highstock) Styled mode only. A specific color index to use for the series, so its graphic representations are given the class name `highcharts-color-{n}`.
  final num? colorIndex;

  /// (Highcharts, Highstock, Highmaps) Determines what data value should be used to calculate point color if `colorAxis` is used. Requires to set `min` and `max` if some custom point property is used or if approximation for data grouping is set to `'sum'`.
  final String? colorKey;

  /// (Highstock) Compare the values of the series against the first non-null, non- zero value in the visible range. The y axis will show percentage or absolute change depending on whether `compare` is set to `"percent"` or `"value"`. When this is applied to multiple series, it allows comparing the develo
  final String? compare;

  /// (Highstock) When compare is `percent`, this option dictates whether to use 0 or 100 as the base of comparison.
  final dynamic compareBase;

  /// (Highstock) Defines if comparison should start from the first point within the visible range or should start from the last point **before** the range.
  final bool? compareStart;

  /// (Highcharts) Polar charts only. Whether to connect the ends of a line series plot across the extremes.
  final bool? connectEnds;

  /// (Highcharts, Highstock) Whether to connect a graph line across null points, or render a gap between the two points on either side of the null.
  final bool? connectNulls;

  /// (Highcharts, Highstock, Gantt) When true, each point or column edge is rounded to its nearest pixel in order to render sharp on screen. In some cases, when there are a lot of densely packed columns, this leads to visible difference in column widths or distance between columns. In these cases, settin
  final bool? crisp;

  /// (Highcharts, Highstock) When the series contains less points than the crop threshold, all points are drawn, even if the points fall outside the visible plot area at the current zoom. The advantage of drawing all points (including markers and columns), is that animation is performed on updates. On th
  final num? cropThreshold;

  /// (Highstock) Cumulative Sum feature replaces points' values with the following formula: `sum of all previous points' values + current point's value`. Works only for points in a visible range. Adds the `cumulativeSum` field to each point object that can be accessed e.g. in the tooltip.pointFormat.
  final bool? cumulative;

  /// (Highstock) Defines if cumulation should start from the first point within the visible range or should start from the last point **before** the range.
  final bool? cumulativeStart;

  /// (Highcharts, Highstock) You can set the cursor to "pointer" if you have click events attached to the series, to signal to the user that the points and lines can be clicked.
  final String? cursor;

  /// (Highcharts, Highstock) A reserved subspace to store options and values for customized functionality. Here you can add additional data for your own event callbacks and formatter callbacks.
  final HCDictionary? custom;

  /// (Highcharts, Highstock) Name of the dash style to use for the graph, or for some series types the outline of each shape.
  final String? dashStyle;

  /// (Highstock) Data grouping is the concept of sampling the data values into larger blocks in order to ease readability and increase performance of the JavaScript charts. Highcharts Stock by default applies data grouping when the points become closer than a certain pixel value, determined by the `group
  final HCDataGroupingOptionsObject? dataGrouping;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for the series data labels, appearing next to each data point.
  final dynamic dataLabels;

  /// (Highcharts, Highstock) The mapping between the data table and the series data points. This is used in conjunction with the `dataTable` option (on chart or series level) to map columns from the data table to the properties of the data points. The keys of the `dataMapping` object correspond to the pr
  final HCDataMappingOptionsObject? dataMapping;

  /// (Highcharts, Highstock) Options for series data sorting.
  final HCPlotSplineDataSortingOptions? dataSorting;

  /// (Highcharts, Highstock) Deprecated. Use plotOptions.series.accessibility.description instead.
  final String? description;

  /// (Highcharts, Highstock) The draggable-points module allows points to be moved around or modified in the chart. In addition to the options mentioned under the `dragDrop` API structure, the module fires three events, point.dragStart, point.drag and point.drop.
  final HCSeriesDragDropOptionsObject? dragDrop;

  /// (Highcharts, Highstock) Enable or disable the mouse tracking for a specific series. This includes point tooltips and click events on graphs and points. For large datasets it improves performance.
  final bool? enableMouseTracking;

  /// (Highcharts, Highstock) General event handlers for the series items. These event hooks can also be attached to the series at run time using the `Highcharts.addEvent` function.
  final HCSeriesEventsOptionsObject? events;

  /// (Highcharts, Highstock) Determines whether the series should look for the nearest point in both dimensions or just the x-dimension when hovering the series. Defaults to `'xy'` for scatter series and `'x'` for most other series. If the data has duplicate x-values, it is recommended to set this to `'x
  final String? findNearestPointBy;

  /// (Highcharts, Highstock) Defines when to display a gap in the graph, together with the gapUnit option.
  final num? gapSize;

  /// (Highcharts, Highstock) Together with gapSize, this option defines where to draw gaps in the graph.
  final String? gapUnit;

  /// (Highcharts, Highstock, Gantt) Whether to use the Y extremes of the total chart width or only the zoomed area when zooming in on parts of the X axis. By default, the Y axis adjusts to the min and max of the visible data. Cartesian series only.
  final bool? getExtremesFromAll;

  /// (Highcharts, Highstock) Highlight only the hovered point and fade the remaining points.
  final bool? inactiveOtherPoints;

  /// (Highcharts, Highstock) When set to `false` will prevent the series data from being included in any form of data export.
  final bool? includeInDataExport;

  /// (Highcharts, Highstock) An array specifying which option maps to which key in the data point array. This makes it convenient to work with unstructured data arrays from different sources.
  final List<String>? keys;

  /// (Highcharts, Highstock, Gantt) Series labels are placed as close to the series as possible in a natural way, seeking to avoid other series. The goal of this feature is to make the chart more easily readable, like if a human designer placed the labels in the optimal position.
  final HCSeriesLabelOptionsObject? label;

  /// (Highstock) The line marks the last price from all points.
  final HCSeriesLastPriceOptionsObject? lastPrice;

  /// (Highstock) The line marks the last price from visible range of points.
  final HCSeriesLastVisiblePriceOptionsObject? lastVisiblePrice;

  /// (Highcharts, Highstock) What type of legend symbol to render for this series. Can be one of `areaMarker`, `lineMarker` or `rectangle`.
  final String? legendSymbol;

  /// (Highcharts, Highstock, Highmaps) Defines the color of the legend symbol for this series. Defaults to undefined, in which case the series color is used. Does not work with styled mode.
  final dynamic legendSymbolColor;

  /// (Highcharts, Highstock) The line cap used for line ends and line joins on the graph.
  final String? linecap;

  /// (Highcharts, Highstock) Pixel width of the graph line.
  final num? lineWidth;

  /// (Highcharts, Highstock, Gantt) The id of another series to link to. Additionally, the value can be ":previous" to link to the previous series. When two series are linked, only the first one appears in the legend. Toggling the visibility of this also toggles the linked series.
  final String? linkedTo;

  /// (Highcharts, Highstock) Options for the point markers of line and scatter-like series. Properties like `fillColor`, `lineColor` and `lineWidth` define the visual appearance of the markers. The `symbol` option defines the shape. Other series types, like column series, don't have markers, but have vis
  final HCPointMarkerOptionsObject? marker;

  /// (Highstock) Options for the corresponding navigator series if `showInNavigator` is `true` for this series. Available options are the same as any series, documented at plotOptions and series.
  final HCPlotSeriesOptions? navigatorOptions;

  /// (Highcharts, Highstock) The color for the parts of the graph or points that are below the threshold. Note that `zones` takes precedence over the negative color. Using `negativeColor` is equivalent to applying a zone with value of 0.
  final dynamic negativeColor;

  /// (Highcharts, Highstock) Whether or not data-points with the value of `null` should be interactive. When this is set to `true`, tooltips may highlight these points, and this option also enables keyboard navigation for such points. Format options for such points include `nullFormat` and `nullFormatter
  final bool? nullInteraction;

  /// (Highcharts, Highstock) Options for the _Series on point_ feature. Only `pie` and `sunburst` series are supported at this moment.
  final dynamic onPoint;

  /// (Highcharts, Highstock) Opacity of a series parts: line, fill (e.g. area) and dataLabels.
  final num? opacity;

  /// (Highcharts, Highstock) Properties for each single point.
  final HCPlotSeriesPointOptions? point;

  /// (Highcharts, Highstock) Deprecated. Use series.accessibility.point.descriptionFormat instead.
  final dynamic pointDescriptionFormat;

  /// (Highcharts, Highstock) Deprecated. Use series.accessibility.point.descriptionFormatter instead.
  final dynamic pointDescriptionFormatter;

  /// (Highcharts, Highstock, Gantt) If no x values are given for the points in a series, `pointInterval` defines the interval of the x values. For example, if a series contains one value every decade starting from year 0, set `pointInterval` to `10`. In true `datetime` axes, the `pointInterval` is set in
  final num? pointInterval;

  /// (Highcharts, Highstock, Gantt) On datetime series, this allows for setting the pointInterval to irregular time units, `day`, `month` and `year`. A day is usually the same as 24 hours, but `pointIntervalUnit` also takes the DST crossover into consideration when dealing with local time. Combine this o
  final String? pointIntervalUnit;

  /// (Highcharts, Highstock, Gantt) Possible values: `"on"`, `"between"`, `number`.
  final dynamic pointPlacement;

  /// (Highstock) The width of each point on the x axis. For example in a column chart with one value each day, the pointRange would be 1 day (= 24 * 3600
  final num? pointRange;

  /// (Highcharts, Highstock, Gantt) If no x values are given for the points in a series, `pointStart` defines on what value to start. For example, if a series contains one yearly value starting from 1945, set `pointStart` to 1945.
  final dynamic pointStart;

  /// (Highcharts, Highstock) When true, X values in the data set are relative to the current `pointStart`, `pointInterval` and `pointIntervalUnit` settings. This allows compression of the data for datasets with irregular X values.
  final bool? relativeXValue;

  /// (Highcharts, Highstock) Whether to select the series initially. If `showCheckbox` is true, the checkbox next to the series name in the legend will be checked for a selected series.
  final bool? selected;

  /// (Highcharts, Highstock) Whether to apply a drop shadow to the graph line. Since 2.3 the shadow can be an object configuration containing `color`, `offsetX`, `offsetY`, `opacity` and `width`.
  final dynamic shadow;

  /// (Highcharts, Highstock) If true, a checkbox is displayed next to the legend item to allow selecting the series. The state of the checkbox is determined by the `selected` option.
  final bool? showCheckbox;

  /// (Highcharts, Highstock) Whether to display this particular series or series type in the legend. Standalone series are shown in legend by default, and linked series are not. Since v7.2.0 it is possible to show series that use colorAxis by setting this option to `true`.
  final bool? showInLegend;

  /// (Highstock) Whether or not to show the series in the navigator. Takes precedence over navigator.baseSeries if defined.
  final bool? showInNavigator;

  /// (Highcharts, Highstock) Deprecated. Use series.accessibility.keyboardNavigation instead.
  final bool? skipKeyboardNavigation;

  /// (Highcharts, Highstock) When this is true, the series will not cause the Y axis to cross the zero plane (or threshold option) unless the data actually crosses the plane.
  final bool? softThreshold;

  /// (Highcharts, Highstock) Sonification/audio chart options for a series.
  final HCSeriesSonificationOptions? sonification;

  /// (Highcharts, Highstock) Whether to stack the values of each series on top of each other. Possible values are null to disable, `"normal"` to stack by value or `"percent"`.
  final String? stacking;

  /// (Highcharts, Highstock) A collection of options for different series states.
  final HCSeriesStatesOptionsObject? states;

  /// (Highcharts, Highstock) Sticky tracking of mouse events. When true, the `mouseOut` event on a series isn't triggered until the mouse moves over another series, or out of the plot area. When false, the `mouseOut` event on a series is triggered when the mouse leaves the area around the series' graph o
  final bool? stickyTracking;

  /// (Highcharts, Highstock) The threshold, also called zero level or base level. For line type series this is only used in conjunction with negativeColor.
  final num? threshold;

  /// (Highcharts, Highstock) A configuration object for the tooltip rendering of each single series. Properties are inherited from tooltip, but only the following properties can be defined on a series level.
  final HCSeriesTooltipOptionsObject? tooltip;

  /// (Highcharts, Highstock, Gantt) When a series contains a `data` array that is longer than this, the Series class looks for data configurations of plain numbers or arrays of numbers. The first and last valid points are checked. If found, the rest of the data is assumed to be the same. This saves expen
  final num? turboThreshold;

  /// (Highstock) The parameter allows setting line series type and use OHLC indicators. Data in OHLC format is required.
  final bool? useOhlcData;

  /// (Highcharts, Highstock) Set the initial visibility of the series.
  final bool? visible;

  /// (Highcharts, Highstock) Defines the Axis on which the zones are applied.
  final String? zoneAxis;

  /// (Highcharts, Highstock) An array defining zones within a series. Zones can be applied to the X axis, Y axis or Z axis for bubbles, according to the `zoneAxis` option. The zone definitions have to be in ascending order regarding to the value.
  final List<HCSeriesZonesOptionsObject>? zones;

  /// (Highcharts, Highstock) Whether to zoom non-cartesian series. If `chart.zooming` is set, the option allows to disable zooming on an individual non-cartesian series. By default zooming is enabled for all series.
  final bool? zoomEnabled;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (accessibility != null) {
      json['accessibility'] = accessibility!.toJson();
    }
    if (allowPointSelect != null) {
      json['allowPointSelect'] = allowPointSelect;
    }
    if (animation != null) {
      json['animation'] = hcJsonValue(animation);
    }
    if (animationLimit != null) {
      json['animationLimit'] = animationLimit;
    }
    if (className != null) {
      json['className'] = className;
    }
    if (clip != null) {
      json['clip'] = clip;
    }
    if (color != null) {
      json['color'] = hcJsonValue(color);
    }
    if (colorAxis != null) {
      json['colorAxis'] = hcJsonValue(colorAxis);
    }
    if (colorIndex != null) {
      json['colorIndex'] = colorIndex;
    }
    if (colorKey != null) {
      json['colorKey'] = colorKey;
    }
    if (compare != null) {
      json['compare'] = compare;
    }
    if (compareBase != null) {
      json['compareBase'] = hcJsonValue(compareBase);
    }
    if (compareStart != null) {
      json['compareStart'] = compareStart;
    }
    if (connectEnds != null) {
      json['connectEnds'] = connectEnds;
    }
    if (connectNulls != null) {
      json['connectNulls'] = connectNulls;
    }
    if (crisp != null) {
      json['crisp'] = crisp;
    }
    if (cropThreshold != null) {
      json['cropThreshold'] = cropThreshold;
    }
    if (cumulative != null) {
      json['cumulative'] = cumulative;
    }
    if (cumulativeStart != null) {
      json['cumulativeStart'] = cumulativeStart;
    }
    if (cursor != null) {
      json['cursor'] = cursor;
    }
    if (custom != null) {
      json['custom'] = custom!.toJson();
    }
    if (dashStyle != null) {
      json['dashStyle'] = dashStyle;
    }
    if (dataGrouping != null) {
      json['dataGrouping'] = dataGrouping!.toJson();
    }
    if (dataLabels != null) {
      json['dataLabels'] = hcJsonValue(dataLabels);
    }
    if (dataMapping != null) {
      json['dataMapping'] = dataMapping!.toJson();
    }
    if (dataSorting != null) {
      json['dataSorting'] = dataSorting!.toJson();
    }
    if (description != null) {
      json['description'] = description;
    }
    if (dragDrop != null) {
      json['dragDrop'] = dragDrop!.toJson();
    }
    if (enableMouseTracking != null) {
      json['enableMouseTracking'] = enableMouseTracking;
    }
    if (events != null) {
      json['events'] = events!.toJson();
    }
    if (findNearestPointBy != null) {
      json['findNearestPointBy'] = findNearestPointBy;
    }
    if (gapSize != null) {
      json['gapSize'] = gapSize;
    }
    if (gapUnit != null) {
      json['gapUnit'] = gapUnit;
    }
    if (getExtremesFromAll != null) {
      json['getExtremesFromAll'] = getExtremesFromAll;
    }
    if (inactiveOtherPoints != null) {
      json['inactiveOtherPoints'] = inactiveOtherPoints;
    }
    if (includeInDataExport != null) {
      json['includeInDataExport'] = includeInDataExport;
    }
    if (keys != null) {
      json['keys'] = keys;
    }
    if (label != null) {
      json['label'] = label!.toJson();
    }
    if (lastPrice != null) {
      json['lastPrice'] = lastPrice!.toJson();
    }
    if (lastVisiblePrice != null) {
      json['lastVisiblePrice'] = lastVisiblePrice!.toJson();
    }
    if (legendSymbol != null) {
      json['legendSymbol'] = legendSymbol;
    }
    if (legendSymbolColor != null) {
      json['legendSymbolColor'] = hcJsonValue(legendSymbolColor);
    }
    if (linecap != null) {
      json['linecap'] = linecap;
    }
    if (lineWidth != null) {
      json['lineWidth'] = lineWidth;
    }
    if (linkedTo != null) {
      json['linkedTo'] = linkedTo;
    }
    if (marker != null) {
      json['marker'] = marker!.toJson();
    }
    if (navigatorOptions != null) {
      json['navigatorOptions'] = navigatorOptions!.toJson();
    }
    if (negativeColor != null) {
      json['negativeColor'] = hcJsonValue(negativeColor);
    }
    if (nullInteraction != null) {
      json['nullInteraction'] = nullInteraction;
    }
    if (onPoint != null) {
      json['onPoint'] = hcJsonValue(onPoint);
    }
    if (opacity != null) {
      json['opacity'] = opacity;
    }
    if (point != null) {
      json['point'] = point!.toJson();
    }
    if (pointDescriptionFormat != null) {
      json['pointDescriptionFormat'] = hcJsonValue(pointDescriptionFormat);
    }
    if (pointDescriptionFormatter != null) {
      json['pointDescriptionFormatter'] =
          hcJsonValue(pointDescriptionFormatter);
    }
    if (pointInterval != null) {
      json['pointInterval'] = pointInterval;
    }
    if (pointIntervalUnit != null) {
      json['pointIntervalUnit'] = pointIntervalUnit;
    }
    if (pointPlacement != null) {
      json['pointPlacement'] = hcJsonValue(pointPlacement);
    }
    if (pointRange != null) {
      json['pointRange'] = pointRange;
    }
    if (pointStart != null) {
      json['pointStart'] = hcJsonValue(pointStart);
    }
    if (relativeXValue != null) {
      json['relativeXValue'] = relativeXValue;
    }
    if (selected != null) {
      json['selected'] = selected;
    }
    if (shadow != null) {
      json['shadow'] = hcJsonValue(shadow);
    }
    if (showCheckbox != null) {
      json['showCheckbox'] = showCheckbox;
    }
    if (showInLegend != null) {
      json['showInLegend'] = showInLegend;
    }
    if (showInNavigator != null) {
      json['showInNavigator'] = showInNavigator;
    }
    if (skipKeyboardNavigation != null) {
      json['skipKeyboardNavigation'] = skipKeyboardNavigation;
    }
    if (softThreshold != null) {
      json['softThreshold'] = softThreshold;
    }
    if (sonification != null) {
      json['sonification'] = sonification!.toJson();
    }
    if (stacking != null) {
      json['stacking'] = stacking;
    }
    if (states != null) {
      json['states'] = states!.toJson();
    }
    if (stickyTracking != null) {
      json['stickyTracking'] = stickyTracking;
    }
    if (threshold != null) {
      json['threshold'] = threshold;
    }
    if (tooltip != null) {
      json['tooltip'] = tooltip!.toJson();
    }
    if (turboThreshold != null) {
      json['turboThreshold'] = turboThreshold;
    }
    if (useOhlcData != null) {
      json['useOhlcData'] = useOhlcData;
    }
    if (visible != null) {
      json['visible'] = visible;
    }
    if (zoneAxis != null) {
      json['zoneAxis'] = zoneAxis;
    }
    if (zones != null) {
      json['zones'] = zones!.map((e) => e.toJson()).toList();
    }
    if (zoomEnabled != null) {
      json['zoomEnabled'] = zoomEnabled;
    }
    return json;
  }
}

/// (Highcharts, Highstock) Animation setting for hovering the graph in line-type series.
class HCPlotSplineStatesHoverAnimationOptions implements HCOption {
  const HCPlotSplineStatesHoverAnimationOptions({
    this.duration,
  });

  /// (Highcharts, Highstock) The duration of the hover animation in milliseconds. By default the hover state animates quickly in, and slowly back to normal.
  final num? duration;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (duration != null) {
      json['duration'] = duration;
    }
    return json;
  }
}

/// (Highcharts, Highstock) Animation when not hovering over the marker.
class HCPlotSplineStatesInactiveAnimationOptions implements HCOption {
  const HCPlotSplineStatesInactiveAnimationOptions({
    this.duration,
  });

  final num? duration;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (duration != null) {
      json['duration'] = duration;
    }
    return json;
  }
}

/// (Highcharts, Highstock) Animation setting for hovering the graph in line-type series.
class HCPlotSplineStatesSelectAnimationOptions implements HCOption {
  const HCPlotSplineStatesSelectAnimationOptions({
    this.duration,
  });

  /// (Highcharts, Highstock) The duration of the hover animation in milliseconds. By default the hover state animates quickly in, and slowly back to normal.
  final num? duration;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (duration != null) {
      json['duration'] = duration;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Gantt) For series on datetime axes, the date format in the tooltip's header will by default be guessed based on the closest data points. This member gives the default string representations used for each unit. For an overview of the string or object configuration, see dateFor
class HCPlotSplineTooltipDateTimeLabelFormatsOptions implements HCOption {
  const HCPlotSplineTooltipDateTimeLabelFormatsOptions({
    this.day,
    this.hour,
    this.millisecond,
    this.minute,
    this.month,
    this.second,
    this.week,
    this.year,
  });

  final String? day;

  final String? hour;

  final String? millisecond;

  final String? minute;

  final String? month;

  final String? second;

  final String? week;

  final String? year;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (day != null) {
      json['day'] = day;
    }
    if (hour != null) {
      json['hour'] = hour;
    }
    if (millisecond != null) {
      json['millisecond'] = millisecond;
    }
    if (minute != null) {
      json['minute'] = minute;
    }
    if (month != null) {
      json['month'] = month;
    }
    if (second != null) {
      json['second'] = second;
    }
    if (week != null) {
      json['week'] = week;
    }
    if (year != null) {
      json['year'] = year;
    }
    return json;
  }
}

/// (Highcharts, Highstock) Options for the tooltip header when tooltip.split is enabled. The header is the box containing the X value in a split tooltip.
class HCPlotSplineTooltipHeaderOptions implements HCOption {
  const HCPlotSplineTooltipHeaderOptions({
    this.backgroundColor,
    this.borderColor,
    this.borderWidth,
    this.distance,
    this.shape,
    this.style,
  });

  /// (Highcharts, Highstock) Background color for the tooltip header when tooltip.split is enabled.
  final dynamic backgroundColor;

  /// (Highcharts, Highstock) Border color for the tooltip header when tooltip.split is enabled.
  final dynamic borderColor;

  /// (Highcharts, Highstock) The width of the border for the tooltip header when tooltip.split is enabled.
  final num? borderWidth;

  /// (Highcharts, Highstock) Distance between the plot area and the header (except the chevron) in a split tooltip, in pixels. The default value makes the header text align with the axis labels.
  final num? distance;

  /// (Highcharts, Highstock) The name of a symbol to use for the border around the tooltip header. Applies only when tooltip.split is enabled.
  final String? shape;

  /// (Highcharts, Highstock) CSS styles for the tooltip header. The default is `{ fontSize: '1em' }`, ensuring that the header text is the same size as the axis labels.
  final dynamic style;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (backgroundColor != null) {
      json['backgroundColor'] = hcJsonValue(backgroundColor);
    }
    if (borderColor != null) {
      json['borderColor'] = hcJsonValue(borderColor);
    }
    if (borderWidth != null) {
      json['borderWidth'] = borderWidth;
    }
    if (distance != null) {
      json['distance'] = distance;
    }
    if (shape != null) {
      json['shape'] = shape;
    }
    if (style != null) {
      json['style'] = hcJsonValue(style);
    }
    return json;
  }
}

/// (Highcharts, Highstock) Positioning options for fixed tooltip, taking effect only when tooltip.fixed is `true`.
class HCPlotSplineTooltipPositionOptions implements HCOption {
  const HCPlotSplineTooltipPositionOptions({
    this.align,
    this.relativeTo,
    this.verticalAlign,
    this.x,
    this.y,
  });

  /// (Highcharts, Highstock) The horizontal alignment of the fixed tooltip.
  final String? align;

  /// (Highcharts, Highstock) What the fixed tooltip alignment should be relative to.
  final String? relativeTo;

  /// (Highcharts, Highstock) The vertical alignment of the fixed tooltip.
  final String? verticalAlign;

  /// (Highcharts, Highstock) X pixel offset from the given position. Can be used to shy away from axis lines, grid lines etc to avoid the tooltip overlapping other elements.
  final num? x;

  /// (Highcharts, Highstock) Y pixel offset from the given position. Can be used to shy away from axis lines, grid lines etc to avoid the tooltip overlapping other elements.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (align != null) {
      json['align'] = align;
    }
    if (relativeTo != null) {
      json['relativeTo'] = relativeTo;
    }
    if (verticalAlign != null) {
      json['verticalAlign'] = verticalAlign;
    }
    if (x != null) {
      json['x'] = x;
    }
    if (y != null) {
      json['y'] = y;
    }
    return json;
  }
}

/// (Highstock) Point accessibility options for a series.
class HCPlotStochasticAccessibilityPointOptions implements HCOption {
  const HCPlotStochasticAccessibilityPointOptions({
    this.dateFormat,
    this.describeNull,
    this.descriptionFormat,
    this.valueDecimals,
    this.valueDescriptionFormat,
    this.valuePrefix,
    this.valueSuffix,
  });

  /// (Highstock) Date format to use for points on datetime axes when describing them to screen reader users.
  final String? dateFormat;

  /// (Highstock) Whether or not to describe points with the value `null` to assistive technology, such as screen readers.
  final bool? describeNull;

  /// (Highstock) A format string to use instead of the default for point descriptions.
  final String? descriptionFormat;

  /// (Highstock) Decimals to use for the values in the point descriptions. Uses tooltip.valueDecimals if not defined.
  final num? valueDecimals;

  /// (Highstock) Format to use for describing the values of data points to assistive technology - including screen readers. The point context is available as `{point}`.
  final String? valueDescriptionFormat;

  /// (Highstock) Prefix to add to the values in the point descriptions. Uses tooltip.valuePrefix if not defined.
  final String? valuePrefix;

  /// (Highstock) Suffix to add to the values in the point descriptions. Uses tooltip.valueSuffix if not defined.
  final String? valueSuffix;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (dateFormat != null) {
      json['dateFormat'] = dateFormat;
    }
    if (describeNull != null) {
      json['describeNull'] = describeNull;
    }
    if (descriptionFormat != null) {
      json['descriptionFormat'] = descriptionFormat;
    }
    if (valueDecimals != null) {
      json['valueDecimals'] = valueDecimals;
    }
    if (valueDescriptionFormat != null) {
      json['valueDescriptionFormat'] = valueDescriptionFormat;
    }
    if (valuePrefix != null) {
      json['valuePrefix'] = valuePrefix;
    }
    if (valueSuffix != null) {
      json['valueSuffix'] = valueSuffix;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Enable or disable the initial animation when a series is displayed for the `dataLabels`. The animation can also be set as a configuration object. Please note that this option only applies to the initial animation.
class HCPlotStochasticDataLabelsAnimationOptions implements HCOption {
  const HCPlotStochasticDataLabelsAnimationOptions({
    this.defer,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) The animation delay time in milliseconds. Set to `0` to render the data labels immediately. As `undefined` inherits defer time from the series.animation.defer.
  final num? defer;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (defer != null) {
      json['defer'] = defer;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Options for the series data labels, appearing next to each data point.
class HCPlotStochasticDataLabelsOptions implements HCOption {
  const HCPlotStochasticDataLabelsOptions({
    this.align,
    this.alignTo,
    this.allowOverlap,
    this.animation,
    this.backgroundColor,
    this.borderColor,
    this.borderRadius,
    this.borderWidth,
    this.className,
    this.color,
    this.crop,
    this.defer,
    this.distance,
    this.enabled,
    this.filter,
    this.format,
    this.inside,
    this.labelrank,
    this.nullFormat,
    this.overflow,
    this.padding,
    this.position,
    this.rotation,
    this.shadow,
    this.shape,
    this.style,
    this.textPath,
    this.useHTML,
    this.verticalAlign,
    this.x,
    this.y,
    this.zIndex,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) The alignment of the data label compared to the point. If `right`, the right side of the label should be touching the point. For points with an extent, like columns, the alignments also dictates how to align it inside the box, as given with the inside option.
  final String? align;

  /// (Highcharts, Highstock, Highmaps, Gantt) Alignment method for data labels. If set to `plotEdges`, the labels are aligned within the plot area in the direction of the y-axis. So in a regular column chart, the labels are aligned vertically according to the `verticalAlign` setting. In a bar chart, whic
  final String? alignTo;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to allow data labels to overlap. To make the labels less sensitive for overlapping, the dataLabels.padding can be set to 0.
  final bool? allowOverlap;

  /// (Highcharts, Highstock, Highmaps, Gantt) Enable or disable the initial animation when a series is displayed for the `dataLabels`. The animation can also be set as a configuration object. Please note that this option only applies to the initial animation.
  final dynamic animation;

  /// (Highcharts, Highstock, Highmaps, Gantt) The background color or gradient for the data label. In addition to regular colors, there are two special setting for this option:
  final dynamic backgroundColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) The border color for the data label. Setting it to `auto` will use the point's color. Defaults to `undefined`.
  final dynamic borderColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) The border radius in pixels for the data label.
  final num? borderRadius;

  /// (Highcharts, Highstock, Highmaps, Gantt) The border width in pixels for the data label.
  final num? borderWidth;

  /// (Highcharts, Highstock, Highmaps, Gantt) A class name for the data label. Particularly in styled mode, this can be used to give each series' or point's data label unique styling. In addition to this option, a default color class name is added so that we can give the labels a contrast text shadow.
  final String? className;

  /// (Highcharts, Highstock, Highmaps, Gantt) This options is deprecated. Use style.color instead.
  final dynamic color;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to hide data labels that are outside the plot area. By default, the data label is moved inside the plot area according to the overflow option.
  final bool? crop;

  /// (Highcharts, Highstock, Gantt) Whether to defer displaying the data labels until the initial series animation has finished. Setting to `false` renders the data label immediately. If set to `true` inherits the defer time set in plotOptions.series.animation.
  final bool? defer;

  /// (Highcharts, Highstock, Gantt) The distance of the data label from the data point. Note that the `padding` setting also affects the rendered distance, but is not visible unless the data label has a border or background.
  final num? distance;

  /// (Highcharts, Highstock, Highmaps, Gantt) Enable or disable the data labels.
  final bool? enabled;

  /// (Highcharts, Highstock, Highmaps, Gantt) A declarative filter to control of which data labels to display. The declarative filter is designed for use when callback functions are not available, like when the chart options require a pure JSON structure or for use with graphical editors. For programmati
  final HCDataLabelsFilterOptionsObject? filter;

  /// (Highcharts, Highstock, Highmaps, Gantt) A format string for the data label. Available variables are the same as for `formatter`.
  final String? format;

  /// (Highcharts, Highstock, Highmaps, Gantt) For points with an extent, like columns or map areas, whether to align the data label inside the box or to the actual value point. Defaults to `false` in most cases, `true` in stacked columns.
  final bool? inside;

  /// (Highcharts, Highstock, Highmaps, Gantt) The rank for this point's data label in case of collision. If two data labels are about to overlap, only the one with the highest `labelrank` will be drawn.
  final num? labelrank;

  /// (Highcharts, Highstock, Highmaps, Gantt) Format for points with the value of null. Works analogously to format. `nullFormat` can be applied only to series which support displaying null points. `heatmap` and `tilemap` supports `nullFormat` by default while the following series requires [#series.nullI
  final dynamic nullFormat;

  /// (Highcharts, Highstock, Highmaps, Gantt) How to handle data labels that flow outside the plot area. The default is `"justify"`, which aligns them inside the plot area. For columns and bars, this means it will be moved inside the bar. To display data labels outside the plot area, set `crop` to `false
  final String? overflow;

  /// (Highcharts, Highstock, Highmaps, Gantt) When either the `borderWidth` or the `backgroundColor` is set, this is the padding within the box.
  final dynamic padding;

  /// (Highcharts, Highstock, Highmaps, Gantt) Aligns data labels relative to points. If `center` alignment is not possible, it defaults to `right`.
  final String? position;

  /// (Highcharts, Highstock, Highmaps, Gantt) Text rotation in degrees. Note that due to a more complex structure, backgrounds, borders and padding will be lost on a rotated data label.
  final num? rotation;

  /// (Highcharts, Highstock, Highmaps, Gantt) The shadow of the box. Works best with `borderWidth` or `backgroundColor`. Since 2.3 the shadow can be an object configuration containing `color`, `offsetX`, `offsetY`, `opacity` and `width`.
  final dynamic shadow;

  /// (Highcharts, Highstock, Highmaps, Gantt) The name of a symbol to use for the border around the label. Symbols are predefined functions on the Renderer object.
  final String? shape;

  /// (Highcharts, Highstock, Highmaps, Gantt) Styles for the label. The default `color` setting is `"contrast"`, which is a pseudo color that Highcharts picks up and applies the maximum contrast to the underlying point item, for example the bar in a bar chart.
  final HCCSSObject? style;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for a label text which should follow marker's shape. Border and background are disabled for a label that follows a path.
  final HCDataLabelsTextPathOptionsObject? textPath;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to use HTML to render the labels.
  final bool? useHTML;

  /// (Highcharts, Highstock, Highmaps, Gantt) The vertical alignment of a data label. Can be one of `top`, `middle` or `bottom`. The default value depends on the data, for instance in a column chart, the label is above positive values and below negative values.
  final String? verticalAlign;

  /// (Highcharts, Highstock, Highmaps, Gantt) The x position offset of the label relative to the point in pixels.
  final num? x;

  /// (Highcharts, Highstock, Highmaps, Gantt) The y position offset of the label relative to the point in pixels.
  final num? y;

  /// (Highcharts, Highstock, Highmaps, Gantt) The z index of the data labels group. Does not apply below series level options.
  final num? zIndex;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (align != null) {
      json['align'] = align;
    }
    if (alignTo != null) {
      json['alignTo'] = alignTo;
    }
    if (allowOverlap != null) {
      json['allowOverlap'] = allowOverlap;
    }
    if (animation != null) {
      json['animation'] = hcJsonValue(animation);
    }
    if (backgroundColor != null) {
      json['backgroundColor'] = hcJsonValue(backgroundColor);
    }
    if (borderColor != null) {
      json['borderColor'] = hcJsonValue(borderColor);
    }
    if (borderRadius != null) {
      json['borderRadius'] = borderRadius;
    }
    if (borderWidth != null) {
      json['borderWidth'] = borderWidth;
    }
    if (className != null) {
      json['className'] = className;
    }
    if (color != null) {
      json['color'] = hcJsonValue(color);
    }
    if (crop != null) {
      json['crop'] = crop;
    }
    if (defer != null) {
      json['defer'] = defer;
    }
    if (distance != null) {
      json['distance'] = distance;
    }
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    if (filter != null) {
      json['filter'] = filter!.toJson();
    }
    if (format != null) {
      json['format'] = format;
    }
    if (inside != null) {
      json['inside'] = inside;
    }
    if (labelrank != null) {
      json['labelrank'] = labelrank;
    }
    if (nullFormat != null) {
      json['nullFormat'] = hcJsonValue(nullFormat);
    }
    if (overflow != null) {
      json['overflow'] = overflow;
    }
    if (padding != null) {
      json['padding'] = hcJsonValue(padding);
    }
    if (position != null) {
      json['position'] = position;
    }
    if (rotation != null) {
      json['rotation'] = rotation;
    }
    if (shadow != null) {
      json['shadow'] = hcJsonValue(shadow);
    }
    if (shape != null) {
      json['shape'] = shape;
    }
    if (style != null) {
      json['style'] = style!.toJson();
    }
    if (textPath != null) {
      json['textPath'] = textPath!.toJson();
    }
    if (useHTML != null) {
      json['useHTML'] = useHTML;
    }
    if (verticalAlign != null) {
      json['verticalAlign'] = verticalAlign;
    }
    if (x != null) {
      json['x'] = x;
    }
    if (y != null) {
      json['y'] = y;
    }
    if (zIndex != null) {
      json['zIndex'] = zIndex;
    }
    return json;
  }
}

/// (Highcharts, Highstock) Options for series data sorting.
class HCPlotStochasticDataSortingOptions implements HCOption {
  const HCPlotStochasticDataSortingOptions({
    this.enabled,
    this.matchByName,
    this.sortKey,
  });

  /// (Highcharts, Highstock) Enable or disable data sorting for the series. Use xAxis.reversed to change the sorting order.
  final bool? enabled;

  /// (Highcharts, Highstock) Whether to allow matching points by name in an update. If this option is disabled, points will be matched by order.
  final bool? matchByName;

  /// (Highcharts, Highstock) Determines what data value should be used to sort by.
  final String? sortKey;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    if (matchByName != null) {
      json['matchByName'] = matchByName;
    }
    if (sortKey != null) {
      json['sortKey'] = sortKey;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Gantt) Styles for the series label. The color defaults to the series color, or a contrast color if `onArea`.
class HCPlotStochasticLabelStyleOptions implements HCOption {
  const HCPlotStochasticLabelStyleOptions({
    this.fontSize,
    this.fontWeight,
  });

  final num? fontSize;

  final String? fontWeight;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (fontSize != null) {
      json['fontSize'] = fontSize;
    }
    if (fontWeight != null) {
      json['fontWeight'] = fontWeight;
    }
    return json;
  }
}

/// (Highstock) Animation when hovering over the marker.
class HCPlotStochasticMarkerStatesHoverAnimationOptions implements HCOption {
  const HCPlotStochasticMarkerStatesHoverAnimationOptions({
    this.duration,
  });

  final num? duration;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (duration != null) {
      json['duration'] = duration;
    }
    return json;
  }
}

/// (Highstock) Options for the connector in the _Series on point_ feature.
class HCPlotStochasticOnPointConnectorOptions implements HCOption {
  const HCPlotStochasticOnPointConnectorOptions({
    this.dashstyle,
    this.stroke,
    this.width,
  });

  /// (Highstock) A name for the dash style to use for the connector.
  final String? dashstyle;

  /// (Highstock) Color of the connector line. By default it's the series' color.
  final String? stroke;

  /// (Highstock) Pixel width of the connector line.
  final num? width;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (dashstyle != null) {
      json['dashstyle'] = dashstyle;
    }
    if (stroke != null) {
      json['stroke'] = stroke;
    }
    if (width != null) {
      json['width'] = width;
    }
    return json;
  }
}

/// (Highstock) Options for the _Series on point_ feature. Only `pie` and `sunburst` series are supported at this moment.
class HCPlotStochasticOnPointOptions implements HCOption {
  const HCPlotStochasticOnPointOptions({
    this.connectorOptions,
    this.id,
    this.position,
  });

  /// (Highstock) Options for the connector in the _Series on point_ feature.
  final dynamic connectorOptions;

  /// (Highstock) The `id` of the point that we connect the series to. Only points with a given `plotX` and `plotY` values and map points are valid.
  final String? id;

  /// (Highstock) Options allowing to set a position and an offset of the series in the _Series on point_ feature.
  final dynamic position;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (connectorOptions != null) {
      json['connectorOptions'] = hcJsonValue(connectorOptions);
    }
    if (id != null) {
      json['id'] = id;
    }
    if (position != null) {
      json['position'] = hcJsonValue(position);
    }
    return json;
  }
}

/// (Highstock) Options allowing to set a position and an offset of the series in the _Series on point_ feature.
class HCPlotStochasticOnPointPositionOptions implements HCOption {
  const HCPlotStochasticOnPointPositionOptions({
    this.offsetX,
    this.offsetY,
    this.x,
    this.y,
  });

  /// (Highstock) Series center offset from the original x position. If defined, the connector line is drawn connecting original position with new position.
  final num? offsetX;

  /// (Highstock) Series center offset from the original y position. If defined, the connector line is drawn from original position to a new position.
  final num? offsetY;

  /// (Highstock) X position of the series center. By default, the series is displayed on the point that it is connected to.
  final num? x;

  /// (Highstock) Y position of the series center. By default, the series is displayed on the point that it is connected to.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (offsetX != null) {
      json['offsetX'] = offsetX;
    }
    if (offsetY != null) {
      json['offsetY'] = offsetY;
    }
    if (x != null) {
      json['x'] = x;
    }
    if (y != null) {
      json['y'] = y;
    }
    return json;
  }
}

/// (Highstock) Stochastic oscillator. This series requires the `linkedTo` option to be set and should be loaded after the `stock/indicators/indicators.js` file.
class HCPlotStochasticOptions implements HCOption {
  const HCPlotStochasticOptions({
    this.accessibility,
    this.allowPointSelect,
    this.animation,
    this.animationLimit,
    this.boostBlending,
    this.boostThreshold,
    this.className,
    this.clip,
    this.color,
    this.colorIndex,
    this.colorKey,
    this.compare,
    this.compareBase,
    this.compareStart,
    this.compareToMain,
    this.connectNulls,
    this.crisp,
    this.cropThreshold,
    this.cumulative,
    this.cumulativeStart,
    this.cursor,
    this.custom,
    this.dashStyle,
    this.dataGrouping,
    this.dataLabels,
    this.dataMapping,
    this.dataSorting,
    this.description,
    this.enableMouseTracking,
    this.events,
    this.findNearestPointBy,
    this.gapSize,
    this.gapUnit,
    this.getExtremesFromAll,
    this.inactiveOtherPoints,
    this.includeInDataExport,
    this.label,
    this.lastPrice,
    this.lastVisiblePrice,
    this.legendSymbol,
    this.legendSymbolColor,
    this.linecap,
    this.lineWidth,
    this.linkedTo,
    this.marker,
    this.name,
    this.negativeColor,
    this.nullInteraction,
    this.onPoint,
    this.opacity,
    this.params,
    this.point,
    this.pointDescriptionFormat,
    this.pointDescriptionFormatter,
    this.relativeXValue,
    this.selected,
    this.shadow,
    this.showCheckbox,
    this.showInLegend,
    this.skipKeyboardNavigation,
    this.smoothedLine,
    this.softThreshold,
    this.sonification,
    this.states,
    this.step,
    this.stickyTracking,
    this.threshold,
    this.tooltip,
    this.turboThreshold,
    this.visible,
    this.zoneAxis,
    this.zones,
    this.zoomEnabled,
  });

  /// (Highstock) Accessibility options for a series.
  final HCSeriesAccessibilityOptionsObject? accessibility;

  /// (Highstock) Allow this series' points to be selected by clicking on the graphic (columns, point markers, pie slices, map areas etc).
  final bool? allowPointSelect;

  /// (Highstock) Enable or disable the initial animation when a series is displayed. The animation can also be set as a configuration object. Please note that this option only applies to the initial animation of the series itself. For other animations, see chart.animation and the animation parameter unde
  final dynamic animation;

  /// (Highstock) For some series, there is a limit that shuts down animation by default when the total number of points in the chart is too high. For example, for a column chart and its derivatives, animation does not run if there is more than 250 points totally. To disable this cap, set `animationLimit`
  final num? animationLimit;

  /// (Highstock) Sets the color blending in the boost module.
  final String? boostBlending;

  /// (Highstock) Set the point threshold for when a series should enter boost mode.
  final num? boostThreshold;

  /// (Highstock) An additional class name to apply to the series' graphical elements. This option does not replace default class names of the graphical element. Changes to the series' color will also be reflected in a chart's legend and tooltip.
  final String? className;

  /// (Highstock) Disable this option to allow series rendering in the whole plotting area.
  final bool? clip;

  /// (Highstock) The main color of the series. In line type series it applies to the line and the point markers unless otherwise specified. In bar type series it applies to the bars unless a color is specified per point. The default value is pulled from the `options.colors` array.
  final dynamic color;

  /// (Highstock) Styled mode only. A specific color index to use for the series, so its graphic representations are given the class name `highcharts-color-{n}`.
  final num? colorIndex;

  /// (Highcharts, Highstock, Highmaps) Determines what data value should be used to calculate point color if `colorAxis` is used. Requires to set `min` and `max` if some custom point property is used or if approximation for data grouping is set to `'sum'`.
  final String? colorKey;

  /// (Highstock) Compare the values of the series against the first non-null, non- zero value in the visible range. The y axis will show percentage or absolute change depending on whether `compare` is set to `"percent"` or `"value"`. When this is applied to multiple series, it allows comparing the develo
  final String? compare;

  /// (Highstock) When compare is `percent`, this option dictates whether to use 0 or 100 as the base of comparison.
  final dynamic compareBase;

  /// (Highstock) Defines if comparison should start from the first point within the visible range or should start from the last point **before** the range.
  final bool? compareStart;

  /// (Highstock) Whether to compare indicator to the main series values or indicator values.
  final bool? compareToMain;

  /// (Highcharts, Highstock) Whether to connect a graph line across null points, or render a gap between the two points on either side of the null.
  final bool? connectNulls;

  /// (Highcharts, Highstock, Gantt) When true, each point or column edge is rounded to its nearest pixel in order to render sharp on screen. In some cases, when there are a lot of densely packed columns, this leads to visible difference in column widths or distance between columns. In these cases, settin
  final bool? crisp;

  /// (Highcharts, Highstock) When the series contains less points than the crop threshold, all points are drawn, even if the points fall outside the visible plot area at the current zoom. The advantage of drawing all points (including markers and columns), is that animation is performed on updates. On th
  final num? cropThreshold;

  /// (Highstock) Cumulative Sum feature replaces points' values with the following formula: `sum of all previous points' values + current point's value`. Works only for points in a visible range. Adds the `cumulativeSum` field to each point object that can be accessed e.g. in the tooltip.pointFormat.
  final bool? cumulative;

  /// (Highstock) Defines if cumulation should start from the first point within the visible range or should start from the last point **before** the range.
  final bool? cumulativeStart;

  /// (Highstock) You can set the cursor to "pointer" if you have click events attached to the series, to signal to the user that the points and lines can be clicked.
  final String? cursor;

  /// (Highstock) A reserved subspace to store options and values for customized functionality. Here you can add additional data for your own event callbacks and formatter callbacks.
  final HCDictionary? custom;

  /// (Highstock) Name of the dash style to use for the graph, or for some series types the outline of each shape.
  final String? dashStyle;

  /// (Highstock) Data grouping is the concept of sampling the data values into larger blocks in order to ease readability and increase performance of the JavaScript charts. Highcharts Stock by default applies data grouping when the points become closer than a certain pixel value, determined by the `group
  final HCDataGroupingOptionsObject? dataGrouping;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for the series data labels, appearing next to each data point.
  final dynamic dataLabels;

  /// (Highstock) The mapping between the data table and the series data points. This is used in conjunction with the `dataTable` option (on chart or series level) to map columns from the data table to the properties of the data points. The keys of the `dataMapping` object correspond to the properties of
  final HCDataMappingOptionsObject? dataMapping;

  /// (Highcharts, Highstock) Options for series data sorting.
  final HCPlotStochasticDataSortingOptions? dataSorting;

  /// (Highstock) Deprecated. Use plotOptions.series.accessibility.description instead.
  final String? description;

  /// (Highstock) Enable or disable the mouse tracking for a specific series. This includes point tooltips and click events on graphs and points. For large datasets it improves performance.
  final bool? enableMouseTracking;

  /// (Highstock) General event handlers for the series items. These event hooks can also be attached to the series at run time using the `Highcharts.addEvent` function.
  final HCSeriesEventsOptionsObject? events;

  /// (Highstock) Determines whether the series should look for the nearest point in both dimensions or just the x-dimension when hovering the series. Defaults to `'xy'` for scatter series and `'x'` for most other series. If the data has duplicate x-values, it is recommended to set this to `'xy'` to allow
  final String? findNearestPointBy;

  /// (Highcharts, Highstock) Defines when to display a gap in the graph, together with the gapUnit option.
  final num? gapSize;

  /// (Highcharts, Highstock) Together with gapSize, this option defines where to draw gaps in the graph.
  final String? gapUnit;

  /// (Highcharts, Highstock, Gantt) Whether to use the Y extremes of the total chart width or only the zoomed area when zooming in on parts of the X axis. By default, the Y axis adjusts to the min and max of the visible data. Cartesian series only.
  final bool? getExtremesFromAll;

  /// (Highstock) Highlight only the hovered point and fade the remaining points.
  final bool? inactiveOtherPoints;

  /// (Highstock) When set to `false` will prevent the series data from being included in any form of data export.
  final bool? includeInDataExport;

  /// (Highcharts, Highstock, Gantt) Series labels are placed as close to the series as possible in a natural way, seeking to avoid other series. The goal of this feature is to make the chart more easily readable, like if a human designer placed the labels in the optimal position.
  final HCSeriesLabelOptionsObject? label;

  /// (Highstock) The line marks the last price from all points.
  final HCSeriesLastPriceOptionsObject? lastPrice;

  /// (Highstock) The line marks the last price from visible range of points.
  final HCSeriesLastVisiblePriceOptionsObject? lastVisiblePrice;

  /// (Highstock) What type of legend symbol to render for this series. Can be one of `areaMarker`, `lineMarker` or `rectangle`.
  final String? legendSymbol;

  /// (Highcharts, Highstock, Highmaps) Defines the color of the legend symbol for this series. Defaults to undefined, in which case the series color is used. Does not work with styled mode.
  final dynamic legendSymbolColor;

  /// (Highstock) The line cap used for line ends and line joins on the graph.
  final String? linecap;

  /// (Highcharts, Highstock) Pixel width of the graph line.
  final num? lineWidth;

  /// (Highcharts, Highstock, Gantt) The main series ID that indicator will be based on. Required for this indicator.
  final String? linkedTo;

  /// (Highstock) Options for the point markers of line and scatter-like series. Properties like `fillColor`, `lineColor` and `lineWidth` define the visual appearance of the markers. The `symbol` option defines the shape. Other series types, like column series, don't have markers, but have visual options
  final HCPointMarkerOptionsObject? marker;

  /// (Highstock) The name of the series as shown in the legend, tooltip etc. If not set, it will be based on a technical indicator type and default params.
  final String? name;

  /// (Highstock) The color for the parts of the graph or points that are below the threshold. Note that `zones` takes precedence over the negative color. Using `negativeColor` is equivalent to applying a zone with value of 0.
  final dynamic negativeColor;

  /// (Highcharts, Highstock) Whether or not data-points with the value of `null` should be interactive. When this is set to `true`, tooltips may highlight these points, and this option also enables keyboard navigation for such points. Format options for such points include `nullFormat` and `nullFormatter
  final bool? nullInteraction;

  /// (Highstock) Options for the _Series on point_ feature. Only `pie` and `sunburst` series are supported at this moment.
  final dynamic onPoint;

  /// (Highstock) Opacity of a series parts: line, fill (e.g. area) and dataLabels.
  final num? opacity;

  /// (Highstock) Parameters used in calculation of regression series' points.
  final HCPlotStochasticParamsOptions? params;

  /// (Highstock) Properties for each single point.
  final HCPlotSeriesPointOptions? point;

  /// (Highstock) Deprecated. Use series.accessibility.point.descriptionFormat instead.
  final dynamic pointDescriptionFormat;

  /// (Highstock) Deprecated. Use series.accessibility.point.descriptionFormatter instead.
  final dynamic pointDescriptionFormatter;

  /// (Highcharts, Highstock) When true, X values in the data set are relative to the current `pointStart`, `pointInterval` and `pointIntervalUnit` settings. This allows compression of the data for datasets with irregular X values.
  final bool? relativeXValue;

  /// (Highstock) Whether to select the series initially. If `showCheckbox` is true, the checkbox next to the series name in the legend will be checked for a selected series.
  final bool? selected;

  /// (Highstock) Whether to apply a drop shadow to the graph line. Since 2.3 the shadow can be an object configuration containing `color`, `offsetX`, `offsetY`, `opacity` and `width`.
  final dynamic shadow;

  /// (Highstock) If true, a checkbox is displayed next to the legend item to allow selecting the series. The state of the checkbox is determined by the `selected` option.
  final bool? showCheckbox;

  /// (Highstock) Whether to display this particular series or series type in the legend. Standalone series are shown in legend by default, and linked series are not. Since v7.2.0 it is possible to show series that use colorAxis by setting this option to `true`.
  final bool? showInLegend;

  /// (Highstock) Deprecated. Use series.accessibility.keyboardNavigation instead.
  final bool? skipKeyboardNavigation;

  /// (Highstock) Smoothed line options.
  final HCPlotStochasticSmoothedLineOptions? smoothedLine;

  /// (Highcharts, Highstock) When this is true, the series will not cause the Y axis to cross the zero plane (or threshold option) unless the data actually crosses the plane.
  final bool? softThreshold;

  /// (Highstock) Sonification/audio chart options for a series.
  final HCSeriesSonificationOptions? sonification;

  /// (Highstock) A collection of options for different series states.
  final HCSeriesStatesOptionsObject? states;

  /// (Highcharts, Highstock) Whether to apply steps to the line. Possible values are `left`, `center` and `right`.
  final String? step;

  /// (Highstock) Sticky tracking of mouse events. When true, the `mouseOut` event on a series isn't triggered until the mouse moves over another series, or out of the plot area. When false, the `mouseOut` event on a series is triggered when the mouse leaves the area around the series' graph or markers. T
  final bool? stickyTracking;

  /// (Highcharts, Highstock) The threshold, also called zero level or base level. For line type series this is only used in conjunction with negativeColor.
  final num? threshold;

  /// (Highstock) A configuration object for the tooltip rendering of each single series. Properties are inherited from tooltip, but only the following properties can be defined on a series level.
  final HCSeriesTooltipOptionsObject? tooltip;

  /// (Highcharts, Highstock, Gantt) When a series contains a `data` array that is longer than this, the Series class looks for data configurations of plain numbers or arrays of numbers. The first and last valid points are checked. If found, the rest of the data is assumed to be the same. This saves expen
  final num? turboThreshold;

  /// (Highstock) Set the initial visibility of the series.
  final bool? visible;

  /// (Highcharts, Highstock) Defines the Axis on which the zones are applied.
  final String? zoneAxis;

  /// (Highcharts, Highstock) An array defining zones within a series. Zones can be applied to the X axis, Y axis or Z axis for bubbles, according to the `zoneAxis` option. The zone definitions have to be in ascending order regarding to the value.
  final List<HCSeriesZonesOptionsObject>? zones;

  /// (Highstock) Whether to zoom non-cartesian series. If `chart.zooming` is set, the option allows to disable zooming on an individual non-cartesian series. By default zooming is enabled for all series.
  final bool? zoomEnabled;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (accessibility != null) {
      json['accessibility'] = accessibility!.toJson();
    }
    if (allowPointSelect != null) {
      json['allowPointSelect'] = allowPointSelect;
    }
    if (animation != null) {
      json['animation'] = hcJsonValue(animation);
    }
    if (animationLimit != null) {
      json['animationLimit'] = animationLimit;
    }
    if (boostBlending != null) {
      json['boostBlending'] = boostBlending;
    }
    if (boostThreshold != null) {
      json['boostThreshold'] = boostThreshold;
    }
    if (className != null) {
      json['className'] = className;
    }
    if (clip != null) {
      json['clip'] = clip;
    }
    if (color != null) {
      json['color'] = hcJsonValue(color);
    }
    if (colorIndex != null) {
      json['colorIndex'] = colorIndex;
    }
    if (colorKey != null) {
      json['colorKey'] = colorKey;
    }
    if (compare != null) {
      json['compare'] = compare;
    }
    if (compareBase != null) {
      json['compareBase'] = hcJsonValue(compareBase);
    }
    if (compareStart != null) {
      json['compareStart'] = compareStart;
    }
    if (compareToMain != null) {
      json['compareToMain'] = compareToMain;
    }
    if (connectNulls != null) {
      json['connectNulls'] = connectNulls;
    }
    if (crisp != null) {
      json['crisp'] = crisp;
    }
    if (cropThreshold != null) {
      json['cropThreshold'] = cropThreshold;
    }
    if (cumulative != null) {
      json['cumulative'] = cumulative;
    }
    if (cumulativeStart != null) {
      json['cumulativeStart'] = cumulativeStart;
    }
    if (cursor != null) {
      json['cursor'] = cursor;
    }
    if (custom != null) {
      json['custom'] = custom!.toJson();
    }
    if (dashStyle != null) {
      json['dashStyle'] = dashStyle;
    }
    if (dataGrouping != null) {
      json['dataGrouping'] = dataGrouping!.toJson();
    }
    if (dataLabels != null) {
      json['dataLabels'] = hcJsonValue(dataLabels);
    }
    if (dataMapping != null) {
      json['dataMapping'] = dataMapping!.toJson();
    }
    if (dataSorting != null) {
      json['dataSorting'] = dataSorting!.toJson();
    }
    if (description != null) {
      json['description'] = description;
    }
    if (enableMouseTracking != null) {
      json['enableMouseTracking'] = enableMouseTracking;
    }
    if (events != null) {
      json['events'] = events!.toJson();
    }
    if (findNearestPointBy != null) {
      json['findNearestPointBy'] = findNearestPointBy;
    }
    if (gapSize != null) {
      json['gapSize'] = gapSize;
    }
    if (gapUnit != null) {
      json['gapUnit'] = gapUnit;
    }
    if (getExtremesFromAll != null) {
      json['getExtremesFromAll'] = getExtremesFromAll;
    }
    if (inactiveOtherPoints != null) {
      json['inactiveOtherPoints'] = inactiveOtherPoints;
    }
    if (includeInDataExport != null) {
      json['includeInDataExport'] = includeInDataExport;
    }
    if (label != null) {
      json['label'] = label!.toJson();
    }
    if (lastPrice != null) {
      json['lastPrice'] = lastPrice!.toJson();
    }
    if (lastVisiblePrice != null) {
      json['lastVisiblePrice'] = lastVisiblePrice!.toJson();
    }
    if (legendSymbol != null) {
      json['legendSymbol'] = legendSymbol;
    }
    if (legendSymbolColor != null) {
      json['legendSymbolColor'] = hcJsonValue(legendSymbolColor);
    }
    if (linecap != null) {
      json['linecap'] = linecap;
    }
    if (lineWidth != null) {
      json['lineWidth'] = lineWidth;
    }
    if (linkedTo != null) {
      json['linkedTo'] = linkedTo;
    }
    if (marker != null) {
      json['marker'] = marker!.toJson();
    }
    if (name != null) {
      json['name'] = name;
    }
    if (negativeColor != null) {
      json['negativeColor'] = hcJsonValue(negativeColor);
    }
    if (nullInteraction != null) {
      json['nullInteraction'] = nullInteraction;
    }
    if (onPoint != null) {
      json['onPoint'] = hcJsonValue(onPoint);
    }
    if (opacity != null) {
      json['opacity'] = opacity;
    }
    if (params != null) {
      json['params'] = params!.toJson();
    }
    if (point != null) {
      json['point'] = point!.toJson();
    }
    if (pointDescriptionFormat != null) {
      json['pointDescriptionFormat'] = hcJsonValue(pointDescriptionFormat);
    }
    if (pointDescriptionFormatter != null) {
      json['pointDescriptionFormatter'] =
          hcJsonValue(pointDescriptionFormatter);
    }
    if (relativeXValue != null) {
      json['relativeXValue'] = relativeXValue;
    }
    if (selected != null) {
      json['selected'] = selected;
    }
    if (shadow != null) {
      json['shadow'] = hcJsonValue(shadow);
    }
    if (showCheckbox != null) {
      json['showCheckbox'] = showCheckbox;
    }
    if (showInLegend != null) {
      json['showInLegend'] = showInLegend;
    }
    if (skipKeyboardNavigation != null) {
      json['skipKeyboardNavigation'] = skipKeyboardNavigation;
    }
    if (smoothedLine != null) {
      json['smoothedLine'] = smoothedLine!.toJson();
    }
    if (softThreshold != null) {
      json['softThreshold'] = softThreshold;
    }
    if (sonification != null) {
      json['sonification'] = sonification!.toJson();
    }
    if (states != null) {
      json['states'] = states!.toJson();
    }
    if (step != null) {
      json['step'] = step;
    }
    if (stickyTracking != null) {
      json['stickyTracking'] = stickyTracking;
    }
    if (threshold != null) {
      json['threshold'] = threshold;
    }
    if (tooltip != null) {
      json['tooltip'] = tooltip!.toJson();
    }
    if (turboThreshold != null) {
      json['turboThreshold'] = turboThreshold;
    }
    if (visible != null) {
      json['visible'] = visible;
    }
    if (zoneAxis != null) {
      json['zoneAxis'] = zoneAxis;
    }
    if (zones != null) {
      json['zones'] = zones!.map((e) => e.toJson()).toList();
    }
    if (zoomEnabled != null) {
      json['zoomEnabled'] = zoomEnabled;
    }
    return json;
  }
}

/// (Highstock) Parameters used in calculation of regression series' points.
class HCPlotStochasticParamsOptions implements HCOption {
  const HCPlotStochasticParamsOptions({
    this.index,
    this.period,
    this.periods,
  });

  final String? index;

  final String? period;

  /// (Highstock) Periods for Stochastic oscillator: [%K, %D].
  final dynamic periods;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (index != null) {
      json['index'] = index;
    }
    if (period != null) {
      json['period'] = period;
    }
    if (periods != null) {
      json['periods'] = hcJsonValue(periods);
    }
    return json;
  }
}

/// (Highstock) Smoothed line options.
class HCPlotStochasticSmoothedLineOptions implements HCOption {
  const HCPlotStochasticSmoothedLineOptions({
    this.styles,
  });

  /// (Highstock) Styles for a smoothed line.
  final HCPlotStochasticSmoothedLineStylesOptions? styles;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (styles != null) {
      json['styles'] = styles!.toJson();
    }
    return json;
  }
}

/// (Highstock) Styles for a smoothed line.
class HCPlotStochasticSmoothedLineStylesOptions implements HCOption {
  const HCPlotStochasticSmoothedLineStylesOptions({
    this.lineColor,
    this.lineWidth,
  });

  /// (Highstock) Color of the line. If not set, it's inherited from plotOptions.stochastic.color.
  final String? lineColor;

  /// (Highstock) Pixel width of the line.
  final num? lineWidth;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (lineColor != null) {
      json['lineColor'] = lineColor;
    }
    if (lineWidth != null) {
      json['lineWidth'] = lineWidth;
    }
    return json;
  }
}

/// (Highcharts, Highstock) Animation setting for hovering the graph in line-type series.
class HCPlotStochasticStatesHoverAnimationOptions implements HCOption {
  const HCPlotStochasticStatesHoverAnimationOptions({
    this.duration,
  });

  /// (Highcharts, Highstock) The duration of the hover animation in milliseconds. By default the hover state animates quickly in, and slowly back to normal.
  final num? duration;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (duration != null) {
      json['duration'] = duration;
    }
    return json;
  }
}

/// (Highstock) Animation when not hovering over the marker.
class HCPlotStochasticStatesInactiveAnimationOptions implements HCOption {
  const HCPlotStochasticStatesInactiveAnimationOptions({
    this.duration,
  });

  final num? duration;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (duration != null) {
      json['duration'] = duration;
    }
    return json;
  }
}

/// (Highcharts, Highstock) Animation setting for hovering the graph in line-type series.
class HCPlotStochasticStatesSelectAnimationOptions implements HCOption {
  const HCPlotStochasticStatesSelectAnimationOptions({
    this.duration,
  });

  /// (Highcharts, Highstock) The duration of the hover animation in milliseconds. By default the hover state animates quickly in, and slowly back to normal.
  final num? duration;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (duration != null) {
      json['duration'] = duration;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Gantt) For series on datetime axes, the date format in the tooltip's header will by default be guessed based on the closest data points. This member gives the default string representations used for each unit. For an overview of the string or object configuration, see dateFor
class HCPlotStochasticTooltipDateTimeLabelFormatsOptions implements HCOption {
  const HCPlotStochasticTooltipDateTimeLabelFormatsOptions({
    this.day,
    this.hour,
    this.millisecond,
    this.minute,
    this.month,
    this.second,
    this.week,
    this.year,
  });

  final String? day;

  final String? hour;

  final String? millisecond;

  final String? minute;

  final String? month;

  final String? second;

  final String? week;

  final String? year;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (day != null) {
      json['day'] = day;
    }
    if (hour != null) {
      json['hour'] = hour;
    }
    if (millisecond != null) {
      json['millisecond'] = millisecond;
    }
    if (minute != null) {
      json['minute'] = minute;
    }
    if (month != null) {
      json['month'] = month;
    }
    if (second != null) {
      json['second'] = second;
    }
    if (week != null) {
      json['week'] = week;
    }
    if (year != null) {
      json['year'] = year;
    }
    return json;
  }
}

/// (Highstock) Options for the tooltip header when tooltip.split is enabled. The header is the box containing the X value in a split tooltip.
class HCPlotStochasticTooltipHeaderOptions implements HCOption {
  const HCPlotStochasticTooltipHeaderOptions({
    this.backgroundColor,
    this.borderColor,
    this.borderWidth,
    this.distance,
    this.shape,
    this.style,
  });

  /// (Highstock) Background color for the tooltip header when tooltip.split is enabled.
  final dynamic backgroundColor;

  /// (Highstock) Border color for the tooltip header when tooltip.split is enabled.
  final dynamic borderColor;

  /// (Highstock) The width of the border for the tooltip header when tooltip.split is enabled.
  final num? borderWidth;

  /// (Highstock) Distance between the plot area and the header (except the chevron) in a split tooltip, in pixels. The default value makes the header text align with the axis labels.
  final num? distance;

  /// (Highstock) The name of a symbol to use for the border around the tooltip header. Applies only when tooltip.split is enabled.
  final String? shape;

  /// (Highstock) CSS styles for the tooltip header. The default is `{ fontSize: '1em' }`, ensuring that the header text is the same size as the axis labels.
  final dynamic style;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (backgroundColor != null) {
      json['backgroundColor'] = hcJsonValue(backgroundColor);
    }
    if (borderColor != null) {
      json['borderColor'] = hcJsonValue(borderColor);
    }
    if (borderWidth != null) {
      json['borderWidth'] = borderWidth;
    }
    if (distance != null) {
      json['distance'] = distance;
    }
    if (shape != null) {
      json['shape'] = shape;
    }
    if (style != null) {
      json['style'] = hcJsonValue(style);
    }
    return json;
  }
}

/// (Highstock) Positioning options for fixed tooltip, taking effect only when tooltip.fixed is `true`.
class HCPlotStochasticTooltipPositionOptions implements HCOption {
  const HCPlotStochasticTooltipPositionOptions({
    this.align,
    this.relativeTo,
    this.verticalAlign,
    this.x,
    this.y,
  });

  /// (Highstock) The horizontal alignment of the fixed tooltip.
  final String? align;

  /// (Highstock) What the fixed tooltip alignment should be relative to.
  final String? relativeTo;

  /// (Highstock) The vertical alignment of the fixed tooltip.
  final String? verticalAlign;

  /// (Highstock) X pixel offset from the given position. Can be used to shy away from axis lines, grid lines etc to avoid the tooltip overlapping other elements.
  final num? x;

  /// (Highstock) Y pixel offset from the given position. Can be used to shy away from axis lines, grid lines etc to avoid the tooltip overlapping other elements.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (align != null) {
      json['align'] = align;
    }
    if (relativeTo != null) {
      json['relativeTo'] = relativeTo;
    }
    if (verticalAlign != null) {
      json['verticalAlign'] = verticalAlign;
    }
    if (x != null) {
      json['x'] = x;
    }
    if (y != null) {
      json['y'] = y;
    }
    return json;
  }
}

/// (Highcharts, Highstock) Point accessibility options for a series.
class HCPlotStreamgraphAccessibilityPointOptions implements HCOption {
  const HCPlotStreamgraphAccessibilityPointOptions({
    this.dateFormat,
    this.describeNull,
    this.descriptionFormat,
    this.valueDecimals,
    this.valueDescriptionFormat,
    this.valuePrefix,
    this.valueSuffix,
  });

  /// (Highcharts, Highstock) Date format to use for points on datetime axes when describing them to screen reader users.
  final String? dateFormat;

  /// (Highcharts, Highstock) Whether or not to describe points with the value `null` to assistive technology, such as screen readers.
  final bool? describeNull;

  /// (Highcharts, Highstock) A format string to use instead of the default for point descriptions.
  final String? descriptionFormat;

  /// (Highcharts, Highstock) Decimals to use for the values in the point descriptions. Uses tooltip.valueDecimals if not defined.
  final num? valueDecimals;

  /// (Highcharts, Highstock) Format to use for describing the values of data points to assistive technology - including screen readers. The point context is available as `{point}`.
  final String? valueDescriptionFormat;

  /// (Highcharts, Highstock) Prefix to add to the values in the point descriptions. Uses tooltip.valuePrefix if not defined.
  final String? valuePrefix;

  /// (Highcharts, Highstock) Suffix to add to the values in the point descriptions. Uses tooltip.valueSuffix if not defined.
  final String? valueSuffix;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (dateFormat != null) {
      json['dateFormat'] = dateFormat;
    }
    if (describeNull != null) {
      json['describeNull'] = describeNull;
    }
    if (descriptionFormat != null) {
      json['descriptionFormat'] = descriptionFormat;
    }
    if (valueDecimals != null) {
      json['valueDecimals'] = valueDecimals;
    }
    if (valueDescriptionFormat != null) {
      json['valueDescriptionFormat'] = valueDescriptionFormat;
    }
    if (valuePrefix != null) {
      json['valuePrefix'] = valuePrefix;
    }
    if (valueSuffix != null) {
      json['valueSuffix'] = valueSuffix;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Enable or disable the initial animation when a series is displayed for the `dataLabels`. The animation can also be set as a configuration object. Please note that this option only applies to the initial animation.
class HCPlotStreamgraphDataLabelsAnimationOptions implements HCOption {
  const HCPlotStreamgraphDataLabelsAnimationOptions({
    this.defer,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) The animation delay time in milliseconds. Set to `0` to render the data labels immediately. As `undefined` inherits defer time from the series.animation.defer.
  final num? defer;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (defer != null) {
      json['defer'] = defer;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Options for the series data labels, appearing next to each data point.
class HCPlotStreamgraphDataLabelsOptions implements HCOption {
  const HCPlotStreamgraphDataLabelsOptions({
    this.align,
    this.alignTo,
    this.allowOverlap,
    this.animation,
    this.backgroundColor,
    this.borderColor,
    this.borderRadius,
    this.borderWidth,
    this.className,
    this.color,
    this.crop,
    this.defer,
    this.distance,
    this.enabled,
    this.filter,
    this.format,
    this.inside,
    this.labelrank,
    this.nullFormat,
    this.overflow,
    this.padding,
    this.position,
    this.rotation,
    this.shadow,
    this.shape,
    this.style,
    this.textPath,
    this.useHTML,
    this.verticalAlign,
    this.x,
    this.y,
    this.zIndex,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) The alignment of the data label compared to the point. If `right`, the right side of the label should be touching the point. For points with an extent, like columns, the alignments also dictates how to align it inside the box, as given with the inside option.
  final String? align;

  /// (Highcharts, Highstock, Highmaps, Gantt) Alignment method for data labels. If set to `plotEdges`, the labels are aligned within the plot area in the direction of the y-axis. So in a regular column chart, the labels are aligned vertically according to the `verticalAlign` setting. In a bar chart, whic
  final String? alignTo;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to allow data labels to overlap. To make the labels less sensitive for overlapping, the dataLabels.padding can be set to 0.
  final bool? allowOverlap;

  /// (Highcharts, Highstock, Highmaps, Gantt) Enable or disable the initial animation when a series is displayed for the `dataLabels`. The animation can also be set as a configuration object. Please note that this option only applies to the initial animation.
  final dynamic animation;

  /// (Highcharts, Highstock, Highmaps, Gantt) The background color or gradient for the data label. In addition to regular colors, there are two special setting for this option:
  final dynamic backgroundColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) The border color for the data label. Setting it to `auto` will use the point's color. Defaults to `undefined`.
  final dynamic borderColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) The border radius in pixels for the data label.
  final num? borderRadius;

  /// (Highcharts, Highstock, Highmaps, Gantt) The border width in pixels for the data label.
  final num? borderWidth;

  /// (Highcharts, Highstock, Highmaps, Gantt) A class name for the data label. Particularly in styled mode, this can be used to give each series' or point's data label unique styling. In addition to this option, a default color class name is added so that we can give the labels a contrast text shadow.
  final String? className;

  /// (Highcharts, Highstock, Highmaps, Gantt) This options is deprecated. Use style.color instead.
  final dynamic color;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to hide data labels that are outside the plot area. By default, the data label is moved inside the plot area according to the overflow option.
  final bool? crop;

  /// (Highcharts, Highstock, Gantt) Whether to defer displaying the data labels until the initial series animation has finished. Setting to `false` renders the data label immediately. If set to `true` inherits the defer time set in plotOptions.series.animation.
  final bool? defer;

  /// (Highcharts, Highstock, Gantt) The distance of the data label from the data point. Note that the `padding` setting also affects the rendered distance, but is not visible unless the data label has a border or background.
  final num? distance;

  /// (Highcharts, Highstock, Highmaps, Gantt) Enable or disable the data labels.
  final bool? enabled;

  /// (Highcharts, Highstock, Highmaps, Gantt) A declarative filter to control of which data labels to display. The declarative filter is designed for use when callback functions are not available, like when the chart options require a pure JSON structure or for use with graphical editors. For programmati
  final HCDataLabelsFilterOptionsObject? filter;

  /// (Highcharts, Highstock, Highmaps, Gantt) A format string for the data label. Available variables are the same as for `formatter`.
  final String? format;

  /// (Highcharts, Highstock, Highmaps, Gantt) For points with an extent, like columns or map areas, whether to align the data label inside the box or to the actual value point. Defaults to `false` in most cases, `true` in stacked columns.
  final bool? inside;

  /// (Highcharts, Highstock, Highmaps, Gantt) The rank for this point's data label in case of collision. If two data labels are about to overlap, only the one with the highest `labelrank` will be drawn.
  final num? labelrank;

  /// (Highcharts, Highstock, Highmaps, Gantt) Format for points with the value of null. Works analogously to format. `nullFormat` can be applied only to series which support displaying null points. `heatmap` and `tilemap` supports `nullFormat` by default while the following series requires [#series.nullI
  final dynamic nullFormat;

  /// (Highcharts, Highstock, Highmaps, Gantt) How to handle data labels that flow outside the plot area. The default is `"justify"`, which aligns them inside the plot area. For columns and bars, this means it will be moved inside the bar. To display data labels outside the plot area, set `crop` to `false
  final String? overflow;

  /// (Highcharts, Highstock, Highmaps, Gantt) When either the `borderWidth` or the `backgroundColor` is set, this is the padding within the box.
  final dynamic padding;

  /// (Highcharts, Highstock, Highmaps, Gantt) Aligns data labels relative to points. If `center` alignment is not possible, it defaults to `right`.
  final String? position;

  /// (Highcharts, Highstock, Highmaps, Gantt) Text rotation in degrees. Note that due to a more complex structure, backgrounds, borders and padding will be lost on a rotated data label.
  final num? rotation;

  /// (Highcharts, Highstock, Highmaps, Gantt) The shadow of the box. Works best with `borderWidth` or `backgroundColor`. Since 2.3 the shadow can be an object configuration containing `color`, `offsetX`, `offsetY`, `opacity` and `width`.
  final dynamic shadow;

  /// (Highcharts, Highstock, Highmaps, Gantt) The name of a symbol to use for the border around the label. Symbols are predefined functions on the Renderer object.
  final String? shape;

  /// (Highcharts, Highstock, Highmaps, Gantt) Styles for the label. The default `color` setting is `"contrast"`, which is a pseudo color that Highcharts picks up and applies the maximum contrast to the underlying point item, for example the bar in a bar chart.
  final HCCSSObject? style;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for a label text which should follow marker's shape. Border and background are disabled for a label that follows a path.
  final HCDataLabelsTextPathOptionsObject? textPath;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to use HTML to render the labels.
  final bool? useHTML;

  /// (Highcharts, Highstock, Highmaps, Gantt) The vertical alignment of a data label. Can be one of `top`, `middle` or `bottom`. The default value depends on the data, for instance in a column chart, the label is above positive values and below negative values.
  final String? verticalAlign;

  /// (Highcharts, Highstock, Highmaps, Gantt) The x position offset of the label relative to the point in pixels.
  final num? x;

  /// (Highcharts, Highstock, Highmaps, Gantt) The y position offset of the label relative to the point in pixels.
  final num? y;

  /// (Highcharts, Highstock, Highmaps, Gantt) The z index of the data labels group. Does not apply below series level options.
  final num? zIndex;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (align != null) {
      json['align'] = align;
    }
    if (alignTo != null) {
      json['alignTo'] = alignTo;
    }
    if (allowOverlap != null) {
      json['allowOverlap'] = allowOverlap;
    }
    if (animation != null) {
      json['animation'] = hcJsonValue(animation);
    }
    if (backgroundColor != null) {
      json['backgroundColor'] = hcJsonValue(backgroundColor);
    }
    if (borderColor != null) {
      json['borderColor'] = hcJsonValue(borderColor);
    }
    if (borderRadius != null) {
      json['borderRadius'] = borderRadius;
    }
    if (borderWidth != null) {
      json['borderWidth'] = borderWidth;
    }
    if (className != null) {
      json['className'] = className;
    }
    if (color != null) {
      json['color'] = hcJsonValue(color);
    }
    if (crop != null) {
      json['crop'] = crop;
    }
    if (defer != null) {
      json['defer'] = defer;
    }
    if (distance != null) {
      json['distance'] = distance;
    }
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    if (filter != null) {
      json['filter'] = filter!.toJson();
    }
    if (format != null) {
      json['format'] = format;
    }
    if (inside != null) {
      json['inside'] = inside;
    }
    if (labelrank != null) {
      json['labelrank'] = labelrank;
    }
    if (nullFormat != null) {
      json['nullFormat'] = hcJsonValue(nullFormat);
    }
    if (overflow != null) {
      json['overflow'] = overflow;
    }
    if (padding != null) {
      json['padding'] = hcJsonValue(padding);
    }
    if (position != null) {
      json['position'] = position;
    }
    if (rotation != null) {
      json['rotation'] = rotation;
    }
    if (shadow != null) {
      json['shadow'] = hcJsonValue(shadow);
    }
    if (shape != null) {
      json['shape'] = shape;
    }
    if (style != null) {
      json['style'] = style!.toJson();
    }
    if (textPath != null) {
      json['textPath'] = textPath!.toJson();
    }
    if (useHTML != null) {
      json['useHTML'] = useHTML;
    }
    if (verticalAlign != null) {
      json['verticalAlign'] = verticalAlign;
    }
    if (x != null) {
      json['x'] = x;
    }
    if (y != null) {
      json['y'] = y;
    }
    if (zIndex != null) {
      json['zIndex'] = zIndex;
    }
    return json;
  }
}

/// (Highcharts, Highstock) Options for series data sorting.
class HCPlotStreamgraphDataSortingOptions implements HCOption {
  const HCPlotStreamgraphDataSortingOptions({
    this.enabled,
    this.matchByName,
    this.sortKey,
  });

  /// (Highcharts, Highstock) Enable or disable data sorting for the series. Use xAxis.reversed to change the sorting order.
  final bool? enabled;

  /// (Highcharts, Highstock) Whether to allow matching points by name in an update. If this option is disabled, points will be matched by order.
  final bool? matchByName;

  /// (Highcharts, Highstock) Determines what data value should be used to sort by.
  final String? sortKey;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    if (matchByName != null) {
      json['matchByName'] = matchByName;
    }
    if (sortKey != null) {
      json['sortKey'] = sortKey;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Gantt) Styles for the series label. The color defaults to the series color, or a contrast color if `onArea`.
class HCPlotStreamgraphLabelStyleOptions implements HCOption {
  const HCPlotStreamgraphLabelStyleOptions({
    this.fontSize,
    this.fontWeight,
  });

  final num? fontSize;

  final String? fontWeight;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (fontSize != null) {
      json['fontSize'] = fontSize;
    }
    if (fontWeight != null) {
      json['fontWeight'] = fontWeight;
    }
    return json;
  }
}

/// (Highcharts, Highstock) Animation when hovering over the marker.
class HCPlotStreamgraphMarkerStatesHoverAnimationOptions implements HCOption {
  const HCPlotStreamgraphMarkerStatesHoverAnimationOptions({
    this.duration,
  });

  final num? duration;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (duration != null) {
      json['duration'] = duration;
    }
    return json;
  }
}

/// (Highcharts, Highstock) Options for the connector in the _Series on point_ feature.
class HCPlotStreamgraphOnPointConnectorOptions implements HCOption {
  const HCPlotStreamgraphOnPointConnectorOptions({
    this.dashstyle,
    this.stroke,
    this.width,
  });

  /// (Highcharts, Highstock) A name for the dash style to use for the connector.
  final String? dashstyle;

  /// (Highcharts, Highstock) Color of the connector line. By default it's the series' color.
  final String? stroke;

  /// (Highcharts, Highstock) Pixel width of the connector line.
  final num? width;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (dashstyle != null) {
      json['dashstyle'] = dashstyle;
    }
    if (stroke != null) {
      json['stroke'] = stroke;
    }
    if (width != null) {
      json['width'] = width;
    }
    return json;
  }
}

/// (Highcharts, Highstock) Options for the _Series on point_ feature. Only `pie` and `sunburst` series are supported at this moment.
class HCPlotStreamgraphOnPointOptions implements HCOption {
  const HCPlotStreamgraphOnPointOptions({
    this.connectorOptions,
    this.id,
    this.position,
  });

  /// (Highcharts, Highstock) Options for the connector in the _Series on point_ feature.
  final dynamic connectorOptions;

  /// (Highcharts, Highstock) The `id` of the point that we connect the series to. Only points with a given `plotX` and `plotY` values and map points are valid.
  final String? id;

  /// (Highcharts, Highstock) Options allowing to set a position and an offset of the series in the _Series on point_ feature.
  final dynamic position;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (connectorOptions != null) {
      json['connectorOptions'] = hcJsonValue(connectorOptions);
    }
    if (id != null) {
      json['id'] = id;
    }
    if (position != null) {
      json['position'] = hcJsonValue(position);
    }
    return json;
  }
}

/// (Highcharts, Highstock) Options allowing to set a position and an offset of the series in the _Series on point_ feature.
class HCPlotStreamgraphOnPointPositionOptions implements HCOption {
  const HCPlotStreamgraphOnPointPositionOptions({
    this.offsetX,
    this.offsetY,
    this.x,
    this.y,
  });

  /// (Highcharts, Highstock) Series center offset from the original x position. If defined, the connector line is drawn connecting original position with new position.
  final num? offsetX;

  /// (Highcharts, Highstock) Series center offset from the original y position. If defined, the connector line is drawn from original position to a new position.
  final num? offsetY;

  /// (Highcharts, Highstock) X position of the series center. By default, the series is displayed on the point that it is connected to.
  final num? x;

  /// (Highcharts, Highstock) Y position of the series center. By default, the series is displayed on the point that it is connected to.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (offsetX != null) {
      json['offsetX'] = offsetX;
    }
    if (offsetY != null) {
      json['offsetY'] = offsetY;
    }
    if (x != null) {
      json['x'] = x;
    }
    if (y != null) {
      json['y'] = y;
    }
    return json;
  }
}

/// (Highcharts, Highstock) A streamgraph is a type of stacked area graph which is displaced around a central axis, resulting in a flowing, organic shape.
class HCPlotStreamgraphOptions implements HCOption {
  const HCPlotStreamgraphOptions({
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
    this.compare,
    this.compareBase,
    this.compareStart,
    this.connectEnds,
    this.connectNulls,
    this.crisp,
    this.cropThreshold,
    this.cumulative,
    this.cumulativeStart,
    this.cursor,
    this.custom,
    this.dashStyle,
    this.dataGrouping,
    this.dataLabels,
    this.dataMapping,
    this.dataSorting,
    this.description,
    this.dragDrop,
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
    this.keys,
    this.label,
    this.lastPrice,
    this.lastVisiblePrice,
    this.legendSymbol,
    this.legendSymbolColor,
    this.linecap,
    this.lineColor,
    this.lineWidth,
    this.linkedTo,
    this.marker,
    this.navigatorOptions,
    this.negativeColor,
    this.negativeFillColor,
    this.nullInteraction,
    this.onPoint,
    this.opacity,
    this.point,
    this.pointDescriptionFormat,
    this.pointDescriptionFormatter,
    this.pointInterval,
    this.pointIntervalUnit,
    this.pointPlacement,
    this.pointRange,
    this.pointStart,
    this.relativeXValue,
    this.selected,
    this.shadow,
    this.showCheckbox,
    this.showInLegend,
    this.showInNavigator,
    this.skipKeyboardNavigation,
    this.softThreshold,
    this.sonification,
    this.stacking,
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
  });

  /// (Highcharts, Highstock) Accessibility options for a series.
  final HCSeriesAccessibilityOptionsObject? accessibility;

  /// (Highcharts, Highstock) Allow this series' points to be selected by clicking on the graphic (columns, point markers, pie slices, map areas etc).
  final bool? allowPointSelect;

  /// (Highcharts, Highstock) Enable or disable the initial animation when a series is displayed. The animation can also be set as a configuration object. Please note that this option only applies to the initial animation of the series itself. For other animations, see chart.animation and the animation pa
  final dynamic animation;

  /// (Highcharts, Highstock) For some series, there is a limit that shuts down animation by default when the total number of points in the chart is too high. For example, for a column chart and its derivatives, animation does not run if there is more than 250 points totally. To disable this cap, set `ani
  final num? animationLimit;

  /// (Highcharts, Highstock) An additional class name to apply to the series' graphical elements. This option does not replace default class names of the graphical element. Changes to the series' color will also be reflected in a chart's legend and tooltip.
  final String? className;

  /// (Highcharts, Highstock) Disable this option to allow series rendering in the whole plotting area.
  final bool? clip;

  /// (Highcharts, Highstock) The main color of the series. In line type series it applies to the line and the point markers unless otherwise specified. In bar type series it applies to the bars unless a color is specified per point. The default value is pulled from the `options.colors` array.
  final dynamic color;

  /// (Highcharts, Highstock, Highmaps) When using dual or multiple color axes, this number defines which colorAxis the particular series is connected to. It refers to either the axis id or the index of the axis in the colorAxis array, with 0 being the first. Set this option to false to prevent a series f
  final dynamic colorAxis;

  /// (Highcharts, Highstock) Styled mode only. A specific color index to use for the series, so its graphic representations are given the class name `highcharts-color-{n}`.
  final num? colorIndex;

  /// (Highcharts, Highstock, Highmaps) Determines what data value should be used to calculate point color if `colorAxis` is used. Requires to set `min` and `max` if some custom point property is used or if approximation for data grouping is set to `'sum'`.
  final String? colorKey;

  /// (Highstock) Compare the values of the series against the first non-null, non- zero value in the visible range. The y axis will show percentage or absolute change depending on whether `compare` is set to `"percent"` or `"value"`. When this is applied to multiple series, it allows comparing the develo
  final String? compare;

  /// (Highstock) When compare is `percent`, this option dictates whether to use 0 or 100 as the base of comparison.
  final dynamic compareBase;

  /// (Highstock) Defines if comparison should start from the first point within the visible range or should start from the last point **before** the range.
  final bool? compareStart;

  /// (Highcharts) Polar charts only. Whether to connect the ends of a line series plot across the extremes.
  final bool? connectEnds;

  /// (Highcharts, Highstock) Whether to connect a graph line across null points, or render a gap between the two points on either side of the null.
  final bool? connectNulls;

  /// (Highcharts, Highstock, Gantt) When true, each point or column edge is rounded to its nearest pixel in order to render sharp on screen. In some cases, when there are a lot of densely packed columns, this leads to visible difference in column widths or distance between columns. In these cases, settin
  final bool? crisp;

  /// (Highcharts, Highstock) When the series contains less points than the crop threshold, all points are drawn, even if the points fall outside the visible plot area at the current zoom. The advantage of drawing all points (including markers and columns), is that animation is performed on updates. On th
  final num? cropThreshold;

  /// (Highstock) Cumulative Sum feature replaces points' values with the following formula: `sum of all previous points' values + current point's value`. Works only for points in a visible range. Adds the `cumulativeSum` field to each point object that can be accessed e.g. in the tooltip.pointFormat.
  final bool? cumulative;

  /// (Highstock) Defines if cumulation should start from the first point within the visible range or should start from the last point **before** the range.
  final bool? cumulativeStart;

  /// (Highcharts, Highstock) You can set the cursor to "pointer" if you have click events attached to the series, to signal to the user that the points and lines can be clicked.
  final String? cursor;

  /// (Highcharts, Highstock) A reserved subspace to store options and values for customized functionality. Here you can add additional data for your own event callbacks and formatter callbacks.
  final HCDictionary? custom;

  /// (Highcharts, Highstock) Name of the dash style to use for the graph, or for some series types the outline of each shape.
  final String? dashStyle;

  /// (Highstock) Data grouping is the concept of sampling the data values into larger blocks in order to ease readability and increase performance of the JavaScript charts. Highcharts Stock by default applies data grouping when the points become closer than a certain pixel value, determined by the `group
  final HCDataGroupingOptionsObject? dataGrouping;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for the series data labels, appearing next to each data point.
  final dynamic dataLabels;

  /// (Highcharts, Highstock) The mapping between the data table and the series data points. This is used in conjunction with the `dataTable` option (on chart or series level) to map columns from the data table to the properties of the data points. The keys of the `dataMapping` object correspond to the pr
  final HCDataMappingOptionsObject? dataMapping;

  /// (Highcharts, Highstock) Options for series data sorting.
  final HCPlotStreamgraphDataSortingOptions? dataSorting;

  /// (Highcharts, Highstock) Deprecated. Use plotOptions.series.accessibility.description instead.
  final String? description;

  /// (Highcharts, Highstock) The draggable-points module allows points to be moved around or modified in the chart. In addition to the options mentioned under the `dragDrop` API structure, the module fires three events, point.dragStart, point.drag and point.drop.
  final HCSeriesDragDropOptionsObject? dragDrop;

  /// (Highcharts, Highstock) Enable or disable the mouse tracking for a specific series. This includes point tooltips and click events on graphs and points. For large datasets it improves performance.
  final bool? enableMouseTracking;

  /// (Highcharts, Highstock) General event handlers for the series items. These event hooks can also be attached to the series at run time using the `Highcharts.addEvent` function.
  final HCSeriesEventsOptionsObject? events;

  /// (Highcharts, Highstock) Fill color or gradient for the area. When `undefined`, the series' `color` is used with the series' `fillOpacity`.
  final dynamic fillColor;

  /// (Highcharts, Highstock) Fill opacity for the area. When you set an explicit `fillColor`, the `fillOpacity` is not applied. Instead, you should define the opacity in the `fillColor` with an rgba color definition. The `fillOpacity` setting, also the default setting, overrides the alpha component of th
  final num? fillOpacity;

  /// (Highcharts, Highstock) Determines whether the series should look for the nearest point in both dimensions or just the x-dimension when hovering the series. Defaults to `'xy'` for scatter series and `'x'` for most other series. If the data has duplicate x-values, it is recommended to set this to `'x
  final String? findNearestPointBy;

  /// (Highcharts, Highstock) Defines when to display a gap in the graph, together with the gapUnit option.
  final num? gapSize;

  /// (Highcharts, Highstock) Together with gapSize, this option defines where to draw gaps in the graph.
  final String? gapUnit;

  /// (Highcharts, Highstock, Gantt) Whether to use the Y extremes of the total chart width or only the zoomed area when zooming in on parts of the X axis. By default, the Y axis adjusts to the min and max of the visible data. Cartesian series only.
  final bool? getExtremesFromAll;

  /// (Highcharts, Highstock) Highlight only the hovered point and fade the remaining points.
  final bool? inactiveOtherPoints;

  /// (Highcharts, Highstock) When set to `false` will prevent the series data from being included in any form of data export.
  final bool? includeInDataExport;

  /// (Highcharts, Highstock) An array specifying which option maps to which key in the data point array. This makes it convenient to work with unstructured data arrays from different sources.
  final List<String>? keys;

  /// (Highcharts, Highstock, Gantt) Series labels are placed as close to the series as possible in a natural way, seeking to avoid other series. The goal of this feature is to make the chart more easily readable, like if a human designer placed the labels in the optimal position.
  final HCSeriesLabelOptionsObject? label;

  /// (Highstock) The line marks the last price from all points.
  final HCSeriesLastPriceOptionsObject? lastPrice;

  /// (Highstock) The line marks the last price from visible range of points.
  final HCSeriesLastVisiblePriceOptionsObject? lastVisiblePrice;

  /// (Highcharts, Highstock) What type of legend symbol to render for this series. Can be one of `areaMarker`, `lineMarker` or `rectangle`.
  final String? legendSymbol;

  /// (Highcharts, Highstock, Highmaps) Defines the color of the legend symbol for this series. Defaults to undefined, in which case the series color is used. Does not work with styled mode.
  final dynamic legendSymbolColor;

  /// (Highcharts, Highstock) The line cap used for line ends and line joins on the graph.
  final String? linecap;

  /// (Highcharts, Highstock) A separate color for the graph line. By default the line takes the `color` of the series, but the lineColor setting allows setting a separate color for the line without altering the `fillColor`.
  final dynamic lineColor;

  /// (Highcharts, Highstock) Pixel width of the graph line.
  final num? lineWidth;

  /// (Highcharts, Highstock, Gantt) The id of another series to link to. Additionally, the value can be ":previous" to link to the previous series. When two series are linked, only the first one appears in the legend. Toggling the visibility of this also toggles the linked series.
  final String? linkedTo;

  /// (Highcharts, Highstock) Options for the point markers of line and scatter-like series. Properties like `fillColor`, `lineColor` and `lineWidth` define the visual appearance of the markers. The `symbol` option defines the shape. Other series types, like column series, don't have markers, but have vis
  final HCPointMarkerOptionsObject? marker;

  /// (Highstock) Options for the corresponding navigator series if `showInNavigator` is `true` for this series. Available options are the same as any series, documented at plotOptions and series.
  final HCPlotSeriesOptions? navigatorOptions;

  /// (Highcharts, Highstock) The color for the parts of the graph or points that are below the threshold. Note that `zones` takes precedence over the negative color. Using `negativeColor` is equivalent to applying a zone with value of 0.
  final dynamic negativeColor;

  /// (Highcharts) A separate color for the negative part of the area. Note that `zones` takes precedence over the negative fill color.
  final dynamic negativeFillColor;

  /// (Highcharts, Highstock) Whether or not data-points with the value of `null` should be interactive. When this is set to `true`, tooltips may highlight these points, and this option also enables keyboard navigation for such points. Format options for such points include `nullFormat` and `nullFormatter
  final bool? nullInteraction;

  /// (Highcharts, Highstock) Options for the _Series on point_ feature. Only `pie` and `sunburst` series are supported at this moment.
  final dynamic onPoint;

  /// (Highcharts, Highstock) Opacity of a series parts: line, fill (e.g. area) and dataLabels.
  final num? opacity;

  /// (Highcharts, Highstock) Properties for each single point.
  final HCPlotSeriesPointOptions? point;

  /// (Highcharts, Highstock) Deprecated. Use series.accessibility.point.descriptionFormat instead.
  final dynamic pointDescriptionFormat;

  /// (Highcharts, Highstock) Deprecated. Use series.accessibility.point.descriptionFormatter instead.
  final dynamic pointDescriptionFormatter;

  /// (Highcharts, Highstock, Gantt) If no x values are given for the points in a series, `pointInterval` defines the interval of the x values. For example, if a series contains one value every decade starting from year 0, set `pointInterval` to `10`. In true `datetime` axes, the `pointInterval` is set in
  final num? pointInterval;

  /// (Highcharts, Highstock, Gantt) On datetime series, this allows for setting the pointInterval to irregular time units, `day`, `month` and `year`. A day is usually the same as 24 hours, but `pointIntervalUnit` also takes the DST crossover into consideration when dealing with local time. Combine this o
  final String? pointIntervalUnit;

  /// (Highcharts, Highstock, Gantt) Possible values: `"on"`, `"between"`, `number`.
  final dynamic pointPlacement;

  /// (Highstock) The width of each point on the x axis. For example in a column chart with one value each day, the pointRange would be 1 day (= 24 * 3600
  final num? pointRange;

  /// (Highcharts, Highstock, Gantt) If no x values are given for the points in a series, `pointStart` defines on what value to start. For example, if a series contains one yearly value starting from 1945, set `pointStart` to 1945.
  final dynamic pointStart;

  /// (Highcharts, Highstock) When true, X values in the data set are relative to the current `pointStart`, `pointInterval` and `pointIntervalUnit` settings. This allows compression of the data for datasets with irregular X values.
  final bool? relativeXValue;

  /// (Highcharts, Highstock) Whether to select the series initially. If `showCheckbox` is true, the checkbox next to the series name in the legend will be checked for a selected series.
  final bool? selected;

  /// (Highcharts, Highstock) Whether to apply a drop shadow to the graph line. Since 2.3 the shadow can be an object configuration containing `color`, `offsetX`, `offsetY`, `opacity` and `width`.
  final dynamic shadow;

  /// (Highcharts, Highstock) If true, a checkbox is displayed next to the legend item to allow selecting the series. The state of the checkbox is determined by the `selected` option.
  final bool? showCheckbox;

  /// (Highcharts, Highstock) Whether to display this particular series or series type in the legend. Standalone series are shown in legend by default, and linked series are not. Since v7.2.0 it is possible to show series that use colorAxis by setting this option to `true`.
  final bool? showInLegend;

  /// (Highstock) Whether or not to show the series in the navigator. Takes precedence over navigator.baseSeries if defined.
  final bool? showInNavigator;

  /// (Highcharts, Highstock) Deprecated. Use series.accessibility.keyboardNavigation instead.
  final bool? skipKeyboardNavigation;

  /// (Highcharts, Highstock) When this is true, the series will not cause the Y axis to cross the zero plane (or threshold option) unless the data actually crosses the plane.
  final bool? softThreshold;

  /// (Highcharts, Highstock) Sonification/audio chart options for a series.
  final HCSeriesSonificationOptions? sonification;

  /// (Highcharts, Highstock) Whether to stack the values of each series on top of each other. Possible values are null to disable, `"normal"` to stack by value or `"percent"`.
  final String? stacking;

  /// (Highcharts, Highstock) A collection of options for different series states.
  final HCSeriesStatesOptionsObject? states;

  /// (Highcharts, Highstock) Sticky tracking of mouse events. When true, the `mouseOut` event on a series isn't triggered until the mouse moves over another series, or out of the plot area. When false, the `mouseOut` event on a series is triggered when the mouse leaves the area around the series' graph o
  final bool? stickyTracking;

  /// (Highcharts, Highstock) The Y axis value to serve as the base for the area, for distinguishing between values above and below a threshold. The area between the graph and the threshold is filled.
  final num? threshold;

  /// (Highcharts, Highstock) A configuration object for the tooltip rendering of each single series. Properties are inherited from tooltip, but only the following properties can be defined on a series level.
  final HCSeriesTooltipOptionsObject? tooltip;

  /// (Highcharts, Highstock) Whether the whole area or just the line should respond to mouseover tooltips and other mouse or touch events.
  final bool? trackByArea;

  /// (Highcharts, Highstock, Gantt) When a series contains a `data` array that is longer than this, the Series class looks for data configurations of plain numbers or arrays of numbers. The first and last valid points are checked. If found, the rest of the data is assumed to be the same. This saves expen
  final num? turboThreshold;

  /// (Highcharts, Highstock) Set the initial visibility of the series.
  final bool? visible;

  /// (Highcharts, Highstock) Defines the Axis on which the zones are applied.
  final String? zoneAxis;

  /// (Highcharts, Highstock) An array defining zones within a series. Zones can be applied to the X axis, Y axis or Z axis for bubbles, according to the `zoneAxis` option. The zone definitions have to be in ascending order regarding to the value.
  final List<HCSeriesZonesOptionsObject>? zones;

  /// (Highcharts, Highstock) Whether to zoom non-cartesian series. If `chart.zooming` is set, the option allows to disable zooming on an individual non-cartesian series. By default zooming is enabled for all series.
  final bool? zoomEnabled;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (accessibility != null) {
      json['accessibility'] = accessibility!.toJson();
    }
    if (allowPointSelect != null) {
      json['allowPointSelect'] = allowPointSelect;
    }
    if (animation != null) {
      json['animation'] = hcJsonValue(animation);
    }
    if (animationLimit != null) {
      json['animationLimit'] = animationLimit;
    }
    if (className != null) {
      json['className'] = className;
    }
    if (clip != null) {
      json['clip'] = clip;
    }
    if (color != null) {
      json['color'] = hcJsonValue(color);
    }
    if (colorAxis != null) {
      json['colorAxis'] = hcJsonValue(colorAxis);
    }
    if (colorIndex != null) {
      json['colorIndex'] = colorIndex;
    }
    if (colorKey != null) {
      json['colorKey'] = colorKey;
    }
    if (compare != null) {
      json['compare'] = compare;
    }
    if (compareBase != null) {
      json['compareBase'] = hcJsonValue(compareBase);
    }
    if (compareStart != null) {
      json['compareStart'] = compareStart;
    }
    if (connectEnds != null) {
      json['connectEnds'] = connectEnds;
    }
    if (connectNulls != null) {
      json['connectNulls'] = connectNulls;
    }
    if (crisp != null) {
      json['crisp'] = crisp;
    }
    if (cropThreshold != null) {
      json['cropThreshold'] = cropThreshold;
    }
    if (cumulative != null) {
      json['cumulative'] = cumulative;
    }
    if (cumulativeStart != null) {
      json['cumulativeStart'] = cumulativeStart;
    }
    if (cursor != null) {
      json['cursor'] = cursor;
    }
    if (custom != null) {
      json['custom'] = custom!.toJson();
    }
    if (dashStyle != null) {
      json['dashStyle'] = dashStyle;
    }
    if (dataGrouping != null) {
      json['dataGrouping'] = dataGrouping!.toJson();
    }
    if (dataLabels != null) {
      json['dataLabels'] = hcJsonValue(dataLabels);
    }
    if (dataMapping != null) {
      json['dataMapping'] = dataMapping!.toJson();
    }
    if (dataSorting != null) {
      json['dataSorting'] = dataSorting!.toJson();
    }
    if (description != null) {
      json['description'] = description;
    }
    if (dragDrop != null) {
      json['dragDrop'] = dragDrop!.toJson();
    }
    if (enableMouseTracking != null) {
      json['enableMouseTracking'] = enableMouseTracking;
    }
    if (events != null) {
      json['events'] = events!.toJson();
    }
    if (fillColor != null) {
      json['fillColor'] = hcJsonValue(fillColor);
    }
    if (fillOpacity != null) {
      json['fillOpacity'] = fillOpacity;
    }
    if (findNearestPointBy != null) {
      json['findNearestPointBy'] = findNearestPointBy;
    }
    if (gapSize != null) {
      json['gapSize'] = gapSize;
    }
    if (gapUnit != null) {
      json['gapUnit'] = gapUnit;
    }
    if (getExtremesFromAll != null) {
      json['getExtremesFromAll'] = getExtremesFromAll;
    }
    if (inactiveOtherPoints != null) {
      json['inactiveOtherPoints'] = inactiveOtherPoints;
    }
    if (includeInDataExport != null) {
      json['includeInDataExport'] = includeInDataExport;
    }
    if (keys != null) {
      json['keys'] = keys;
    }
    if (label != null) {
      json['label'] = label!.toJson();
    }
    if (lastPrice != null) {
      json['lastPrice'] = lastPrice!.toJson();
    }
    if (lastVisiblePrice != null) {
      json['lastVisiblePrice'] = lastVisiblePrice!.toJson();
    }
    if (legendSymbol != null) {
      json['legendSymbol'] = legendSymbol;
    }
    if (legendSymbolColor != null) {
      json['legendSymbolColor'] = hcJsonValue(legendSymbolColor);
    }
    if (linecap != null) {
      json['linecap'] = linecap;
    }
    if (lineColor != null) {
      json['lineColor'] = hcJsonValue(lineColor);
    }
    if (lineWidth != null) {
      json['lineWidth'] = lineWidth;
    }
    if (linkedTo != null) {
      json['linkedTo'] = linkedTo;
    }
    if (marker != null) {
      json['marker'] = marker!.toJson();
    }
    if (navigatorOptions != null) {
      json['navigatorOptions'] = navigatorOptions!.toJson();
    }
    if (negativeColor != null) {
      json['negativeColor'] = hcJsonValue(negativeColor);
    }
    if (negativeFillColor != null) {
      json['negativeFillColor'] = hcJsonValue(negativeFillColor);
    }
    if (nullInteraction != null) {
      json['nullInteraction'] = nullInteraction;
    }
    if (onPoint != null) {
      json['onPoint'] = hcJsonValue(onPoint);
    }
    if (opacity != null) {
      json['opacity'] = opacity;
    }
    if (point != null) {
      json['point'] = point!.toJson();
    }
    if (pointDescriptionFormat != null) {
      json['pointDescriptionFormat'] = hcJsonValue(pointDescriptionFormat);
    }
    if (pointDescriptionFormatter != null) {
      json['pointDescriptionFormatter'] =
          hcJsonValue(pointDescriptionFormatter);
    }
    if (pointInterval != null) {
      json['pointInterval'] = pointInterval;
    }
    if (pointIntervalUnit != null) {
      json['pointIntervalUnit'] = pointIntervalUnit;
    }
    if (pointPlacement != null) {
      json['pointPlacement'] = hcJsonValue(pointPlacement);
    }
    if (pointRange != null) {
      json['pointRange'] = pointRange;
    }
    if (pointStart != null) {
      json['pointStart'] = hcJsonValue(pointStart);
    }
    if (relativeXValue != null) {
      json['relativeXValue'] = relativeXValue;
    }
    if (selected != null) {
      json['selected'] = selected;
    }
    if (shadow != null) {
      json['shadow'] = hcJsonValue(shadow);
    }
    if (showCheckbox != null) {
      json['showCheckbox'] = showCheckbox;
    }
    if (showInLegend != null) {
      json['showInLegend'] = showInLegend;
    }
    if (showInNavigator != null) {
      json['showInNavigator'] = showInNavigator;
    }
    if (skipKeyboardNavigation != null) {
      json['skipKeyboardNavigation'] = skipKeyboardNavigation;
    }
    if (softThreshold != null) {
      json['softThreshold'] = softThreshold;
    }
    if (sonification != null) {
      json['sonification'] = sonification!.toJson();
    }
    if (stacking != null) {
      json['stacking'] = stacking;
    }
    if (states != null) {
      json['states'] = states!.toJson();
    }
    if (stickyTracking != null) {
      json['stickyTracking'] = stickyTracking;
    }
    if (threshold != null) {
      json['threshold'] = threshold;
    }
    if (tooltip != null) {
      json['tooltip'] = tooltip!.toJson();
    }
    if (trackByArea != null) {
      json['trackByArea'] = trackByArea;
    }
    if (turboThreshold != null) {
      json['turboThreshold'] = turboThreshold;
    }
    if (visible != null) {
      json['visible'] = visible;
    }
    if (zoneAxis != null) {
      json['zoneAxis'] = zoneAxis;
    }
    if (zones != null) {
      json['zones'] = zones!.map((e) => e.toJson()).toList();
    }
    if (zoomEnabled != null) {
      json['zoomEnabled'] = zoomEnabled;
    }
    return json;
  }
}

/// (Highcharts, Highstock) Animation setting for hovering the graph in line-type series.
class HCPlotStreamgraphStatesHoverAnimationOptions implements HCOption {
  const HCPlotStreamgraphStatesHoverAnimationOptions({
    this.duration,
  });

  /// (Highcharts, Highstock) The duration of the hover animation in milliseconds. By default the hover state animates quickly in, and slowly back to normal.
  final num? duration;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (duration != null) {
      json['duration'] = duration;
    }
    return json;
  }
}

/// (Highcharts, Highstock) Animation when not hovering over the marker.
class HCPlotStreamgraphStatesInactiveAnimationOptions implements HCOption {
  const HCPlotStreamgraphStatesInactiveAnimationOptions({
    this.duration,
  });

  final num? duration;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (duration != null) {
      json['duration'] = duration;
    }
    return json;
  }
}

/// (Highcharts, Highstock) Animation setting for hovering the graph in line-type series.
class HCPlotStreamgraphStatesSelectAnimationOptions implements HCOption {
  const HCPlotStreamgraphStatesSelectAnimationOptions({
    this.duration,
  });

  /// (Highcharts, Highstock) The duration of the hover animation in milliseconds. By default the hover state animates quickly in, and slowly back to normal.
  final num? duration;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (duration != null) {
      json['duration'] = duration;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Gantt) For series on datetime axes, the date format in the tooltip's header will by default be guessed based on the closest data points. This member gives the default string representations used for each unit. For an overview of the string or object configuration, see dateFor
class HCPlotStreamgraphTooltipDateTimeLabelFormatsOptions implements HCOption {
  const HCPlotStreamgraphTooltipDateTimeLabelFormatsOptions({
    this.day,
    this.hour,
    this.millisecond,
    this.minute,
    this.month,
    this.second,
    this.week,
    this.year,
  });

  final String? day;

  final String? hour;

  final String? millisecond;

  final String? minute;

  final String? month;

  final String? second;

  final String? week;

  final String? year;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (day != null) {
      json['day'] = day;
    }
    if (hour != null) {
      json['hour'] = hour;
    }
    if (millisecond != null) {
      json['millisecond'] = millisecond;
    }
    if (minute != null) {
      json['minute'] = minute;
    }
    if (month != null) {
      json['month'] = month;
    }
    if (second != null) {
      json['second'] = second;
    }
    if (week != null) {
      json['week'] = week;
    }
    if (year != null) {
      json['year'] = year;
    }
    return json;
  }
}

/// (Highcharts, Highstock) Options for the tooltip header when tooltip.split is enabled. The header is the box containing the X value in a split tooltip.
class HCPlotStreamgraphTooltipHeaderOptions implements HCOption {
  const HCPlotStreamgraphTooltipHeaderOptions({
    this.backgroundColor,
    this.borderColor,
    this.borderWidth,
    this.distance,
    this.shape,
    this.style,
  });

  /// (Highcharts, Highstock) Background color for the tooltip header when tooltip.split is enabled.
  final dynamic backgroundColor;

  /// (Highcharts, Highstock) Border color for the tooltip header when tooltip.split is enabled.
  final dynamic borderColor;

  /// (Highcharts, Highstock) The width of the border for the tooltip header when tooltip.split is enabled.
  final num? borderWidth;

  /// (Highcharts, Highstock) Distance between the plot area and the header (except the chevron) in a split tooltip, in pixels. The default value makes the header text align with the axis labels.
  final num? distance;

  /// (Highcharts, Highstock) The name of a symbol to use for the border around the tooltip header. Applies only when tooltip.split is enabled.
  final String? shape;

  /// (Highcharts, Highstock) CSS styles for the tooltip header. The default is `{ fontSize: '1em' }`, ensuring that the header text is the same size as the axis labels.
  final dynamic style;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (backgroundColor != null) {
      json['backgroundColor'] = hcJsonValue(backgroundColor);
    }
    if (borderColor != null) {
      json['borderColor'] = hcJsonValue(borderColor);
    }
    if (borderWidth != null) {
      json['borderWidth'] = borderWidth;
    }
    if (distance != null) {
      json['distance'] = distance;
    }
    if (shape != null) {
      json['shape'] = shape;
    }
    if (style != null) {
      json['style'] = hcJsonValue(style);
    }
    return json;
  }
}

/// (Highcharts, Highstock) Positioning options for fixed tooltip, taking effect only when tooltip.fixed is `true`.
class HCPlotStreamgraphTooltipPositionOptions implements HCOption {
  const HCPlotStreamgraphTooltipPositionOptions({
    this.align,
    this.relativeTo,
    this.verticalAlign,
    this.x,
    this.y,
  });

  /// (Highcharts, Highstock) The horizontal alignment of the fixed tooltip.
  final String? align;

  /// (Highcharts, Highstock) What the fixed tooltip alignment should be relative to.
  final String? relativeTo;

  /// (Highcharts, Highstock) The vertical alignment of the fixed tooltip.
  final String? verticalAlign;

  /// (Highcharts, Highstock) X pixel offset from the given position. Can be used to shy away from axis lines, grid lines etc to avoid the tooltip overlapping other elements.
  final num? x;

  /// (Highcharts, Highstock) Y pixel offset from the given position. Can be used to shy away from axis lines, grid lines etc to avoid the tooltip overlapping other elements.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (align != null) {
      json['align'] = align;
    }
    if (relativeTo != null) {
      json['relativeTo'] = relativeTo;
    }
    if (verticalAlign != null) {
      json['verticalAlign'] = verticalAlign;
    }
    if (x != null) {
      json['x'] = x;
    }
    if (y != null) {
      json['y'] = y;
    }
    return json;
  }
}

/// (Highcharts) Point accessibility options for a series.
class HCPlotSunburstAccessibilityPointOptions implements HCOption {
  const HCPlotSunburstAccessibilityPointOptions({
    this.dateFormat,
    this.describeNull,
    this.descriptionFormat,
    this.valueDecimals,
    this.valueDescriptionFormat,
    this.valuePrefix,
    this.valueSuffix,
  });

  /// (Highcharts) Date format to use for points on datetime axes when describing them to screen reader users.
  final String? dateFormat;

  /// (Highcharts) Whether or not to describe points with the value `null` to assistive technology, such as screen readers.
  final bool? describeNull;

  /// (Highcharts) A format string to use instead of the default for point descriptions.
  final String? descriptionFormat;

  /// (Highcharts) Decimals to use for the values in the point descriptions. Uses tooltip.valueDecimals if not defined.
  final num? valueDecimals;

  /// (Highcharts) Format to use for describing the values of data points to assistive technology - including screen readers. The point context is available as `{point}`.
  final String? valueDescriptionFormat;

  /// (Highcharts) Prefix to add to the values in the point descriptions. Uses tooltip.valuePrefix if not defined.
  final String? valuePrefix;

  /// (Highcharts) Suffix to add to the values in the point descriptions. Uses tooltip.valueSuffix if not defined.
  final String? valueSuffix;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (dateFormat != null) {
      json['dateFormat'] = dateFormat;
    }
    if (describeNull != null) {
      json['describeNull'] = describeNull;
    }
    if (descriptionFormat != null) {
      json['descriptionFormat'] = descriptionFormat;
    }
    if (valueDecimals != null) {
      json['valueDecimals'] = valueDecimals;
    }
    if (valueDescriptionFormat != null) {
      json['valueDescriptionFormat'] = valueDescriptionFormat;
    }
    if (valuePrefix != null) {
      json['valuePrefix'] = valuePrefix;
    }
    if (valueSuffix != null) {
      json['valueSuffix'] = valueSuffix;
    }
    return json;
  }
}

/// (Highcharts) A collection of attributes for the buttons. The object takes SVG attributes like `fill`, `stroke`, `stroke-width`, as well as `style`, a collection of CSS properties for the text.
class HCPlotSunburstBreadcrumbsButtonThemeOptions implements HCOption {
  const HCPlotSunburstBreadcrumbsButtonThemeOptions({
    this.style,
  });

  final HCPlotSunburstBreadcrumbsButtonThemeStyleOptions? style;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (style != null) {
      json['style'] = style!.toJson();
    }
    return json;
  }
}

class HCPlotSunburstBreadcrumbsButtonThemeStyleOptions implements HCOption {
  const HCPlotSunburstBreadcrumbsButtonThemeStyleOptions({
    this.color,
  });

  final String? color;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (color != null) {
      json['color'] = color;
    }
    return json;
  }
}

class HCPlotSunburstBreadcrumbsEventsOptions implements HCOption {
  const HCPlotSunburstBreadcrumbsEventsOptions();

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    return json;
  }
}

/// (Highcharts) Options for the breadcrumbs, the navigation at the top leading the way up through the traversed levels.
class HCPlotSunburstBreadcrumbsOptions implements HCOption {
  const HCPlotSunburstBreadcrumbsOptions({
    this.buttonSpacing,
    this.buttonTheme,
    this.events,
    this.floating,
    this.format,
    this.position,
    this.relativeTo,
    this.rtl,
    this.separator,
    this.showFullPath,
    this.style,
    this.useHTML,
    this.zIndex,
  });

  /// (Highcharts) The default padding for each button and separator in each direction.
  final num? buttonSpacing;

  /// (Highcharts) A collection of attributes for the buttons. The object takes SVG attributes like `fill`, `stroke`, `stroke-width`, as well as `style`, a collection of CSS properties for the text.
  final dynamic buttonTheme;

  final HCPlotSunburstBreadcrumbsEventsOptions? events;

  /// (Highcharts) When the breadcrumbs are floating, the plot area will not move to make space for it. By default, the chart will not make space for the buttons. This property won't work when positioned in the middle.
  final bool? floating;

  /// (Highcharts) A format string for the breadcrumbs button. Variables are enclosed by curly brackets. Available values are passed in the declared point options.
  final String? format;

  /// (Highcharts, Highmaps) Positioning for the button row. The breadcrumbs buttons will be aligned properly for the default chart layout (title, subtitle, legend, range selector) for the custom chart layout set the position properties.
  final dynamic position;

  /// (Highcharts, Highmaps) What box to align the button to. Can be either `plotBox` or `spacingBox`.
  final String? relativeTo;

  /// (Highcharts) Whether to reverse the order of buttons. This is common in Arabic and Hebrew.
  final bool? rtl;

  /// (Highcharts) Options object for Breadcrumbs separator.
  final HCPlotSunburstBreadcrumbsSeparatorOptions? separator;

  /// (Highcharts) Show full path or only a single button.
  final bool? showFullPath;

  /// (Highcharts) CSS styles for all breadcrumbs.
  final HCSVGAttributes? style;

  /// (Highcharts) Whether to use HTML to render the breadcrumbs items texts.
  final bool? useHTML;

  /// (Highcharts) The z index of the breadcrumbs group.
  final num? zIndex;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (buttonSpacing != null) {
      json['buttonSpacing'] = buttonSpacing;
    }
    if (buttonTheme != null) {
      json['buttonTheme'] = hcJsonValue(buttonTheme);
    }
    if (events != null) {
      json['events'] = events!.toJson();
    }
    if (floating != null) {
      json['floating'] = floating;
    }
    if (format != null) {
      json['format'] = format;
    }
    if (position != null) {
      json['position'] = hcJsonValue(position);
    }
    if (relativeTo != null) {
      json['relativeTo'] = relativeTo;
    }
    if (rtl != null) {
      json['rtl'] = rtl;
    }
    if (separator != null) {
      json['separator'] = separator!.toJson();
    }
    if (showFullPath != null) {
      json['showFullPath'] = showFullPath;
    }
    if (style != null) {
      json['style'] = style!.toJson();
    }
    if (useHTML != null) {
      json['useHTML'] = useHTML;
    }
    if (zIndex != null) {
      json['zIndex'] = zIndex;
    }
    return json;
  }
}

/// (Highcharts, Highmaps) Positioning for the button row. The breadcrumbs buttons will be aligned properly for the default chart layout (title, subtitle, legend, range selector) for the custom chart layout set the position properties.
class HCPlotSunburstBreadcrumbsPositionOptions implements HCOption {
  const HCPlotSunburstBreadcrumbsPositionOptions({
    this.align,
    this.verticalAlign,
    this.x,
    this.y,
  });

  /// (Highcharts, Highmaps) Horizontal alignment of the breadcrumbs buttons.
  final String? align;

  /// (Highcharts, Highmaps) Vertical alignment of the breadcrumbs buttons.
  final String? verticalAlign;

  /// (Highcharts, Highmaps) The X offset of the breadcrumbs button group.
  final num? x;

  /// (Highcharts, Highmaps) The Y offset of the breadcrumbs button group. When `undefined`, and `floating` is `false`, the `y` position is adapted so that the breadcrumbs are rendered outside the target area.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (align != null) {
      json['align'] = align;
    }
    if (verticalAlign != null) {
      json['verticalAlign'] = verticalAlign;
    }
    if (x != null) {
      json['x'] = x;
    }
    if (y != null) {
      json['y'] = y;
    }
    return json;
  }
}

/// (Highcharts) Options object for Breadcrumbs separator.
class HCPlotSunburstBreadcrumbsSeparatorOptions implements HCOption {
  const HCPlotSunburstBreadcrumbsSeparatorOptions({
    this.style,
    this.text,
  });

  /// (Highcharts) CSS styles for the breadcrumbs separator.
  final dynamic style;

  final String? text;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (style != null) {
      json['style'] = hcJsonValue(style);
    }
    if (text != null) {
      json['text'] = text;
    }
    return json;
  }
}

/// (Highcharts) CSS styles for the breadcrumbs separator.
class HCPlotSunburstBreadcrumbsSeparatorStyleOptions implements HCOption {
  const HCPlotSunburstBreadcrumbsSeparatorStyleOptions({
    this.color,
    this.fontSize,
  });

  final String? color;

  final num? fontSize;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (color != null) {
      json['color'] = color;
    }
    if (fontSize != null) {
      json['fontSize'] = fontSize;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Enable or disable the initial animation when a series is displayed for the `dataLabels`. The animation can also be set as a configuration object. Please note that this option only applies to the initial animation.
class HCPlotSunburstDataLabelsAnimationOptions implements HCOption {
  const HCPlotSunburstDataLabelsAnimationOptions({
    this.defer,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) The animation delay time in milliseconds. Set to `0` to render the data labels immediately. As `undefined` inherits defer time from the series.animation.defer.
  final num? defer;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (defer != null) {
      json['defer'] = defer;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Styles for the label. The default `color` setting is `"contrast"`, which is a pseudo color that Highcharts picks up and applies the maximum contrast to the underlying point item, for example the bar in a bar chart.
class HCPlotSunburstDataLabelsStyleOptions implements HCOption {
  const HCPlotSunburstDataLabelsStyleOptions({
    this.textOverflow,
  });

  final String? textOverflow;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (textOverflow != null) {
      json['textOverflow'] = textOverflow;
    }
    return json;
  }
}

/// (Highcharts) Determines the width of the ring per level.
class HCPlotSunburstLevelSizeOptions implements HCOption {
  const HCPlotSunburstLevelSizeOptions({
    this.unit,
    this.value,
  });

  /// (Highcharts) How to interpret `levelSize.value`.
  final String? unit;

  /// (Highcharts) The value used for calculating the width of the ring. Its' affect is determined by `levelSize.unit`.
  final num? value;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (unit != null) {
      json['unit'] = unit;
    }
    if (value != null) {
      json['value'] = value;
    }
    return json;
  }
}

/// (Highcharts) Can set a `colorVariation` on all points which lies on the same level.
class HCPlotSunburstLevelsColorVariationOptions implements HCOption {
  const HCPlotSunburstLevelsColorVariationOptions({
    this.key,
    this.to,
  });

  /// (Highcharts) The key of a color variation. Currently supports `brightness` only.
  final String? key;

  /// (Highcharts) The ending value of a color variation. The last sibling will receive this value.
  final num? to;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (key != null) {
      json['key'] = key;
    }
    if (to != null) {
      json['to'] = to;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Enable or disable the initial animation when a series is displayed for the `dataLabels`. The animation can also be set as a configuration object. Please note that this option only applies to the initial animation.
class HCPlotSunburstLevelsDataLabelsAnimationOptions implements HCOption {
  const HCPlotSunburstLevelsDataLabelsAnimationOptions({
    this.defer,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) The animation delay time in milliseconds. Set to `0` to render the data labels immediately. As `undefined` inherits defer time from the series.animation.defer.
  final num? defer;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (defer != null) {
      json['defer'] = defer;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Styles for the label. The default `color` setting is `"contrast"`, which is a pseudo color that Highcharts picks up and applies the maximum contrast to the underlying point item, for example the bar in a bar chart.
class HCPlotSunburstLevelsDataLabelsStyleOptions implements HCOption {
  const HCPlotSunburstLevelsDataLabelsStyleOptions({
    this.textOverflow,
  });

  final String? textOverflow;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (textOverflow != null) {
      json['textOverflow'] = textOverflow;
    }
    return json;
  }
}

/// (Highcharts) Set options on specific levels. Takes precedence over series options, but not point options.
class HCPlotSunburstLevelsOptions implements HCOption {
  const HCPlotSunburstLevelsOptions({
    this.borderColor,
    this.borderDashStyle,
    this.borderWidth,
    this.color,
    this.colorByPoint,
    this.colorVariation,
    this.dataLabels,
    this.level,
    this.levelSize,
  });

  /// (Highcharts) Can set a `borderColor` on all points which lies on the same level.
  final String? borderColor;

  /// (Highcharts) Can set a `borderDashStyle` on all points which lies on the same level.
  final String? borderDashStyle;

  /// (Highcharts) Can set a `borderWidth` on all points which lies on the same level.
  final num? borderWidth;

  /// (Highcharts) Can set a `color` on all points which lies on the same level.
  final dynamic color;

  /// (Highcharts) Determines whether the chart should receive one color per point based on this level.
  final bool? colorByPoint;

  /// (Highcharts) Can set a `colorVariation` on all points which lies on the same level.
  final HCPlotSunburstLevelsColorVariationOptions? colorVariation;

  /// (Highcharts, Highstock, Highmaps, Gantt) Can set `dataLabels` on all points which lies on the same level.
  final dynamic dataLabels;

  /// (Highcharts) Decides which level takes effect from the options set in the levels object.
  final num? level;

  /// (Highcharts) Can set a `levelSize` on all points which lies on the same level.
  final dynamic levelSize;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (borderColor != null) {
      json['borderColor'] = borderColor;
    }
    if (borderDashStyle != null) {
      json['borderDashStyle'] = borderDashStyle;
    }
    if (borderWidth != null) {
      json['borderWidth'] = borderWidth;
    }
    if (color != null) {
      json['color'] = hcJsonValue(color);
    }
    if (colorByPoint != null) {
      json['colorByPoint'] = colorByPoint;
    }
    if (colorVariation != null) {
      json['colorVariation'] = colorVariation!.toJson();
    }
    if (dataLabels != null) {
      json['dataLabels'] = hcJsonValue(dataLabels);
    }
    if (level != null) {
      json['level'] = level;
    }
    if (levelSize != null) {
      json['levelSize'] = hcJsonValue(levelSize);
    }
    return json;
  }
}

/// (Highcharts) Options for the connector in the _Series on point_ feature.
class HCPlotSunburstOnPointConnectorOptions implements HCOption {
  const HCPlotSunburstOnPointConnectorOptions({
    this.dashstyle,
    this.stroke,
    this.width,
  });

  /// (Highcharts) A name for the dash style to use for the connector.
  final String? dashstyle;

  /// (Highcharts) Color of the connector line. By default it's the series' color.
  final String? stroke;

  /// (Highcharts) Pixel width of the connector line.
  final num? width;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (dashstyle != null) {
      json['dashstyle'] = dashstyle;
    }
    if (stroke != null) {
      json['stroke'] = stroke;
    }
    if (width != null) {
      json['width'] = width;
    }
    return json;
  }
}

/// (Highcharts) Options for the _Series on point_ feature. Only `pie` and `sunburst` series are supported at this moment.
class HCPlotSunburstOnPointOptions implements HCOption {
  const HCPlotSunburstOnPointOptions({
    this.connectorOptions,
    this.id,
    this.position,
  });

  /// (Highcharts) Options for the connector in the _Series on point_ feature.
  final dynamic connectorOptions;

  /// (Highcharts) The `id` of the point that we connect the series to. Only points with a given `plotX` and `plotY` values and map points are valid.
  final String? id;

  /// (Highcharts) Options allowing to set a position and an offset of the series in the _Series on point_ feature.
  final dynamic position;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (connectorOptions != null) {
      json['connectorOptions'] = hcJsonValue(connectorOptions);
    }
    if (id != null) {
      json['id'] = id;
    }
    if (position != null) {
      json['position'] = hcJsonValue(position);
    }
    return json;
  }
}

/// (Highcharts) Options allowing to set a position and an offset of the series in the _Series on point_ feature.
class HCPlotSunburstOnPointPositionOptions implements HCOption {
  const HCPlotSunburstOnPointPositionOptions({
    this.offsetX,
    this.offsetY,
    this.x,
    this.y,
  });

  /// (Highcharts) Series center offset from the original x position. If defined, the connector line is drawn connecting original position with new position.
  final num? offsetX;

  /// (Highcharts) Series center offset from the original y position. If defined, the connector line is drawn from original position to a new position.
  final num? offsetY;

  /// (Highcharts) X position of the series center. By default, the series is displayed on the point that it is connected to.
  final num? x;

  /// (Highcharts) Y position of the series center. By default, the series is displayed on the point that it is connected to.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (offsetX != null) {
      json['offsetX'] = offsetX;
    }
    if (offsetY != null) {
      json['offsetY'] = offsetY;
    }
    if (x != null) {
      json['x'] = x;
    }
    if (y != null) {
      json['y'] = y;
    }
    return json;
  }
}

/// (Highcharts) A Sunburst displays hierarchical data, where a level in the hierarchy is represented by a circle. The center represents the root node of the tree. The visualization bears a resemblance to both treemap and pie charts.
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

  /// (Highcharts) When enabled the user can click on a point which is a parent and zoom in on its children. Deprecated and replaced by allowTraversingTree.
  final bool? allowDrillToNode;

  /// (Highcharts) Allow this series' points to be selected by clicking on the graphic (columns, point markers, pie slices, map areas etc).
  final bool? allowPointSelect;

  /// (Highcharts) When enabled the user can click on a point which is a parent and zoom in on its children.
  final bool? allowTraversingTree;

  /// (Highcharts) Enable or disable the initial animation when a series is displayed. The animation can also be set as a configuration object. Please note that this option only applies to the initial animation of the series itself. For other animations, see chart.animation and the animation parameter und
  final dynamic animation;

  /// (Highcharts, Highmaps) The color of the border surrounding each slice. When `null`, the border takes the same color as the slice fill. This can be used together with a `borderWidth` to fill drawing gaps created by antialiasing artifacts in border-less pies.
  final dynamic borderColor;

  /// (Highcharts) The corner radius of the border surrounding each slice. A number signifies pixels. A percentage string, like for example `50%`, signifies a size relative to the radius and the inner radius.
  final dynamic borderRadius;

  /// (Highcharts, Highmaps) The width of the border surrounding each slice.
  final num? borderWidth;

  /// (Highcharts) Options for the breadcrumbs, the navigation at the top leading the way up through the traversed levels.
  final HCPlotSunburstBreadcrumbsOptions? breadcrumbs;

  /// (Highcharts) The center of the sunburst chart relative to the plot area. Can be percentages or pixel values.
  final List<dynamic>? center;

  /// (Highcharts) An additional class name to apply to the series' graphical elements. This option does not replace default class names of the graphical element. Changes to the series' color will also be reflected in a chart's legend and tooltip.
  final String? className;

  final bool? clip;

  /// (Highcharts) The color of the pie series. A pie series is represented as an empty circle if the total sum of its values is 0. Use this property to define the color of its border.
  final dynamic color;

  final bool? colorByPoint;

  /// (Highcharts) Styled mode only. A specific color index to use for the series, so its graphic representations are given the class name `highcharts-color-{n}`.
  final num? colorIndex;

  /// (Highcharts, Highmaps) A series specific or series type specific color set to use instead of the global colors.
  final List<dynamic>? colors;

  /// (Highcharts, Highstock, Gantt) When true, each point or column edge is rounded to its nearest pixel in order to render sharp on screen. In some cases, when there are a lot of densely packed columns, this leads to visible difference in column widths or distance between columns. In these cases, settin
  final bool? crisp;

  /// (Highcharts) You can set the cursor to "pointer" if you have click events attached to the series, to signal to the user that the points and lines can be clicked.
  final String? cursor;

  /// (Highcharts) A reserved subspace to store options and values for customized functionality. Here you can add additional data for your own event callbacks and formatter callbacks.
  final HCDictionary? custom;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for the series data labels, appearing next to each data point.
  final dynamic dataLabels;

  /// (Highcharts) The mapping between the data table and the series data points. This is used in conjunction with the `dataTable` option (on chart or series level) to map columns from the data table to the properties of the data points. The keys of the `dataMapping` object correspond to the properties of
  final HCDataMappingOptionsObject? dataMapping;

  /// (Highcharts) Deprecated. Use plotOptions.series.accessibility.description instead.
  final String? description;

  /// (Highcharts) Enable or disable the mouse tracking for a specific series. This includes point tooltips and click events on graphs and points. For large datasets it improves performance.
  final bool? enableMouseTracking;

  /// (Highcharts) General event handlers for the series items. These event hooks can also be attached to the series at run time using the `Highcharts.addEvent` function.
  final HCSeriesEventsOptionsObject? events;

  /// (Highcharts) If the total sum of the pie's values is 0, the series is represented as an empty circle . The `fillColor` option defines the color of that circle. Use pie.borderWidth to set the border thickness.
  final dynamic fillColor;

  /// (Highcharts) Highlight only the hovered point and fade the remaining points.
  final bool? inactiveOtherPoints;

  /// (Highcharts) When set to `false` will prevent the series data from being included in any form of data export.
  final bool? includeInDataExport;

  /// (Highcharts) An array specifying which option maps to which key in the data point array. This makes it convenient to work with unstructured data arrays from different sources.
  final List<String>? keys;

  /// (Highcharts) What type of legend symbol to render for this series. Can be one of `areaMarker`, `lineMarker` or `rectangle`.
  final String? legendSymbol;

  /// (Highcharts, Highstock, Highmaps) Defines the color of the legend symbol for this series. Defaults to undefined, in which case the series color is used. Does not work with styled mode.
  final dynamic legendSymbolColor;

  /// (Highcharts) Used together with the levels and `allowDrillToNode` options. When set to false the first level visible when drilling is considered to be level one. Otherwise the level will be the same as the tree structure.
  final bool? levelIsConstant;

  /// (Highcharts) Set options on specific levels. Takes precedence over series options, but not point options.
  final List<HCPlotSunburstLevelsOptions>? levels;

  /// (Highcharts) Determines the width of the ring per level.
  final HCPlotSunburstLevelSizeOptions? levelSize;

  /// (Highcharts, Highstock) Whether or not data-points with the value of `null` should be interactive. When this is set to `true`, tooltips may highlight these points, and this option also enables keyboard navigation for such points. Format options for such points include `nullFormat` and `nullFormatter
  final bool? nullInteraction;

  /// (Highcharts) Options for the _Series on point_ feature. Only `pie` and `sunburst` series are supported at this moment.
  final dynamic onPoint;

  /// (Highcharts) Opacity of a series parts: line, fill (e.g. area) and dataLabels.
  final num? opacity;

  /// (Highcharts) Properties for each single point.
  final HCPlotSeriesPointOptions? point;

  /// (Highcharts) Deprecated. Use series.accessibility.point.descriptionFormat instead.
  final dynamic pointDescriptionFormat;

  /// (Highcharts) Deprecated. Use series.accessibility.point.descriptionFormatter instead.
  final dynamic pointDescriptionFormatter;

  /// (Highcharts, Highstock) When true, X values in the data set are relative to the current `pointStart`, `pointInterval` and `pointIntervalUnit` settings. This allows compression of the data for datasets with irregular X values.
  final bool? relativeXValue;

  /// (Highcharts) Which point to use as a root in the visualization.
  final String? rootId;

  /// (Highcharts) Whether to select the series initially. If `showCheckbox` is true, the checkbox next to the series name in the legend will be checked for a selected series.
  final bool? selected;

  /// (Highcharts) Whether to apply a drop shadow to the graph line. Since 2.3 the shadow can be an object configuration containing `color`, `offsetX`, `offsetY`, `opacity` and `width`.
  final dynamic shadow;

  /// (Highcharts) If true, a checkbox is displayed next to the legend item to allow selecting the series. The state of the checkbox is determined by the `selected` option.
  final bool? showCheckbox;

  /// (Highcharts, Highmaps) Whether to display this particular series or series type in the legend. Since 2.1, pies are not shown in the legend by default.
  final bool? showInLegend;

  /// (Highcharts, Highmaps) The diameter of the pie relative to the plot area. Can be a percentage or pixel value. Pixel values are given as integers. The default behavior (as of 3.0) is to scale to the plot area and give room for data labels within the plot area. slicedOffset is also included in the def
  final dynamic size;

  /// (Highcharts) Deprecated. Use series.accessibility.keyboardNavigation instead.
  final bool? skipKeyboardNavigation;

  /// (Highcharts, Highmaps) If a point is sliced, moved out from the center, how many pixels should it be moved?.
  final num? slicedOffset;

  /// (Highcharts) Sonification/audio chart options for a series.
  final HCSeriesSonificationOptions? sonification;

  /// (Highcharts, Highmaps) The start angle of the pie slices in degrees where 0 is top and 90 right.
  final num? startAngle;

  /// (Highcharts) A collection of options for different series states.
  final HCSeriesStatesOptionsObject? states;

  /// (Highcharts, Highmaps) Sticky tracking of mouse events. When true, the `mouseOut` event on a series isn't triggered until the mouse moves over another series, or out of the plot area. When false, the `mouseOut` event on a series is triggered when the mouse leaves the area around the series' graph or
  final bool? stickyTracking;

  /// (Highcharts) Thickness describing the ring size for a donut type chart, overriding innerSize.
  final num? thickness;

  /// (Highcharts) A configuration object for the tooltip rendering of each single series. Properties are inherited from tooltip, but only the following properties can be defined on a series level.
  final HCSeriesTooltipOptionsObject? tooltip;

  /// (Highcharts) Options for the button appearing when traversing down in a sunburst. Since v9.3.3 the `traverseUpButton` is replaced by `breadcrumbs`.
  final HCPlotSunburstTraverseUpButtonOptions? traverseUpButton;

  /// (Highcharts) Set the initial visibility of the series.
  final bool? visible;

  /// (Highcharts) Whether to zoom non-cartesian series. If `chart.zooming` is set, the option allows to disable zooming on an individual non-cartesian series. By default zooming is enabled for all series.
  final bool? zoomEnabled;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (accessibility != null) {
      json['accessibility'] = accessibility!.toJson();
    }
    if (allowDrillToNode != null) {
      json['allowDrillToNode'] = allowDrillToNode;
    }
    if (allowPointSelect != null) {
      json['allowPointSelect'] = allowPointSelect;
    }
    if (allowTraversingTree != null) {
      json['allowTraversingTree'] = allowTraversingTree;
    }
    if (animation != null) {
      json['animation'] = hcJsonValue(animation);
    }
    if (borderColor != null) {
      json['borderColor'] = hcJsonValue(borderColor);
    }
    if (borderRadius != null) {
      json['borderRadius'] = hcJsonValue(borderRadius);
    }
    if (borderWidth != null) {
      json['borderWidth'] = borderWidth;
    }
    if (breadcrumbs != null) {
      json['breadcrumbs'] = breadcrumbs!.toJson();
    }
    if (center != null) {
      json['center'] = center!.map((e) => hcJsonValue(e)).toList();
    }
    if (className != null) {
      json['className'] = className;
    }
    if (clip != null) {
      json['clip'] = clip;
    }
    if (color != null) {
      json['color'] = hcJsonValue(color);
    }
    if (colorByPoint != null) {
      json['colorByPoint'] = colorByPoint;
    }
    if (colorIndex != null) {
      json['colorIndex'] = colorIndex;
    }
    if (colors != null) {
      json['colors'] = colors!.map((e) => hcJsonValue(e)).toList();
    }
    if (crisp != null) {
      json['crisp'] = crisp;
    }
    if (cursor != null) {
      json['cursor'] = cursor;
    }
    if (custom != null) {
      json['custom'] = custom!.toJson();
    }
    if (dataLabels != null) {
      json['dataLabels'] = hcJsonValue(dataLabels);
    }
    if (dataMapping != null) {
      json['dataMapping'] = dataMapping!.toJson();
    }
    if (description != null) {
      json['description'] = description;
    }
    if (enableMouseTracking != null) {
      json['enableMouseTracking'] = enableMouseTracking;
    }
    if (events != null) {
      json['events'] = events!.toJson();
    }
    if (fillColor != null) {
      json['fillColor'] = hcJsonValue(fillColor);
    }
    if (inactiveOtherPoints != null) {
      json['inactiveOtherPoints'] = inactiveOtherPoints;
    }
    if (includeInDataExport != null) {
      json['includeInDataExport'] = includeInDataExport;
    }
    if (keys != null) {
      json['keys'] = keys;
    }
    if (legendSymbol != null) {
      json['legendSymbol'] = legendSymbol;
    }
    if (legendSymbolColor != null) {
      json['legendSymbolColor'] = hcJsonValue(legendSymbolColor);
    }
    if (levelIsConstant != null) {
      json['levelIsConstant'] = levelIsConstant;
    }
    if (levels != null) {
      json['levels'] = levels!.map((e) => e.toJson()).toList();
    }
    if (levelSize != null) {
      json['levelSize'] = levelSize!.toJson();
    }
    if (nullInteraction != null) {
      json['nullInteraction'] = nullInteraction;
    }
    if (onPoint != null) {
      json['onPoint'] = hcJsonValue(onPoint);
    }
    if (opacity != null) {
      json['opacity'] = opacity;
    }
    if (point != null) {
      json['point'] = point!.toJson();
    }
    if (pointDescriptionFormat != null) {
      json['pointDescriptionFormat'] = hcJsonValue(pointDescriptionFormat);
    }
    if (pointDescriptionFormatter != null) {
      json['pointDescriptionFormatter'] =
          hcJsonValue(pointDescriptionFormatter);
    }
    if (relativeXValue != null) {
      json['relativeXValue'] = relativeXValue;
    }
    if (rootId != null) {
      json['rootId'] = rootId;
    }
    if (selected != null) {
      json['selected'] = selected;
    }
    if (shadow != null) {
      json['shadow'] = hcJsonValue(shadow);
    }
    if (showCheckbox != null) {
      json['showCheckbox'] = showCheckbox;
    }
    if (showInLegend != null) {
      json['showInLegend'] = showInLegend;
    }
    if (size != null) {
      json['size'] = hcJsonValue(size);
    }
    if (skipKeyboardNavigation != null) {
      json['skipKeyboardNavigation'] = skipKeyboardNavigation;
    }
    if (slicedOffset != null) {
      json['slicedOffset'] = slicedOffset;
    }
    if (sonification != null) {
      json['sonification'] = sonification!.toJson();
    }
    if (startAngle != null) {
      json['startAngle'] = startAngle;
    }
    if (states != null) {
      json['states'] = states!.toJson();
    }
    if (stickyTracking != null) {
      json['stickyTracking'] = stickyTracking;
    }
    if (thickness != null) {
      json['thickness'] = thickness;
    }
    if (tooltip != null) {
      json['tooltip'] = tooltip!.toJson();
    }
    if (traverseUpButton != null) {
      json['traverseUpButton'] = traverseUpButton!.toJson();
    }
    if (visible != null) {
      json['visible'] = visible;
    }
    if (zoomEnabled != null) {
      json['zoomEnabled'] = zoomEnabled;
    }
    return json;
  }
}

/// (Highcharts, Highstock) Animation setting for hovering the graph in line-type series.
class HCPlotSunburstStatesHoverAnimationOptions implements HCOption {
  const HCPlotSunburstStatesHoverAnimationOptions({
    this.duration,
  });

  /// (Highcharts, Highstock) The duration of the hover animation in milliseconds. By default the hover state animates quickly in, and slowly back to normal.
  final num? duration;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (duration != null) {
      json['duration'] = duration;
    }
    return json;
  }
}

/// (Highcharts) Animation when not hovering over the marker.
class HCPlotSunburstStatesInactiveAnimationOptions implements HCOption {
  const HCPlotSunburstStatesInactiveAnimationOptions({
    this.duration,
  });

  final num? duration;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (duration != null) {
      json['duration'] = duration;
    }
    return json;
  }
}

/// (Highcharts, Highstock) Animation setting for hovering the graph in line-type series.
class HCPlotSunburstStatesSelectAnimationOptions implements HCOption {
  const HCPlotSunburstStatesSelectAnimationOptions({
    this.duration,
  });

  /// (Highcharts, Highstock) The duration of the hover animation in milliseconds. By default the hover state animates quickly in, and slowly back to normal.
  final num? duration;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (duration != null) {
      json['duration'] = duration;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Gantt) For series on datetime axes, the date format in the tooltip's header will by default be guessed based on the closest data points. This member gives the default string representations used for each unit. For an overview of the string or object configuration, see dateFor
class HCPlotSunburstTooltipDateTimeLabelFormatsOptions implements HCOption {
  const HCPlotSunburstTooltipDateTimeLabelFormatsOptions({
    this.day,
    this.hour,
    this.millisecond,
    this.minute,
    this.month,
    this.second,
    this.week,
    this.year,
  });

  final String? day;

  final String? hour;

  final String? millisecond;

  final String? minute;

  final String? month;

  final String? second;

  final String? week;

  final String? year;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (day != null) {
      json['day'] = day;
    }
    if (hour != null) {
      json['hour'] = hour;
    }
    if (millisecond != null) {
      json['millisecond'] = millisecond;
    }
    if (minute != null) {
      json['minute'] = minute;
    }
    if (month != null) {
      json['month'] = month;
    }
    if (second != null) {
      json['second'] = second;
    }
    if (week != null) {
      json['week'] = week;
    }
    if (year != null) {
      json['year'] = year;
    }
    return json;
  }
}
