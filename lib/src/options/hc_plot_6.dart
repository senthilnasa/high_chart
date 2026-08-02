part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Options for the series data labels, appearing next to each data point.
class HCPlotDisparityindexDataLabelsOptions implements HCOption {
  const HCPlotDisparityindexDataLabelsOptions({
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
class HCPlotDisparityindexDataSortingOptions implements HCOption {
  const HCPlotDisparityindexDataSortingOptions({
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
class HCPlotDisparityindexLabelStyleOptions implements HCOption {
  const HCPlotDisparityindexLabelStyleOptions({
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
class HCPlotDisparityindexMarkerStatesHoverAnimationOptions
    implements HCOption {
  const HCPlotDisparityindexMarkerStatesHoverAnimationOptions({
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
class HCPlotDisparityindexOnPointConnectorOptions implements HCOption {
  const HCPlotDisparityindexOnPointConnectorOptions({
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
class HCPlotDisparityindexOnPointOptions implements HCOption {
  const HCPlotDisparityindexOnPointOptions({
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
class HCPlotDisparityindexOnPointPositionOptions implements HCOption {
  const HCPlotDisparityindexOnPointPositionOptions({
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

/// (Highstock) Disparity Index. This series requires the `linkedTo` option to be set and should be loaded after the `stock/indicators/indicators.js` file.
class HCPlotDisparityindexOptions implements HCOption {
  const HCPlotDisparityindexOptions({
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
  final HCPlotDisparityindexDataSortingOptions? dataSorting;

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
  final HCPlotDisparityindexParamsOptions? params;

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
class HCPlotDisparityindexParamsOptions implements HCOption {
  const HCPlotDisparityindexParamsOptions({
    this.average,
    this.index,
    this.period,
  });

  /// (Highstock) The average used to calculate the Disparity Index indicator. By default it uses SMA, with EMA as an option. To use other averages, e.g. TEMA, the `stock/indicators/tema.js` file needs to be loaded.
  final String? average;

  /// (Highstock) The point index which indicator calculations will base. For example using OHLC data, index=2 means the indicator will be calculated using Low values.
  final num? index;

  /// (Highstock) The base period for indicator calculations. This is the number of data points which are taken into account for the indicator calculations.
  final num? period;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (average != null) {
      json['average'] = average;
    }
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
class HCPlotDisparityindexStatesHoverAnimationOptions implements HCOption {
  const HCPlotDisparityindexStatesHoverAnimationOptions({
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
class HCPlotDisparityindexStatesInactiveAnimationOptions implements HCOption {
  const HCPlotDisparityindexStatesInactiveAnimationOptions({
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
class HCPlotDisparityindexStatesSelectAnimationOptions implements HCOption {
  const HCPlotDisparityindexStatesSelectAnimationOptions({
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
class HCPlotDisparityindexTooltipDateTimeLabelFormatsOptions
    implements HCOption {
  const HCPlotDisparityindexTooltipDateTimeLabelFormatsOptions({
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
class HCPlotDisparityindexTooltipHeaderOptions implements HCOption {
  const HCPlotDisparityindexTooltipHeaderOptions({
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
class HCPlotDisparityindexTooltipPositionOptions implements HCOption {
  const HCPlotDisparityindexTooltipPositionOptions({
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

/// (Highstock) Point accessibility options for a series.
class HCPlotDmiAccessibilityPointOptions implements HCOption {
  const HCPlotDmiAccessibilityPointOptions({
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
class HCPlotDmiDataLabelsAnimationOptions implements HCOption {
  const HCPlotDmiDataLabelsAnimationOptions({
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
class HCPlotDmiDataLabelsOptions implements HCOption {
  const HCPlotDmiDataLabelsOptions({
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
class HCPlotDmiDataSortingOptions implements HCOption {
  const HCPlotDmiDataSortingOptions({
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
class HCPlotDmiLabelStyleOptions implements HCOption {
  const HCPlotDmiLabelStyleOptions({
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
class HCPlotDmiMarkerStatesHoverAnimationOptions implements HCOption {
  const HCPlotDmiMarkerStatesHoverAnimationOptions({
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

/// (Highstock) -DI line options.
class HCPlotDmiMinusDILineOptions implements HCOption {
  const HCPlotDmiMinusDILineOptions({
    this.styles,
  });

  /// (Highstock) Styles for the -DI line.
  final HCPlotDmiMinusDILineStylesOptions? styles;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (styles != null) {
      json['styles'] = styles!.toJson();
    }
    return json;
  }
}

/// (Highstock) Styles for the -DI line.
class HCPlotDmiMinusDILineStylesOptions implements HCOption {
  const HCPlotDmiMinusDILineStylesOptions({
    this.lineColor,
    this.lineWidth,
  });

  /// (Highstock) Color of the line.
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

/// (Highstock) Options for the connector in the _Series on point_ feature.
class HCPlotDmiOnPointConnectorOptions implements HCOption {
  const HCPlotDmiOnPointConnectorOptions({
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
class HCPlotDmiOnPointOptions implements HCOption {
  const HCPlotDmiOnPointOptions({
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
class HCPlotDmiOnPointPositionOptions implements HCOption {
  const HCPlotDmiOnPointPositionOptions({
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

/// (Highstock) Directional Movement Index (DMI). This series requires the `linkedTo` option to be set and should be loaded after the `stock/indicators/indicators.js` file.
class HCPlotDmiOptions implements HCOption {
  const HCPlotDmiOptions({
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
    this.minusDILine,
    this.name,
    this.negativeColor,
    this.nullInteraction,
    this.onPoint,
    this.opacity,
    this.params,
    this.plusDILine,
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
  final HCPlotDmiDataSortingOptions? dataSorting;

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

  /// (Highstock) -DI line options.
  final HCPlotDmiMinusDILineOptions? minusDILine;

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
  final HCPlotDmiParamsOptions? params;

  /// (Highstock) +DI line options.
  final HCPlotDmiPlusDILineOptions? plusDILine;

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
    if (minusDILine != null) {
      json['minusDILine'] = minusDILine!.toJson();
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
    if (plusDILine != null) {
      json['plusDILine'] = plusDILine!.toJson();
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
class HCPlotDmiParamsOptions implements HCOption {
  const HCPlotDmiParamsOptions({
    this.index,
    this.period,
  });

  final String? index;

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

/// (Highstock) +DI line options.
class HCPlotDmiPlusDILineOptions implements HCOption {
  const HCPlotDmiPlusDILineOptions({
    this.styles,
  });

  /// (Highstock) Styles for the +DI line.
  final HCPlotDmiPlusDILineStylesOptions? styles;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (styles != null) {
      json['styles'] = styles!.toJson();
    }
    return json;
  }
}

/// (Highstock) Styles for the +DI line.
class HCPlotDmiPlusDILineStylesOptions implements HCOption {
  const HCPlotDmiPlusDILineStylesOptions({
    this.lineColor,
    this.lineWidth,
  });

  /// (Highstock) Color of the line.
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
class HCPlotDmiStatesHoverAnimationOptions implements HCOption {
  const HCPlotDmiStatesHoverAnimationOptions({
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
class HCPlotDmiStatesInactiveAnimationOptions implements HCOption {
  const HCPlotDmiStatesInactiveAnimationOptions({
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
class HCPlotDmiStatesSelectAnimationOptions implements HCOption {
  const HCPlotDmiStatesSelectAnimationOptions({
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
class HCPlotDmiTooltipDateTimeLabelFormatsOptions implements HCOption {
  const HCPlotDmiTooltipDateTimeLabelFormatsOptions({
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
class HCPlotDmiTooltipHeaderOptions implements HCOption {
  const HCPlotDmiTooltipHeaderOptions({
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
class HCPlotDmiTooltipPositionOptions implements HCOption {
  const HCPlotDmiTooltipPositionOptions({
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

/// (Highstock) Point accessibility options for a series.
class HCPlotDpoAccessibilityPointOptions implements HCOption {
  const HCPlotDpoAccessibilityPointOptions({
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
class HCPlotDpoDataLabelsAnimationOptions implements HCOption {
  const HCPlotDpoDataLabelsAnimationOptions({
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
class HCPlotDpoDataLabelsOptions implements HCOption {
  const HCPlotDpoDataLabelsOptions({
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
class HCPlotDpoDataSortingOptions implements HCOption {
  const HCPlotDpoDataSortingOptions({
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
class HCPlotDpoLabelStyleOptions implements HCOption {
  const HCPlotDpoLabelStyleOptions({
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
class HCPlotDpoMarkerStatesHoverAnimationOptions implements HCOption {
  const HCPlotDpoMarkerStatesHoverAnimationOptions({
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
class HCPlotDpoOnPointConnectorOptions implements HCOption {
  const HCPlotDpoOnPointConnectorOptions({
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
class HCPlotDpoOnPointOptions implements HCOption {
  const HCPlotDpoOnPointOptions({
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
class HCPlotDpoOnPointPositionOptions implements HCOption {
  const HCPlotDpoOnPointPositionOptions({
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

/// (Highstock) Detrended Price Oscillator. This series requires the `linkedTo` option to be set and should be loaded after the `stock/indicators/indicators.js`.
class HCPlotDpoOptions implements HCOption {
  const HCPlotDpoOptions({
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
  final HCPlotDpoDataSortingOptions? dataSorting;

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

  /// (Highstock) Parameters used in calculation of Detrended Price Oscillator series points.
  final HCPlotDpoParamsOptions? params;

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

/// (Highstock) Parameters used in calculation of Detrended Price Oscillator series points.
class HCPlotDpoParamsOptions implements HCOption {
  const HCPlotDpoParamsOptions({
    this.index,
    this.period,
  });

  /// (Highstock) The point index which indicator calculations will base. For example using OHLC data, index=2 means the indicator will be calculated using Low values.
  final num? index;

  /// (Highstock) Period for Detrended Price Oscillator
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
class HCPlotDpoStatesHoverAnimationOptions implements HCOption {
  const HCPlotDpoStatesHoverAnimationOptions({
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
class HCPlotDpoStatesInactiveAnimationOptions implements HCOption {
  const HCPlotDpoStatesInactiveAnimationOptions({
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
class HCPlotDpoStatesSelectAnimationOptions implements HCOption {
  const HCPlotDpoStatesSelectAnimationOptions({
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
class HCPlotDpoTooltipDateTimeLabelFormatsOptions implements HCOption {
  const HCPlotDpoTooltipDateTimeLabelFormatsOptions({
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
class HCPlotDpoTooltipHeaderOptions implements HCOption {
  const HCPlotDpoTooltipHeaderOptions({
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
class HCPlotDpoTooltipPositionOptions implements HCOption {
  const HCPlotDpoTooltipPositionOptions({
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
class HCPlotDumbbellAccessibilityPointOptions implements HCOption {
  const HCPlotDumbbellAccessibilityPointOptions({
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

/// (Highcharts, Highstock) Enable or disable the initial animation when a series is displayed for the `dataLabels`. The animation can also be set as a configuration object. Please note that this option only applies to the initial animation.
class HCPlotDumbbellDataLabelsAnimationOptions implements HCOption {
  const HCPlotDumbbellDataLabelsAnimationOptions({
    this.defer,
  });

  /// (Highcharts, Highstock) The animation delay time in milliseconds. Set to `0` to render the data labels immediately. As `undefined` inherits defer time from the series.animation.defer.
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

/// (Highcharts, Highstock) Options for series data sorting.
class HCPlotDumbbellDataSortingOptions implements HCOption {
  const HCPlotDumbbellDataSortingOptions({
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
class HCPlotDumbbellLabelStyleOptions implements HCOption {
  const HCPlotDumbbellLabelStyleOptions({
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
class HCPlotDumbbellLowMarkerStatesHoverAnimationOptions implements HCOption {
  const HCPlotDumbbellLowMarkerStatesHoverAnimationOptions({
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

/// (Highcharts, Highstock) Animation when hovering over the marker.
class HCPlotDumbbellMarkerStatesHoverAnimationOptions implements HCOption {
  const HCPlotDumbbellMarkerStatesHoverAnimationOptions({
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
class HCPlotDumbbellOnPointConnectorOptions implements HCOption {
  const HCPlotDumbbellOnPointConnectorOptions({
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
class HCPlotDumbbellOnPointOptions implements HCOption {
  const HCPlotDumbbellOnPointOptions({
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
class HCPlotDumbbellOnPointPositionOptions implements HCOption {
  const HCPlotDumbbellOnPointPositionOptions({
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

/// (Highcharts, Highstock) The dumbbell series is a cartesian series with higher and lower values for each point along an X axis, connected with a line between the values.
class HCPlotDumbbellOptions implements HCOption {
  const HCPlotDumbbellOptions({
    this.accessibility,
    this.allowPointSelect,
    this.animation,
    this.animationLimit,
    this.boostBlending,
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
    this.connectorColor,
    this.connectorWidth,
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
    this.findNearestPointBy,
    this.gapSize,
    this.gapUnit,
    this.getExtremesFromAll,
    this.groupPadding,
    this.inactiveOtherPoints,
    this.includeInDataExport,
    this.keys,
    this.label,
    this.lastPrice,
    this.lastVisiblePrice,
    this.legendSymbol,
    this.linecap,
    this.lineColor,
    this.linkedTo,
    this.lowColor,
    this.lowMarker,
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
    this.pointPadding,
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
    this.states,
    this.step,
    this.threshold,
    this.tooltip,
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

  /// (Highcharts, Highstock) Sets the color blending in the boost module.
  final String? boostBlending;

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

  /// (Highcharts, Highstock) Color of the line that connects the dumbbell point's values. By default it is the series' color.
  final String? connectorColor;

  /// (Highcharts, Highstock) Pixel width of the line that connects the dumbbell point's values.
  final num? connectorWidth;

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

  /// (Highcharts, Highstock) Extended data labels for range series types. Range series data labels use no `x` and `y` options. Instead, they have `xLow`, `xHigh`, `yLow` and `yHigh` options to allow the higher and lower data label sets individually.
  final dynamic dataLabels;

  /// (Highcharts, Highstock) The mapping between the data table and the series data points. This is used in conjunction with the `dataTable` option (on chart or series level) to map columns from the data table to the properties of the data points. The keys of the `dataMapping` object correspond to the pr
  final HCDataMappingOptionsObject? dataMapping;

  /// (Highcharts, Highstock) Options for series data sorting.
  final HCPlotDumbbellDataSortingOptions? dataSorting;

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

  /// (Highcharts, Highstock) Determines whether the series should look for the nearest point in both dimensions or just the x-dimension when hovering the series. Defaults to `'xy'` for scatter series and `'x'` for most other series. If the data has duplicate x-values, it is recommended to set this to `'x
  final String? findNearestPointBy;

  /// (Highcharts, Highstock) Defines when to display a gap in the graph, together with the gapUnit option.
  final num? gapSize;

  /// (Highcharts, Highstock) Together with gapSize, this option defines where to draw gaps in the graph.
  final String? gapUnit;

  /// (Highcharts, Highstock, Gantt) Whether to use the Y extremes of the total chart width or only the zoomed area when zooming in on parts of the X axis. By default, the Y axis adjusts to the min and max of the visible data. Cartesian series only.
  final bool? getExtremesFromAll;

  final num? groupPadding;

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

  /// (Highcharts, Highstock) The line cap used for line ends and line joins on the graph.
  final String? linecap;

  /// (Highcharts, Highstock) A separate color for the graph line. By default the line takes the `color` of the series, but the lineColor setting allows setting a separate color for the line without altering the `fillColor`.
  final dynamic lineColor;

  /// (Highcharts, Highstock, Gantt) The id of another series to link to. Additionally, the value can be ":previous" to link to the previous series. When two series are linked, only the first one appears in the legend. Toggling the visibility of this also toggles the linked series.
  final String? linkedTo;

  /// (Highcharts, Highstock) Color of the start markers in a dumbbell graph. This option takes priority over the series color. To avoid this, set `lowColor` to `undefined`.
  final dynamic lowColor;

  /// (Highcharts, Highstock) Options for the lower markers of the dumbbell-like series. When `lowMarker` is not defined, options inherit form the marker.
  final HCPointMarkerOptionsObject? lowMarker;

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

  final num? pointPadding;

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

  /// (Highcharts) Whether to apply a drop shadow to the graph line. Since 2.3 the shadow can be an object configuration containing `color`, `offsetX`, `offsetY`, `opacity` and `width`.
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

  /// (Highcharts, Highstock) A collection of options for different series states.
  final HCSeriesStatesOptionsObject? states;

  /// (Highcharts, Highstock) Whether to apply steps to the line. Possible values are `left`, `center` and `right`.
  final String? step;

  /// (Highcharts, Highstock) The Y axis value to serve as the base for the area, for distinguishing between values above and below a threshold. The area between the graph and the threshold is filled.
  final num? threshold;

  /// (Highcharts, Highstock) A configuration object for the tooltip rendering of each single series. Properties are inherited from tooltip, but only the following properties can be defined on a series level.
  final HCSeriesTooltipOptionsObject? tooltip;

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
    if (boostBlending != null) {
      json['boostBlending'] = boostBlending;
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
    if (connectorColor != null) {
      json['connectorColor'] = connectorColor;
    }
    if (connectorWidth != null) {
      json['connectorWidth'] = connectorWidth;
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
    if (groupPadding != null) {
      json['groupPadding'] = groupPadding;
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
    if (linecap != null) {
      json['linecap'] = linecap;
    }
    if (lineColor != null) {
      json['lineColor'] = hcJsonValue(lineColor);
    }
    if (linkedTo != null) {
      json['linkedTo'] = linkedTo;
    }
    if (lowColor != null) {
      json['lowColor'] = hcJsonValue(lowColor);
    }
    if (lowMarker != null) {
      json['lowMarker'] = lowMarker!.toJson();
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
    if (pointPadding != null) {
      json['pointPadding'] = pointPadding;
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
    if (states != null) {
      json['states'] = states!.toJson();
    }
    if (step != null) {
      json['step'] = step;
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

/// (Highcharts, Highstock) Animation setting for hovering the graph in line-type series.
class HCPlotDumbbellStatesHoverAnimationOptions implements HCOption {
  const HCPlotDumbbellStatesHoverAnimationOptions({
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
class HCPlotDumbbellStatesInactiveAnimationOptions implements HCOption {
  const HCPlotDumbbellStatesInactiveAnimationOptions({
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
class HCPlotDumbbellStatesSelectAnimationOptions implements HCOption {
  const HCPlotDumbbellStatesSelectAnimationOptions({
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
class HCPlotDumbbellTooltipDateTimeLabelFormatsOptions implements HCOption {
  const HCPlotDumbbellTooltipDateTimeLabelFormatsOptions({
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
class HCPlotDumbbellTooltipHeaderOptions implements HCOption {
  const HCPlotDumbbellTooltipHeaderOptions({
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
class HCPlotDumbbellTooltipPositionOptions implements HCOption {
  const HCPlotDumbbellTooltipPositionOptions({
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
class HCPlotEmaAccessibilityPointOptions implements HCOption {
  const HCPlotEmaAccessibilityPointOptions({
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
class HCPlotEmaDataLabelsAnimationOptions implements HCOption {
  const HCPlotEmaDataLabelsAnimationOptions({
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
class HCPlotEmaDataLabelsOptions implements HCOption {
  const HCPlotEmaDataLabelsOptions({
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
class HCPlotEmaDataSortingOptions implements HCOption {
  const HCPlotEmaDataSortingOptions({
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
class HCPlotEmaLabelStyleOptions implements HCOption {
  const HCPlotEmaLabelStyleOptions({
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
class HCPlotEmaMarkerStatesHoverAnimationOptions implements HCOption {
  const HCPlotEmaMarkerStatesHoverAnimationOptions({
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
class HCPlotEmaOnPointConnectorOptions implements HCOption {
  const HCPlotEmaOnPointConnectorOptions({
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
class HCPlotEmaOnPointOptions implements HCOption {
  const HCPlotEmaOnPointOptions({
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
class HCPlotEmaOnPointPositionOptions implements HCOption {
  const HCPlotEmaOnPointPositionOptions({
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

/// (Highstock) Exponential moving average indicator (EMA). This series requires the `linkedTo` option to be set.
class HCPlotEmaOptions implements HCOption {
  const HCPlotEmaOptions({
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
  final HCPlotEmaDataSortingOptions? dataSorting;

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
  final HCPlotEmaParamsOptions? params;

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
class HCPlotEmaParamsOptions implements HCOption {
  const HCPlotEmaParamsOptions({
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
class HCPlotEmaStatesHoverAnimationOptions implements HCOption {
  const HCPlotEmaStatesHoverAnimationOptions({
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
class HCPlotEmaStatesInactiveAnimationOptions implements HCOption {
  const HCPlotEmaStatesInactiveAnimationOptions({
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
class HCPlotEmaStatesSelectAnimationOptions implements HCOption {
  const HCPlotEmaStatesSelectAnimationOptions({
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
class HCPlotEmaTooltipDateTimeLabelFormatsOptions implements HCOption {
  const HCPlotEmaTooltipDateTimeLabelFormatsOptions({
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
class HCPlotEmaTooltipHeaderOptions implements HCOption {
  const HCPlotEmaTooltipHeaderOptions({
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
class HCPlotEmaTooltipPositionOptions implements HCOption {
  const HCPlotEmaTooltipPositionOptions({
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
class HCPlotErrorbarAccessibilityPointOptions implements HCOption {
  const HCPlotErrorbarAccessibilityPointOptions({
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

/// (Highcharts, Highstock, Highmaps, Gantt) Enable or disable the initial animation when a series is displayed for the `dataLabels`. The animation can also be set as a configuration object. Please note that this option only applies to the initial animation.
class HCPlotErrorbarDataLabelsAnimationOptions implements HCOption {
  const HCPlotErrorbarDataLabelsAnimationOptions({
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
class HCPlotErrorbarDataLabelsOptions implements HCOption {
  const HCPlotErrorbarDataLabelsOptions({
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
class HCPlotErrorbarDataSortingOptions implements HCOption {
  const HCPlotErrorbarDataSortingOptions({
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
class HCPlotErrorbarLabelStyleOptions implements HCOption {
  const HCPlotErrorbarLabelStyleOptions({
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
class HCPlotErrorbarOnPointConnectorOptions implements HCOption {
  const HCPlotErrorbarOnPointConnectorOptions({
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
class HCPlotErrorbarOnPointOptions implements HCOption {
  const HCPlotErrorbarOnPointOptions({
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
class HCPlotErrorbarOnPointPositionOptions implements HCOption {
  const HCPlotErrorbarOnPointPositionOptions({
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

/// (Highcharts) Error bars are a graphical representation of the variability of data and are used on graphs to indicate the error, or uncertainty in a reported measurement.
class HCPlotErrorbarOptions implements HCOption {
  const HCPlotErrorbarOptions({
    this.accessibility,
    this.allowPointSelect,
    this.animation,
    this.animationLimit,
    this.boxDashStyle,
    this.centerInCategory,
    this.className,
    this.clip,
    this.color,
    this.colorAxis,
    this.colorByPoint,
    this.colorIndex,
    this.colorKey,
    this.colors,
    this.crisp,
    this.cropThreshold,
    this.cursor,
    this.custom,
    this.dashStyle,
    this.dataLabels,
    this.dataMapping,
    this.dataSorting,
    this.depth,
    this.description,
    this.dragDrop,
    this.edgeColor,
    this.edgeWidth,
    this.enableMouseTracking,
    this.events,
    this.fillColor,
    this.findNearestPointBy,
    this.getExtremesFromAll,
    this.grouping,
    this.groupPadding,
    this.inactiveOtherPoints,
    this.includeInDataExport,
    this.keys,
    this.label,
    this.legendSymbol,
    this.legendSymbolColor,
    this.lineWidth,
    this.linkedTo,
    this.maxPointWidth,
    this.medianColor,
    this.medianDashStyle,
    this.medianWidth,
    this.minPointLength,
    this.negativeColor,
    this.nullInteraction,
    this.onPoint,
    this.opacity,
    this.point,
    this.pointDescriptionFormat,
    this.pointDescriptionFormatter,
    this.pointInterval,
    this.pointIntervalUnit,
    this.pointPadding,
    this.pointPlacement,
    this.pointRange,
    this.pointStart,
    this.pointWidth,
    this.relativeXValue,
    this.selected,
    this.shadow,
    this.showCheckbox,
    this.showInLegend,
    this.skipKeyboardNavigation,
    this.softThreshold,
    this.sonification,
    this.stacking,
    this.stemColor,
    this.stemDashStyle,
    this.stemWidth,
    this.stickyTracking,
    this.threshold,
    this.tooltip,
    this.turboThreshold,
    this.visible,
    this.whiskerColor,
    this.whiskerDashStyle,
    this.whiskerLength,
    this.whiskerWidth,
    this.zoneAxis,
    this.zones,
    this.zoomEnabled,
  });

  /// (Highcharts) Accessibility options for a series.
  final HCSeriesAccessibilityOptionsObject? accessibility;

  /// (Highcharts) Allow this series' points to be selected by clicking on the graphic (columns, point markers, pie slices, map areas etc).
  final bool? allowPointSelect;

  /// (Highcharts) Enable or disable the initial animation when a series is displayed. The animation can also be set as a configuration object. Please note that this option only applies to the initial animation of the series itself. For other animations, see chart.animation and the animation parameter und
  final dynamic animation;

  /// (Highcharts) For some series, there is a limit that shuts down animation by default when the total number of points in the chart is too high. For example, for a column chart and its derivatives, animation does not run if there is more than 250 points totally. To disable this cap, set `animationLimit
  final num? animationLimit;

  /// (Highcharts) The dash style of the box.
  final String? boxDashStyle;

  /// (Highcharts, Highstock, Gantt) When `true`, the columns will center in the category, ignoring null or missing points. When `false`, space will be reserved for null or missing points.
  final bool? centerInCategory;

  /// (Highcharts) An additional class name to apply to the series' graphical elements. This option does not replace default class names of the graphical element. Changes to the series' color will also be reflected in a chart's legend and tooltip.
  final String? className;

  /// (Highcharts) Disable this option to allow series rendering in the whole plotting area.
  final bool? clip;

  /// (Highcharts) The main color of the bars. This can be overridden by stemColor and whiskerColor individually.
  final dynamic color;

  /// (Highcharts, Highstock, Highmaps) When using dual or multiple color axes, this number defines which colorAxis the particular series is connected to. It refers to either the axis id or the index of the axis in the colorAxis array, with 0 being the first. Set this option to false to prevent a series f
  final dynamic colorAxis;

  /// (Highcharts, Highstock, Gantt) When using automatic point colors pulled from the global colors or series-specific plotOptions.column.colors collections, this option determines whether the chart should receive one color per series or one color per point.
  final bool? colorByPoint;

  /// (Highcharts) Styled mode only. A specific color index to use for the series, so its graphic representations are given the class name `highcharts-color-{n}`.
  final num? colorIndex;

  /// (Highcharts, Highstock, Highmaps) Determines what data value should be used to calculate point color if `colorAxis` is used. Requires to set `min` and `max` if some custom point property is used or if approximation for data grouping is set to `'sum'`.
  final String? colorKey;

  /// (Highcharts, Highstock, Gantt) A series specific or series type specific color set to apply instead of the global colors when colorByPoint is true.
  final List<dynamic>? colors;

  /// (Highcharts, Highstock, Gantt) When true, each point or column edge is rounded to its nearest pixel in order to render sharp on screen. In some cases, when there are a lot of densely packed columns, this leads to visible difference in column widths or distance between columns. In these cases, settin
  final bool? crisp;

  /// (Highcharts, Highstock, Gantt) When the series contains less points than the crop threshold, all points are drawn, even if the points fall outside the visible plot area at the current zoom. The advantage of drawing all points (including markers and columns), is that animation is performed on updates
  final num? cropThreshold;

  /// (Highcharts) You can set the cursor to "pointer" if you have click events attached to the series, to signal to the user that the points and lines can be clicked.
  final String? cursor;

  /// (Highcharts) A reserved subspace to store options and values for customized functionality. Here you can add additional data for your own event callbacks and formatter callbacks.
  final HCDictionary? custom;

  /// (Highcharts) Name of the dash style to use for the graph, or for some series types the outline of each shape.
  final String? dashStyle;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for the series data labels, appearing next to each data point.
  final dynamic dataLabels;

  /// (Highcharts) The mapping between the data table and the series data points. This is used in conjunction with the `dataTable` option (on chart or series level) to map columns from the data table to the properties of the data points. The keys of the `dataMapping` object correspond to the properties of
  final HCDataMappingOptionsObject? dataMapping;

  /// (Highcharts, Highstock) Options for series data sorting.
  final HCPlotErrorbarDataSortingOptions? dataSorting;

  /// (Highcharts) Depth of the columns in a 3D column chart.
  final num? depth;

  /// (Highcharts) Deprecated. Use plotOptions.series.accessibility.description instead.
  final String? description;

  /// (Highcharts) The draggable-points module allows points to be moved around or modified in the chart. In addition to the options mentioned under the `dragDrop` API structure, the module fires three events, point.dragStart, point.drag and point.drop.
  final HCSeriesDragDropOptionsObject? dragDrop;

  /// (Highcharts) 3D columns only. The color of the edges. Similar to `borderColor`, except it defaults to the same color as the column.
  final String? edgeColor;

  /// (Highcharts) 3D columns only. The width of the colored edges.
  final num? edgeWidth;

  /// (Highcharts) Enable or disable the mouse tracking for a specific series. This includes point tooltips and click events on graphs and points. For large datasets it improves performance.
  final bool? enableMouseTracking;

  /// (Highcharts) General event handlers for the series items. These event hooks can also be attached to the series at run time using the `Highcharts.addEvent` function.
  final HCSeriesEventsOptionsObject? events;

  /// (Highcharts) The fill color of the box.
  final dynamic fillColor;

  /// (Highcharts) Determines whether the series should look for the nearest point in both dimensions or just the x-dimension when hovering the series. Defaults to `'xy'` for scatter series and `'x'` for most other series. If the data has duplicate x-values, it is recommended to set this to `'xy'` to allo
  final String? findNearestPointBy;

  /// (Highcharts, Highstock, Gantt) Whether to use the Y extremes of the total chart width or only the zoomed area when zooming in on parts of the X axis. By default, the Y axis adjusts to the min and max of the visible data. Cartesian series only.
  final bool? getExtremesFromAll;

  /// (Highcharts, Highstock, Gantt) Whether to group non-stacked columns or to let them render independent of each other. Non-grouped columns will be laid out individually and overlap each other.
  final bool? grouping;

  /// (Highcharts, Highstock, Gantt) Padding between each value groups, in x axis units.
  final num? groupPadding;

  /// (Highcharts) Highlight only the hovered point and fade the remaining points.
  final bool? inactiveOtherPoints;

  /// (Highcharts) When set to `false` will prevent the series data from being included in any form of data export.
  final bool? includeInDataExport;

  /// (Highcharts) An array specifying which option maps to which key in the data point array. This makes it convenient to work with unstructured data arrays from different sources.
  final List<String>? keys;

  /// (Highcharts, Highstock, Gantt) Series labels are placed as close to the series as possible in a natural way, seeking to avoid other series. The goal of this feature is to make the chart more easily readable, like if a human designer placed the labels in the optimal position.
  final HCSeriesLabelOptionsObject? label;

  /// (Highcharts) What type of legend symbol to render for this series. Can be one of `areaMarker`, `lineMarker` or `rectangle`.
  final String? legendSymbol;

  /// (Highcharts, Highstock, Highmaps) Defines the color of the legend symbol for this series. Defaults to undefined, in which case the series color is used. Does not work with styled mode.
  final dynamic legendSymbolColor;

  /// (Highcharts) The width of the line surrounding the box. If any of stemWidth, medianWidth or whiskerWidth are `null`, the lineWidth also applies to these lines.
  final num? lineWidth;

  /// (Highcharts) The parent series of the error bar. The default value links it to the previous series. Otherwise, use the id of the parent series.
  final String? linkedTo;

  /// (Highcharts, Highstock, Gantt) The maximum allowed pixel width for a column, translated to the height of a bar in a bar chart. This prevents the columns from becoming too wide when there is a small number of points in the chart.
  final num? maxPointWidth;

  /// (Highcharts) The color of the median line. If `undefined`, the general series color applies.
  final dynamic medianColor;

  /// (Highcharts) The dash style of the median.
  final String? medianDashStyle;

  /// (Highcharts) The pixel width of the median line. If `null`, the lineWidth is used.
  final num? medianWidth;

  /// (Highcharts, Highstock, Gantt) The minimal height for a column or width for a bar. By default, 0 values are not shown. To visualize a 0 (or close to zero) point, set the minimal point length to a pixel value like 3\. In stacked column charts, minPointLength might not be respected for tightly packed
  final num? minPointLength;

  /// (Highcharts) The color for the parts of the graph or points that are below the threshold. Note that `zones` takes precedence over the negative color. Using `negativeColor` is equivalent to applying a zone with value of 0.
  final dynamic negativeColor;

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

  /// (Highcharts, Highstock, Gantt) If no x values are given for the points in a series, `pointInterval` defines the interval of the x values. For example, if a series contains one value every decade starting from year 0, set `pointInterval` to `10`. In true `datetime` axes, the `pointInterval` is set in
  final num? pointInterval;

  /// (Highcharts, Highstock, Gantt) On datetime series, this allows for setting the pointInterval to irregular time units, `day`, `month` and `year`. A day is usually the same as 24 hours, but `pointIntervalUnit` also takes the DST crossover into consideration when dealing with local time. Combine this o
  final String? pointIntervalUnit;

  /// (Highcharts, Highstock, Gantt) Padding between each column or bar, in x axis units.
  final num? pointPadding;

  /// (Highcharts, Highstock, Gantt) Possible values: `"on"`, `"between"`, `number`.
  final dynamic pointPlacement;

  /// (Highcharts, Highstock, Gantt) The X axis range that each point is valid for. This determines the width of the column. On a categorized axis, the range will be 1 by default (one category unit). On linear and datetime axes, the range will be computed as the distance between the two closest data point
  final num? pointRange;

  /// (Highcharts, Highstock, Gantt) If no x values are given for the points in a series, `pointStart` defines on what value to start. For example, if a series contains one yearly value starting from 1945, set `pointStart` to 1945.
  final dynamic pointStart;

  /// (Highcharts, Highstock, Gantt) A pixel value specifying a fixed width for each column or bar point. When set to `undefined`, the width is calculated from the `pointPadding` and `groupPadding`. The width effects the dimension that is not based on the point value. For column series it is the horizonta
  final num? pointWidth;

  /// (Highcharts, Highstock) When true, X values in the data set are relative to the current `pointStart`, `pointInterval` and `pointIntervalUnit` settings. This allows compression of the data for datasets with irregular X values.
  final bool? relativeXValue;

  /// (Highcharts) Whether to select the series initially. If `showCheckbox` is true, the checkbox next to the series name in the legend will be checked for a selected series.
  final bool? selected;

  /// (Highcharts) Whether to apply a drop shadow to the graph line. Since 2.3 the shadow can be an object configuration containing `color`, `offsetX`, `offsetY`, `opacity` and `width`.
  final dynamic shadow;

  /// (Highcharts) If true, a checkbox is displayed next to the legend item to allow selecting the series. The state of the checkbox is determined by the `selected` option.
  final bool? showCheckbox;

  /// (Highcharts) Whether to display this particular series or series type in the legend. Standalone series are shown in legend by default, and linked series are not. Since v7.2.0 it is possible to show series that use colorAxis by setting this option to `true`.
  final bool? showInLegend;

  /// (Highcharts) Deprecated. Use series.accessibility.keyboardNavigation instead.
  final bool? skipKeyboardNavigation;

  /// (Highcharts, Highstock) When this is true, the series will not cause the Y axis to cross the zero plane (or threshold option) unless the data actually crosses the plane.
  final bool? softThreshold;

  /// (Highcharts) Sonification/audio chart options for a series.
  final HCSeriesSonificationOptions? sonification;

  /// (Highcharts, Highstock) Whether to stack the values of each series on top of each other. Possible values are null to disable, `"normal"` to stack by value or `"percent"`.
  final String? stacking;

  /// (Highcharts) The color of the stem, the vertical line extending from the box to the whiskers. If `undefined`, the series color is used.
  final dynamic stemColor;

  /// (Highcharts) The dash style of the stem, the vertical line extending from the box to the whiskers.
  final String? stemDashStyle;

  /// (Highcharts) The width of the stem, the vertical line extending from the box to the whiskers. If `undefined`, the width is inherited from the lineWidth option.
  final num? stemWidth;

  /// (Highcharts) Sticky tracking of mouse events. When true, the `mouseOut` event on a series isn't triggered until the mouse moves over another series, or out of the plot area. When false, the `mouseOut` event on a series is triggered when the mouse leaves the area around the series' graph or markers.
  final bool? stickyTracking;

  /// (Highcharts) The Y axis value to serve as the base for the columns, for distinguishing between values above and below a threshold. If `null`, the columns extend from the padding Y axis minimum.
  final num? threshold;

  /// (Highcharts) A configuration object for the tooltip rendering of each single series. Properties are inherited from tooltip, but only the following properties can be defined on a series level.
  final HCSeriesTooltipOptionsObject? tooltip;

  /// (Highcharts, Highstock, Gantt) When a series contains a `data` array that is longer than this, the Series class looks for data configurations of plain numbers or arrays of numbers. The first and last valid points are checked. If found, the rest of the data is assumed to be the same. This saves expen
  final num? turboThreshold;

  /// (Highcharts) Set the initial visibility of the series.
  final bool? visible;

  /// (Highcharts) The color of the whiskers, the horizontal lines marking low and high values. When `undefined`, the general series color is used.
  final dynamic whiskerColor;

  /// (Highcharts) The dash style of the whiskers.
  final String? whiskerDashStyle;

  /// (Highcharts) The length of the whiskers, the horizontal lines marking low and high values. It can be a numerical pixel value, or a percentage value of the box width. Set `0` to disable whiskers.
  final dynamic whiskerLength;

  /// (Highcharts) The line width of the whiskers, the horizontal lines marking low and high values. When `null`, the general lineWidth applies.
  final num? whiskerWidth;

  /// (Highcharts, Highstock) Defines the Axis on which the zones are applied.
  final String? zoneAxis;

  /// (Highcharts, Highstock) An array defining zones within a series. Zones can be applied to the X axis, Y axis or Z axis for bubbles, according to the `zoneAxis` option. The zone definitions have to be in ascending order regarding to the value.
  final List<HCSeriesZonesOptionsObject>? zones;

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
    if (animationLimit != null) {
      json['animationLimit'] = animationLimit;
    }
    if (boxDashStyle != null) {
      json['boxDashStyle'] = boxDashStyle;
    }
    if (centerInCategory != null) {
      json['centerInCategory'] = centerInCategory;
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
    if (colorByPoint != null) {
      json['colorByPoint'] = colorByPoint;
    }
    if (colorIndex != null) {
      json['colorIndex'] = colorIndex;
    }
    if (colorKey != null) {
      json['colorKey'] = colorKey;
    }
    if (colors != null) {
      json['colors'] = colors!.map((e) => hcJsonValue(e)).toList();
    }
    if (crisp != null) {
      json['crisp'] = crisp;
    }
    if (cropThreshold != null) {
      json['cropThreshold'] = cropThreshold;
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
    if (dataLabels != null) {
      json['dataLabels'] = hcJsonValue(dataLabels);
    }
    if (dataMapping != null) {
      json['dataMapping'] = dataMapping!.toJson();
    }
    if (dataSorting != null) {
      json['dataSorting'] = dataSorting!.toJson();
    }
    if (depth != null) {
      json['depth'] = depth;
    }
    if (description != null) {
      json['description'] = description;
    }
    if (dragDrop != null) {
      json['dragDrop'] = dragDrop!.toJson();
    }
    if (edgeColor != null) {
      json['edgeColor'] = edgeColor;
    }
    if (edgeWidth != null) {
      json['edgeWidth'] = edgeWidth;
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
    if (findNearestPointBy != null) {
      json['findNearestPointBy'] = findNearestPointBy;
    }
    if (getExtremesFromAll != null) {
      json['getExtremesFromAll'] = getExtremesFromAll;
    }
    if (grouping != null) {
      json['grouping'] = grouping;
    }
    if (groupPadding != null) {
      json['groupPadding'] = groupPadding;
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
    if (legendSymbol != null) {
      json['legendSymbol'] = legendSymbol;
    }
    if (legendSymbolColor != null) {
      json['legendSymbolColor'] = hcJsonValue(legendSymbolColor);
    }
    if (lineWidth != null) {
      json['lineWidth'] = lineWidth;
    }
    if (linkedTo != null) {
      json['linkedTo'] = linkedTo;
    }
    if (maxPointWidth != null) {
      json['maxPointWidth'] = maxPointWidth;
    }
    if (medianColor != null) {
      json['medianColor'] = hcJsonValue(medianColor);
    }
    if (medianDashStyle != null) {
      json['medianDashStyle'] = medianDashStyle;
    }
    if (medianWidth != null) {
      json['medianWidth'] = medianWidth;
    }
    if (minPointLength != null) {
      json['minPointLength'] = minPointLength;
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
    if (pointPadding != null) {
      json['pointPadding'] = pointPadding;
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
    if (pointWidth != null) {
      json['pointWidth'] = pointWidth;
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
    if (stacking != null) {
      json['stacking'] = stacking;
    }
    if (stemColor != null) {
      json['stemColor'] = hcJsonValue(stemColor);
    }
    if (stemDashStyle != null) {
      json['stemDashStyle'] = stemDashStyle;
    }
    if (stemWidth != null) {
      json['stemWidth'] = stemWidth;
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
    if (whiskerColor != null) {
      json['whiskerColor'] = hcJsonValue(whiskerColor);
    }
    if (whiskerDashStyle != null) {
      json['whiskerDashStyle'] = whiskerDashStyle;
    }
    if (whiskerLength != null) {
      json['whiskerLength'] = hcJsonValue(whiskerLength);
    }
    if (whiskerWidth != null) {
      json['whiskerWidth'] = whiskerWidth;
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

/// (Highcharts, Highstock, Gantt) For series on datetime axes, the date format in the tooltip's header will by default be guessed based on the closest data points. This member gives the default string representations used for each unit. For an overview of the string or object configuration, see dateFor
class HCPlotErrorbarTooltipDateTimeLabelFormatsOptions implements HCOption {
  const HCPlotErrorbarTooltipDateTimeLabelFormatsOptions({
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
class HCPlotErrorbarTooltipHeaderOptions implements HCOption {
  const HCPlotErrorbarTooltipHeaderOptions({
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
class HCPlotErrorbarTooltipPositionOptions implements HCOption {
  const HCPlotErrorbarTooltipPositionOptions({
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

/// (Highstock) Point accessibility options for a series.
class HCPlotFlagsAccessibilityPointOptions implements HCOption {
  const HCPlotFlagsAccessibilityPointOptions({
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
class HCPlotFlagsDataLabelsAnimationOptions implements HCOption {
  const HCPlotFlagsDataLabelsAnimationOptions({
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
