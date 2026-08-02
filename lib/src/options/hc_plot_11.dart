part of 'hc_options.dart';

class HCPlotMappointClusterEventsOptions implements HCOption {
  const HCPlotMappointClusterEventsOptions();

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    return json;
  }
}

/// (Highcharts, Highmaps) Options for layout algorithm. Inside there are options to change the type of the algorithm, gridSize, distance or iterations.
class HCPlotMappointClusterLayoutAlgorithmOptions implements HCOption {
  const HCPlotMappointClusterLayoutAlgorithmOptions({
    this.distance,
    this.gridSize,
    this.iterations,
    this.kmeansThreshold,
    this.type,
  });

  /// (Highcharts, Highmaps) When `type` is set to `kmeans`, `distance` is a maximum distance between point and cluster center so that this point will be inside the cluster. The distance is either a number defining pixels or a percentage defining a percentage of the plot area width.
  final dynamic distance;

  /// (Highcharts, Highmaps) When `type` is set to the `grid`, `gridSize` is a size of a grid square element either as a number defining pixels, or a percentage defining a percentage of the plot area width.
  final dynamic gridSize;

  /// (Highcharts, Highmaps) When `type` is set to `kmeans`, `iterations` are the number of iterations that this algorithm will be repeated to find clusters positions.
  final num? iterations;

  /// (Highcharts, Highmaps) When `type` is set to `undefined` and there are more visible points than the kmeansThreshold the `grid` algorithm is used to find clusters, otherwise `kmeans`. It ensures good performance on large datasets and better clusters arrangement after the zoom.
  final num? kmeansThreshold;

  /// (Highcharts, Highmaps) Type of the algorithm used to combine points into a cluster. There are three available algorithms:
  final dynamic type;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (distance != null) {
      json['distance'] = hcJsonValue(distance);
    }
    if (gridSize != null) {
      json['gridSize'] = hcJsonValue(gridSize);
    }
    if (iterations != null) {
      json['iterations'] = iterations;
    }
    if (kmeansThreshold != null) {
      json['kmeansThreshold'] = kmeansThreshold;
    }
    if (type != null) {
      json['type'] = hcJsonValue(type);
    }
    return json;
  }
}

/// (Highcharts, Highmaps) Options for marker clusters, the concept of sampling the data values into larger blocks in order to ease readability and increase performance of the JavaScript charts.
class HCPlotMappointClusterOptions implements HCOption {
  const HCPlotMappointClusterOptions({
    this.allowOverlap,
    this.animation,
    this.dataLabels,
    this.drillToCluster,
    this.enabled,
    this.events,
    this.layoutAlgorithm,
    this.marker,
    this.minimumClusterSize,
    this.states,
    this.zones,
  });

  /// (Highcharts, Highmaps) When set to `false` prevent cluster overlapping - this option works only when `layoutAlgorithm.type = "grid"`.
  final bool? allowOverlap;

  /// (Highcharts, Highmaps) Options for the cluster marker animation.
  final dynamic animation;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for the cluster data labels.
  final dynamic dataLabels;

  /// (Highcharts, Highmaps) Zoom the plot area to the cluster points range when a cluster is clicked.
  final bool? drillToCluster;

  /// (Highcharts, Highmaps) Whether to enable the marker-clusters module.
  final bool? enabled;

  final HCPlotMappointClusterEventsOptions? events;

  /// (Highcharts, Highmaps) Options for layout algorithm. Inside there are options to change the type of the algorithm, gridSize, distance or iterations.
  final HCPlotMappointClusterLayoutAlgorithmOptions? layoutAlgorithm;

  /// (Highcharts, Highmaps) Options for the cluster marker.
  final HCPointMarkerOptionsObject? marker;

  /// (Highcharts, Highmaps) The minimum amount of points to be combined into a cluster. This value has to be greater or equal to 2.
  final num? minimumClusterSize;

  final HCPlotMappointClusterStatesOptions? states;

  /// (Highcharts, Highmaps) An array defining zones within marker clusters.
  final List<HCPlotMappointClusterZonesOptions>? zones;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (allowOverlap != null) {
      json['allowOverlap'] = allowOverlap;
    }
    if (animation != null) {
      json['animation'] = hcJsonValue(animation);
    }
    if (dataLabels != null) {
      json['dataLabels'] = hcJsonValue(dataLabels);
    }
    if (drillToCluster != null) {
      json['drillToCluster'] = drillToCluster;
    }
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    if (events != null) {
      json['events'] = events!.toJson();
    }
    if (layoutAlgorithm != null) {
      json['layoutAlgorithm'] = layoutAlgorithm!.toJson();
    }
    if (marker != null) {
      json['marker'] = marker!.toJson();
    }
    if (minimumClusterSize != null) {
      json['minimumClusterSize'] = minimumClusterSize;
    }
    if (states != null) {
      json['states'] = states!.toJson();
    }
    if (zones != null) {
      json['zones'] = zones!.map((e) => e.toJson()).toList();
    }
    return json;
  }
}

class HCPlotMappointClusterStatesHoverOptions implements HCOption {
  const HCPlotMappointClusterStatesHoverOptions({
    this.fillColor,
  });

  /// (Highcharts, Highmaps) The fill color of the cluster marker in hover state. When `undefined`, the series' or point's fillColor for normal state is used.
  final dynamic fillColor;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (fillColor != null) {
      json['fillColor'] = hcJsonValue(fillColor);
    }
    return json;
  }
}

class HCPlotMappointClusterStatesOptions implements HCOption {
  const HCPlotMappointClusterStatesOptions({
    this.hover,
  });

  final HCPlotMappointClusterStatesHoverOptions? hover;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (hover != null) {
      json['hover'] = hover!.toJson();
    }
    return json;
  }
}

/// (Highcharts, Highmaps) An array defining zones within marker clusters.
class HCPlotMappointClusterZonesOptions implements HCOption {
  const HCPlotMappointClusterZonesOptions({
    this.className,
    this.from,
    this.marker,
    this.to,
  });

  /// (Highcharts, Highmaps) Styled mode only. A custom class name for the zone.
  final String? className;

  /// (Highcharts, Highmaps) The value where the zone starts.
  final num? from;

  /// (Highcharts, Highmaps) Settings for the cluster marker belonging to the zone.
  final HCPointMarkerOptionsObject? marker;

  /// (Highcharts, Highmaps) The value where the zone ends.
  final num? to;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (className != null) {
      json['className'] = className;
    }
    if (from != null) {
      json['from'] = from;
    }
    if (marker != null) {
      json['marker'] = marker!.toJson();
    }
    if (to != null) {
      json['to'] = to;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Enable or disable the initial animation when a series is displayed for the `dataLabels`. The animation can also be set as a configuration object. Please note that this option only applies to the initial animation.
class HCPlotMappointDataLabelsAnimationOptions implements HCOption {
  const HCPlotMappointDataLabelsAnimationOptions({
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
class HCPlotMappointDataLabelsOptions implements HCOption {
  const HCPlotMappointDataLabelsOptions({
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
  final bool? overflow;

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
  final dynamic style;

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

/// (Highcharts, Highstock, Highmaps, Gantt) Styles for the label. The default `color` setting is `"contrast"`, which is a pseudo color that Highcharts picks up and applies the maximum contrast to the underlying point item, for example the bar in a bar chart.
class HCPlotMappointDataLabelsStyleOptions implements HCOption {
  const HCPlotMappointDataLabelsStyleOptions({
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

/// (Highmaps) Animation when hovering over the marker.
class HCPlotMappointMarkerStatesHoverAnimationOptions implements HCOption {
  const HCPlotMappointMarkerStatesHoverAnimationOptions({
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

/// (Highmaps) Options for the connector in the _Series on point_ feature.
class HCPlotMappointOnPointConnectorOptions implements HCOption {
  const HCPlotMappointOnPointConnectorOptions({
    this.dashstyle,
    this.stroke,
    this.width,
  });

  /// (Highmaps) A name for the dash style to use for the connector.
  final String? dashstyle;

  /// (Highmaps) Color of the connector line. By default it's the series' color.
  final String? stroke;

  /// (Highmaps) Pixel width of the connector line.
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

/// (Highmaps) Options for the _Series on point_ feature. Only `pie` and `sunburst` series are supported at this moment.
class HCPlotMappointOnPointOptions implements HCOption {
  const HCPlotMappointOnPointOptions({
    this.connectorOptions,
    this.id,
    this.position,
  });

  /// (Highmaps) Options for the connector in the _Series on point_ feature.
  final dynamic connectorOptions;

  /// (Highmaps) The `id` of the point that we connect the series to. Only points with a given `plotX` and `plotY` values and map points are valid.
  final String? id;

  /// (Highmaps) Options allowing to set a position and an offset of the series in the _Series on point_ feature.
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

/// (Highmaps) Options allowing to set a position and an offset of the series in the _Series on point_ feature.
class HCPlotMappointOnPointPositionOptions implements HCOption {
  const HCPlotMappointOnPointPositionOptions({
    this.offsetX,
    this.offsetY,
    this.x,
    this.y,
  });

  /// (Highmaps) Series center offset from the original x position. If defined, the connector line is drawn connecting original position with new position.
  final num? offsetX;

  /// (Highmaps) Series center offset from the original y position. If defined, the connector line is drawn from original position to a new position.
  final num? offsetY;

  /// (Highmaps) X position of the series center. By default, the series is displayed on the point that it is connected to.
  final num? x;

  /// (Highmaps) Y position of the series center. By default, the series is displayed on the point that it is connected to.
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

/// (Highmaps) A mappoint series is a special form of scatter series where the points can be laid out in map coordinates on top of a map.
class HCPlotMappointOptions implements HCOption {
  const HCPlotMappointOptions({
    this.accessibility,
    this.allowPointSelect,
    this.animation,
    this.animationLimit,
    this.boostBlending,
    this.boostThreshold,
    this.className,
    this.clip,
    this.cluster,
    this.color,
    this.colorAxis,
    this.colorIndex,
    this.colorKey,
    this.cursor,
    this.custom,
    this.dashStyle,
    this.dataLabels,
    this.dataMapping,
    this.description,
    this.dragDrop,
    this.enableMouseTracking,
    this.events,
    this.findNearestPointBy,
    this.inactiveOtherPoints,
    this.includeInDataExport,
    this.joinBy,
    this.keys,
    this.legendSymbol,
    this.linecap,
    this.marker,
    this.negativeColor,
    this.onPoint,
    this.opacity,
    this.point,
    this.pointDescriptionFormat,
    this.pointDescriptionFormatter,
    this.selected,
    this.showCheckbox,
    this.showInLegend,
    this.skipKeyboardNavigation,
    this.sonification,
    this.states,
    this.stickyTracking,
    this.tooltip,
    this.visible,
    this.zIndex,
    this.zoomEnabled,
  });

  /// (Highmaps) Accessibility options for a series.
  final HCSeriesAccessibilityOptionsObject? accessibility;

  /// (Highmaps) Allow this series' points to be selected by clicking on the graphic (columns, point markers, pie slices, map areas etc).
  final bool? allowPointSelect;

  /// (Highmaps) Enable or disable the initial animation when a series is displayed. The animation can also be set as a configuration object. Please note that this option only applies to the initial animation of the series itself. For other animations, see chart.animation and the animation parameter under
  final dynamic animation;

  /// (Highmaps) For some series, there is a limit that shuts down animation by default when the total number of points in the chart is too high. For example, for a column chart and its derivatives, animation does not run if there is more than 250 points totally. To disable this cap, set `animationLimit`
  final num? animationLimit;

  /// (Highmaps) Sets the color blending in the boost module.
  final String? boostBlending;

  /// (Highmaps) Set the point threshold for when a series should enter boost mode.
  final num? boostThreshold;

  /// (Highmaps) An additional class name to apply to the series' graphical elements. This option does not replace default class names of the graphical element. Changes to the series' color will also be reflected in a chart's legend and tooltip.
  final String? className;

  /// (Highmaps) Disable this option to allow series rendering in the whole plotting area.
  final bool? clip;

  /// (Highcharts, Highmaps) Options for marker clusters, the concept of sampling the data values into larger blocks in order to ease readability and increase performance of the JavaScript charts.
  final HCPlotMappointClusterOptions? cluster;

  /// (Highmaps) The main color of the series. In line type series it applies to the line and the point markers unless otherwise specified. In bar type series it applies to the bars unless a color is specified per point. The default value is pulled from the `options.colors` array.
  final dynamic color;

  /// (Highcharts, Highstock, Highmaps) When using dual or multiple color axes, this number defines which colorAxis the particular series is connected to. It refers to either the axis id or the index of the axis in the colorAxis array, with 0 being the first. Set this option to false to prevent a series f
  final dynamic colorAxis;

  /// (Highmaps) Styled mode only. A specific color index to use for the series, so its graphic representations are given the class name `highcharts-color-{n}`.
  final num? colorIndex;

  /// (Highcharts, Highstock, Highmaps) Determines what data value should be used to calculate point color if `colorAxis` is used. Requires to set `min` and `max` if some custom point property is used or if approximation for data grouping is set to `'sum'`.
  final String? colorKey;

  /// (Highmaps) You can set the cursor to "pointer" if you have click events attached to the series, to signal to the user that the points and lines can be clicked.
  final String? cursor;

  /// (Highmaps) A reserved subspace to store options and values for customized functionality. Here you can add additional data for your own event callbacks and formatter callbacks.
  final HCDictionary? custom;

  /// (Highmaps) Name of the dash style to use for the graph, or for some series types the outline of each shape.
  final String? dashStyle;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for the series data labels, appearing next to each data point.
  final dynamic dataLabels;

  /// (Highmaps) The mapping between the data table and the series data points. This is used in conjunction with the `dataTable` option (on chart or series level) to map columns from the data table to the properties of the data points. The keys of the `dataMapping` object correspond to the properties of t
  final HCDataMappingOptionsObject? dataMapping;

  /// (Highmaps) Deprecated. Use plotOptions.series.accessibility.description instead.
  final String? description;

  /// (Highmaps) The draggable-points module allows points to be moved around or modified in the chart. In addition to the options mentioned under the `dragDrop` API structure, the module fires three events, point.dragStart, point.drag and point.drop.
  final HCSeriesDragDropOptionsObject? dragDrop;

  /// (Highmaps) Enable or disable the mouse tracking for a specific series. This includes point tooltips and click events on graphs and points. For large datasets it improves performance.
  final bool? enableMouseTracking;

  /// (Highmaps) General event handlers for the series items. These event hooks can also be attached to the series at run time using the `Highcharts.addEvent` function.
  final HCSeriesEventsOptionsObject? events;

  /// (Highmaps) Determines whether the series should look for the nearest point in both dimensions or just the x-dimension when hovering the series. Defaults to `'xy'` for scatter series and `'x'` for most other series. If the data has duplicate x-values, it is recommended to set this to `'xy'` to allow
  final String? findNearestPointBy;

  /// (Highmaps) Highlight only the hovered point and fade the remaining points.
  final bool? inactiveOtherPoints;

  /// (Highmaps) When set to `false` will prevent the series data from being included in any form of data export.
  final bool? includeInDataExport;

  /// (Highmaps) What property to join the `mapData` to the value data. For example, if joinBy is "code", the mapData items with a specific code is merged into the data with the same code. For maps loaded from GeoJSON, the keys may be held in each point's `properties` object.
  final dynamic joinBy;

  /// (Highmaps) An array specifying which option maps to which key in the data point array. This makes it convenient to work with unstructured data arrays from different sources.
  final List<String>? keys;

  /// (Highmaps) What type of legend symbol to render for this series. Can be one of `areaMarker`, `lineMarker` or `rectangle`.
  final String? legendSymbol;

  /// (Highmaps) The line cap used for line ends and line joins on the graph.
  final String? linecap;

  /// (Highmaps) Options for the point markers of line and scatter-like series. Properties like `fillColor`, `lineColor` and `lineWidth` define the visual appearance of the markers. The `symbol` option defines the shape. Other series types, like column series, don't have markers, but have visual options o
  final HCPointMarkerOptionsObject? marker;

  /// (Highmaps) The color for the parts of the graph or points that are below the threshold. Note that `zones` takes precedence over the negative color. Using `negativeColor` is equivalent to applying a zone with value of 0.
  final dynamic negativeColor;

  /// (Highmaps) Options for the _Series on point_ feature. Only `pie` and `sunburst` series are supported at this moment.
  final dynamic onPoint;

  /// (Highmaps) Opacity of a series parts: line, fill (e.g. area) and dataLabels.
  final num? opacity;

  /// (Highmaps) Properties for each single point.
  final HCPlotSeriesPointOptions? point;

  /// (Highmaps) Deprecated. Use series.accessibility.point.descriptionFormat instead.
  final dynamic pointDescriptionFormat;

  /// (Highmaps) Deprecated. Use series.accessibility.point.descriptionFormatter instead.
  final dynamic pointDescriptionFormatter;

  /// (Highmaps) Whether to select the series initially. If `showCheckbox` is true, the checkbox next to the series name in the legend will be checked for a selected series.
  final bool? selected;

  /// (Highmaps) If true, a checkbox is displayed next to the legend item to allow selecting the series. The state of the checkbox is determined by the `selected` option.
  final bool? showCheckbox;

  /// (Highmaps) Whether to display this particular series or series type in the legend. Standalone series are shown in legend by default, and linked series are not. Since v7.2.0 it is possible to show series that use colorAxis by setting this option to `true`.
  final bool? showInLegend;

  /// (Highmaps) Deprecated. Use series.accessibility.keyboardNavigation instead.
  final bool? skipKeyboardNavigation;

  /// (Highmaps) Sonification/audio chart options for a series.
  final HCSeriesSonificationOptions? sonification;

  /// (Highmaps) A collection of options for different series states.
  final HCSeriesStatesOptionsObject? states;

  /// (Highcharts, Highstock, Highmaps) Sticky tracking of mouse events. When true, the `mouseOut` event on a series isn't triggered until the mouse moves over another series, or out of the plot area. When false, the `mouseOut` event on a series is triggered when the mouse leaves the area around the serie
  final bool? stickyTracking;

  /// (Highcharts, Highstock, Highmaps) A configuration object for the tooltip rendering of each single series. Properties are inherited from tooltip. Overridable properties are `headerFormat`, `pointFormat`, `yDecimals`, `xDateFormat`, `yPrefix` and `ySuffix`. Unlike other series, in a scatter plot the s
  final HCSeriesTooltipOptionsObject? tooltip;

  /// (Highmaps) Set the initial visibility of the series.
  final bool? visible;

  /// (Highmaps) Define the z index of the series.
  final num? zIndex;

  /// (Highmaps) Whether to zoom non-cartesian series. If `chart.zooming` is set, the option allows to disable zooming on an individual non-cartesian series. By default zooming is enabled for all series.
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
    if (cluster != null) {
      json['cluster'] = cluster!.toJson();
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
    if (inactiveOtherPoints != null) {
      json['inactiveOtherPoints'] = inactiveOtherPoints;
    }
    if (includeInDataExport != null) {
      json['includeInDataExport'] = includeInDataExport;
    }
    if (joinBy != null) {
      json['joinBy'] = hcJsonValue(joinBy);
    }
    if (keys != null) {
      json['keys'] = keys;
    }
    if (legendSymbol != null) {
      json['legendSymbol'] = legendSymbol;
    }
    if (linecap != null) {
      json['linecap'] = linecap;
    }
    if (marker != null) {
      json['marker'] = marker!.toJson();
    }
    if (negativeColor != null) {
      json['negativeColor'] = hcJsonValue(negativeColor);
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
    if (states != null) {
      json['states'] = states!.toJson();
    }
    if (stickyTracking != null) {
      json['stickyTracking'] = stickyTracking;
    }
    if (tooltip != null) {
      json['tooltip'] = tooltip!.toJson();
    }
    if (visible != null) {
      json['visible'] = visible;
    }
    if (zIndex != null) {
      json['zIndex'] = zIndex;
    }
    if (zoomEnabled != null) {
      json['zoomEnabled'] = zoomEnabled;
    }
    return json;
  }
}

/// (Highmaps) Animation when not hovering over the marker.
class HCPlotMappointStatesInactiveAnimationOptions implements HCOption {
  const HCPlotMappointStatesInactiveAnimationOptions({
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

/// (Highcharts, Highstock, Gantt) For series on datetime axes, the date format in the tooltip's header will by default be guessed based on the closest data points. This member gives the default string representations used for each unit. For an overview of the string or object configuration, see dateFor
class HCPlotMappointTooltipDateTimeLabelFormatsOptions implements HCOption {
  const HCPlotMappointTooltipDateTimeLabelFormatsOptions({
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

/// (Highcharts, Highstock, Highmaps) Options for the tooltip header when tooltip.split is enabled. The header is the box containing the X value in a split tooltip.
class HCPlotMappointTooltipHeaderOptions implements HCOption {
  const HCPlotMappointTooltipHeaderOptions({
    this.backgroundColor,
    this.borderColor,
    this.borderWidth,
    this.distance,
    this.shape,
    this.style,
  });

  /// (Highcharts, Highstock, Highmaps) Background color for the tooltip header when tooltip.split is enabled.
  final dynamic backgroundColor;

  /// (Highcharts, Highstock, Highmaps) Border color for the tooltip header when tooltip.split is enabled.
  final dynamic borderColor;

  /// (Highcharts, Highstock, Highmaps) The width of the border for the tooltip header when tooltip.split is enabled.
  final num? borderWidth;

  /// (Highcharts, Highstock, Highmaps) Distance between the plot area and the header (except the chevron) in a split tooltip, in pixels. The default value makes the header text align with the axis labels.
  final num? distance;

  /// (Highcharts, Highstock, Highmaps) The name of a symbol to use for the border around the tooltip header. Applies only when tooltip.split is enabled.
  final String? shape;

  /// (Highcharts, Highstock, Highmaps) CSS styles for the tooltip header. The default is `{ fontSize: '1em' }`, ensuring that the header text is the same size as the axis labels.
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

/// (Highcharts, Highstock, Highmaps) Positioning options for fixed tooltip, taking effect only when tooltip.fixed is `true`.
class HCPlotMappointTooltipPositionOptions implements HCOption {
  const HCPlotMappointTooltipPositionOptions({
    this.align,
    this.relativeTo,
    this.verticalAlign,
    this.x,
    this.y,
  });

  /// (Highcharts, Highstock, Highmaps) The horizontal alignment of the fixed tooltip.
  final String? align;

  /// (Highcharts, Highstock, Highmaps) What the fixed tooltip alignment should be relative to.
  final String? relativeTo;

  /// (Highcharts, Highstock, Highmaps) The vertical alignment of the fixed tooltip.
  final String? verticalAlign;

  /// (Highcharts, Highstock, Highmaps) X pixel offset from the given position. Can be used to shy away from axis lines, grid lines etc to avoid the tooltip overlapping other elements.
  final num? x;

  /// (Highcharts, Highstock, Highmaps) Y pixel offset from the given position. Can be used to shy away from axis lines, grid lines etc to avoid the tooltip overlapping other elements.
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
class HCPlotMfiAccessibilityPointOptions implements HCOption {
  const HCPlotMfiAccessibilityPointOptions({
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
class HCPlotMfiDataLabelsAnimationOptions implements HCOption {
  const HCPlotMfiDataLabelsAnimationOptions({
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
class HCPlotMfiDataLabelsOptions implements HCOption {
  const HCPlotMfiDataLabelsOptions({
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
class HCPlotMfiDataSortingOptions implements HCOption {
  const HCPlotMfiDataSortingOptions({
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
class HCPlotMfiLabelStyleOptions implements HCOption {
  const HCPlotMfiLabelStyleOptions({
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
class HCPlotMfiMarkerStatesHoverAnimationOptions implements HCOption {
  const HCPlotMfiMarkerStatesHoverAnimationOptions({
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
class HCPlotMfiOnPointConnectorOptions implements HCOption {
  const HCPlotMfiOnPointConnectorOptions({
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
class HCPlotMfiOnPointOptions implements HCOption {
  const HCPlotMfiOnPointOptions({
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
class HCPlotMfiOnPointPositionOptions implements HCOption {
  const HCPlotMfiOnPointPositionOptions({
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

/// (Highstock) Money Flow Index. This series requires `linkedTo` option to be set and should be loaded after the `stock/indicators/indicators.js` file.
class HCPlotMfiOptions implements HCOption {
  const HCPlotMfiOptions({
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
  final HCPlotMfiDataSortingOptions? dataSorting;

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
  final HCPlotMfiParamsOptions? params;

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
class HCPlotMfiParamsOptions implements HCOption {
  const HCPlotMfiParamsOptions({
    this.decimals,
    this.index,
    this.period,
    this.volumeSeriesID,
  });

  /// (Highstock) Number of maximum decimals that are used in MFI calculations.
  final num? decimals;

  final String? index;

  /// (Highstock) The base period for indicator calculations. This is the number of data points which are taken into account for the indicator calculations.
  final num? period;

  /// (Highstock) The id of volume series which is mandatory. For example using OHLC data, volumeSeriesID='volume' means the indicator will be calculated using OHLC and volume values.
  final String? volumeSeriesID;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (decimals != null) {
      json['decimals'] = decimals;
    }
    if (index != null) {
      json['index'] = index;
    }
    if (period != null) {
      json['period'] = period;
    }
    if (volumeSeriesID != null) {
      json['volumeSeriesID'] = volumeSeriesID;
    }
    return json;
  }
}

/// (Highcharts, Highstock) Animation setting for hovering the graph in line-type series.
class HCPlotMfiStatesHoverAnimationOptions implements HCOption {
  const HCPlotMfiStatesHoverAnimationOptions({
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
class HCPlotMfiStatesInactiveAnimationOptions implements HCOption {
  const HCPlotMfiStatesInactiveAnimationOptions({
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
class HCPlotMfiStatesSelectAnimationOptions implements HCOption {
  const HCPlotMfiStatesSelectAnimationOptions({
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
class HCPlotMfiTooltipDateTimeLabelFormatsOptions implements HCOption {
  const HCPlotMfiTooltipDateTimeLabelFormatsOptions({
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
class HCPlotMfiTooltipHeaderOptions implements HCOption {
  const HCPlotMfiTooltipHeaderOptions({
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
class HCPlotMfiTooltipPositionOptions implements HCOption {
  const HCPlotMfiTooltipPositionOptions({
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
class HCPlotMomentumAccessibilityPointOptions implements HCOption {
  const HCPlotMomentumAccessibilityPointOptions({
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
class HCPlotMomentumDataLabelsAnimationOptions implements HCOption {
  const HCPlotMomentumDataLabelsAnimationOptions({
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
class HCPlotMomentumDataLabelsOptions implements HCOption {
  const HCPlotMomentumDataLabelsOptions({
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
class HCPlotMomentumDataSortingOptions implements HCOption {
  const HCPlotMomentumDataSortingOptions({
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
class HCPlotMomentumLabelStyleOptions implements HCOption {
  const HCPlotMomentumLabelStyleOptions({
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
class HCPlotMomentumMarkerStatesHoverAnimationOptions implements HCOption {
  const HCPlotMomentumMarkerStatesHoverAnimationOptions({
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
class HCPlotMomentumOnPointConnectorOptions implements HCOption {
  const HCPlotMomentumOnPointConnectorOptions({
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
class HCPlotMomentumOnPointOptions implements HCOption {
  const HCPlotMomentumOnPointOptions({
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
class HCPlotMomentumOnPointPositionOptions implements HCOption {
  const HCPlotMomentumOnPointPositionOptions({
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

/// (Highstock) Momentum. This series requires `linkedTo` option to be set.
class HCPlotMomentumOptions implements HCOption {
  const HCPlotMomentumOptions({
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
  final HCPlotMomentumDataSortingOptions? dataSorting;

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
  final HCPlotMomentumParamsOptions? params;

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
class HCPlotMomentumParamsOptions implements HCOption {
  const HCPlotMomentumParamsOptions({
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
class HCPlotMomentumStatesHoverAnimationOptions implements HCOption {
  const HCPlotMomentumStatesHoverAnimationOptions({
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
class HCPlotMomentumStatesInactiveAnimationOptions implements HCOption {
  const HCPlotMomentumStatesInactiveAnimationOptions({
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
class HCPlotMomentumStatesSelectAnimationOptions implements HCOption {
  const HCPlotMomentumStatesSelectAnimationOptions({
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
class HCPlotMomentumTooltipDateTimeLabelFormatsOptions implements HCOption {
  const HCPlotMomentumTooltipDateTimeLabelFormatsOptions({
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
class HCPlotMomentumTooltipHeaderOptions implements HCOption {
  const HCPlotMomentumTooltipHeaderOptions({
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
class HCPlotMomentumTooltipPositionOptions implements HCOption {
  const HCPlotMomentumTooltipPositionOptions({
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
class HCPlotNatrAccessibilityPointOptions implements HCOption {
  const HCPlotNatrAccessibilityPointOptions({
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
class HCPlotNatrDataLabelsAnimationOptions implements HCOption {
  const HCPlotNatrDataLabelsAnimationOptions({
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
class HCPlotNatrDataLabelsOptions implements HCOption {
  const HCPlotNatrDataLabelsOptions({
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
class HCPlotNatrDataSortingOptions implements HCOption {
  const HCPlotNatrDataSortingOptions({
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
class HCPlotNatrLabelStyleOptions implements HCOption {
  const HCPlotNatrLabelStyleOptions({
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
class HCPlotNatrMarkerStatesHoverAnimationOptions implements HCOption {
  const HCPlotNatrMarkerStatesHoverAnimationOptions({
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
class HCPlotNatrOnPointConnectorOptions implements HCOption {
  const HCPlotNatrOnPointConnectorOptions({
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
class HCPlotNatrOnPointOptions implements HCOption {
  const HCPlotNatrOnPointOptions({
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
class HCPlotNatrOnPointPositionOptions implements HCOption {
  const HCPlotNatrOnPointPositionOptions({
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

/// (Highstock) Normalized average true range indicator (NATR). This series requires `linkedTo` option to be set and should be loaded after the `stock/indicators/indicators.js` and `stock/indicators/atr.js`.
class HCPlotNatrOptions implements HCOption {
  const HCPlotNatrOptions({
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
  final HCPlotNatrDataSortingOptions? dataSorting;

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
  final HCPlotNatrParamsOptions? params;

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
class HCPlotNatrParamsOptions implements HCOption {
  const HCPlotNatrParamsOptions({
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

/// (Highcharts, Highstock) Animation setting for hovering the graph in line-type series.
class HCPlotNatrStatesHoverAnimationOptions implements HCOption {
  const HCPlotNatrStatesHoverAnimationOptions({
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
class HCPlotNatrStatesInactiveAnimationOptions implements HCOption {
  const HCPlotNatrStatesInactiveAnimationOptions({
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
class HCPlotNatrStatesSelectAnimationOptions implements HCOption {
  const HCPlotNatrStatesSelectAnimationOptions({
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
class HCPlotNatrTooltipDateTimeLabelFormatsOptions implements HCOption {
  const HCPlotNatrTooltipDateTimeLabelFormatsOptions({
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
class HCPlotNatrTooltipHeaderOptions implements HCOption {
  const HCPlotNatrTooltipHeaderOptions({
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
class HCPlotNatrTooltipPositionOptions implements HCOption {
  const HCPlotNatrTooltipPositionOptions({
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
class HCPlotNetworkgraphAccessibilityPointOptions implements HCOption {
  const HCPlotNetworkgraphAccessibilityPointOptions({
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
class HCPlotNetworkgraphDataLabelsAnimationOptions implements HCOption {
  const HCPlotNetworkgraphDataLabelsAnimationOptions({
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
class HCPlotNetworkgraphDataLabelsStyleOptions implements HCOption {
  const HCPlotNetworkgraphDataLabelsStyleOptions({
    this.transition,
  });

  final String? transition;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (transition != null) {
      json['transition'] = transition;
    }
    return json;
  }
}

class HCPlotNetworkgraphLayoutAlgorithmOptions implements HCOption {
  const HCPlotNetworkgraphLayoutAlgorithmOptions({
    this.approximation,
    this.attractiveForce,
    this.enableSimulation,
    this.friction,
    this.gravitationalConstant,
    this.initialPositionRadius,
    this.initialPositions,
    this.integration,
    this.linkLength,
    this.maxIterations,
    this.maxSpeed,
    this.repulsiveForce,
    this.theta,
    this.type,
  });

  /// (Highcharts) Approximation used to calculate repulsive forces affecting nodes. By default, when calculating net force, nodes are compared against each other, which gives O(N^2) complexity. Using Barnes-Hut approximation, we decrease this to O(N log N), but the resulting graph will have different lay
  final String? approximation;

  /// (Highcharts) Attraction force applied on a node which is connected to another node by a link. Passed are two arguments:
  final dynamic attractiveForce;

  /// (Highcharts) Experimental. Enables live simulation of the algorithm implementation. All nodes are animated as the forces applies on them.
  final bool? enableSimulation;

  /// (Highcharts) Friction applied on forces to prevent nodes rushing to fast to the desired positions.
  final num? friction;

  /// (Highcharts) Gravitational const used in the barycenter force of the algorithm.
  final num? gravitationalConstant;

  /// (Highcharts) When `initialPositions` are set to 'circle', `initialPositionRadius` is a distance from the center of circle, in which nodes are created.
  final num? initialPositionRadius;

  /// (Highcharts) Initial layout algorithm for positioning nodes. Can be one of built-in options ("circle", "random") or a function where positions should be set on each node (`this.nodes`) as `node.plotX` and `node.plotY`
  final dynamic initialPositions;

  /// (Highcharts) Integration type. Available options are `'euler'` and `'verlet'`. Integration determines how forces are applied on particles. In Euler integration, force is applied direct as `newPosition += velocity;`. In Verlet integration, new position is based on a previous position without velocity
  final String? integration;

  /// (Highcharts) Ideal length (px) of the link between two nodes. When not defined, length is calculated as: `Math.pow(availableWidth * availableHeight / nodesLength, 0.4);`
  final num? linkLength;

  /// (Highcharts) Max number of iterations before algorithm will stop. In general, algorithm should find positions sooner, but when rendering huge number of nodes, it is recommended to increase this value as finding perfect graph positions can require more time.
  final num? maxIterations;

  /// (Highcharts) Verlet integration only. Max speed that node can get in one iteration. In terms of simulation, it's a maximum translation (in pixels) that node can move (in both, x and y, dimensions). While `friction` is applied on all nodes, max speed is applied only for nodes that move very fast, for
  final num? maxSpeed;

  /// (Highcharts) Repulsive force applied on a node. Passed are two arguments:
  final dynamic repulsiveForce;

  /// (Highcharts) Barnes-Hut approximation only. Determines when distance between cell and node is small enough to calculate forces. Value of `theta` is compared directly with quotient `s / d`, where `s` is the size of the cell, and `d` is distance between center of cell's mass and currently compared nod
  final num? theta;

  /// (Highcharts) Type of the algorithm used when positioning nodes.
  final String? type;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (approximation != null) {
      json['approximation'] = approximation;
    }
    if (attractiveForce != null) {
      json['attractiveForce'] = hcJsonValue(attractiveForce);
    }
    if (enableSimulation != null) {
      json['enableSimulation'] = enableSimulation;
    }
    if (friction != null) {
      json['friction'] = friction;
    }
    if (gravitationalConstant != null) {
      json['gravitationalConstant'] = gravitationalConstant;
    }
    if (initialPositionRadius != null) {
      json['initialPositionRadius'] = initialPositionRadius;
    }
    if (initialPositions != null) {
      json['initialPositions'] = hcJsonValue(initialPositions);
    }
    if (integration != null) {
      json['integration'] = integration;
    }
    if (linkLength != null) {
      json['linkLength'] = linkLength;
    }
    if (maxIterations != null) {
      json['maxIterations'] = maxIterations;
    }
    if (maxSpeed != null) {
      json['maxSpeed'] = maxSpeed;
    }
    if (repulsiveForce != null) {
      json['repulsiveForce'] = hcJsonValue(repulsiveForce);
    }
    if (theta != null) {
      json['theta'] = theta;
    }
    if (type != null) {
      json['type'] = type;
    }
    return json;
  }
}

/// (Highcharts) Link style options
class HCPlotNetworkgraphLinkOptions implements HCOption {
  const HCPlotNetworkgraphLinkOptions({
    this.color,
    this.dashStyle,
    this.opacity,
    this.width,
  });

  /// (Highcharts) Color of the link between two nodes.
  final String? color;

  /// (Highcharts) A name for the dash style to use for links.
  final String? dashStyle;

  /// (Highcharts) Opacity of the link between two nodes.
  final num? opacity;

  /// (Highcharts) Width (px) of the link between two nodes.
  final num? width;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (color != null) {
      json['color'] = color;
    }
    if (dashStyle != null) {
      json['dashStyle'] = dashStyle;
    }
    if (opacity != null) {
      json['opacity'] = opacity;
    }
    if (width != null) {
      json['width'] = width;
    }
    return json;
  }
}

/// (Highcharts) Animation when hovering over the marker.
class HCPlotNetworkgraphMarkerStatesHoverAnimationOptions implements HCOption {
  const HCPlotNetworkgraphMarkerStatesHoverAnimationOptions({
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

/// (Highcharts) Options for the connector in the _Series on point_ feature.
class HCPlotNetworkgraphOnPointConnectorOptions implements HCOption {
  const HCPlotNetworkgraphOnPointConnectorOptions({
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
class HCPlotNetworkgraphOnPointOptions implements HCOption {
  const HCPlotNetworkgraphOnPointOptions({
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
class HCPlotNetworkgraphOnPointPositionOptions implements HCOption {
  const HCPlotNetworkgraphOnPointPositionOptions({
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

/// (Highcharts) A networkgraph is a type of relationship chart, where connections (links) attracts nodes (points) and other nodes repulse each other.
class HCPlotNetworkgraphOptions implements HCOption {
  const HCPlotNetworkgraphOptions({
    this.accessibility,
    this.allowPointSelect,
    this.className,
    this.clip,
    this.color,
    this.colorIndex,
    this.crisp,
    this.cursor,
    this.custom,
    this.dashStyle,
    this.dataLabels,
    this.dataMapping,
    this.description,
    this.draggable,
    this.enableMouseTracking,
    this.events,
    this.findNearestPointBy,
    this.gapSize,
    this.gapUnit,
    this.inactiveOtherPoints,
    this.includeInDataExport,
    this.keys,
    this.layoutAlgorithm,
    this.legendSymbol,
    this.legendSymbolColor,
    this.lineWidth,
    this.link,
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
    this.turboThreshold,
    this.visible,
    this.zones,
    this.zoomEnabled,
  });

  /// (Highcharts) Accessibility options for a series.
  final HCSeriesAccessibilityOptionsObject? accessibility;

  /// (Highcharts) Allow this series' points to be selected by clicking on the graphic (columns, point markers, pie slices, map areas etc).
  final bool? allowPointSelect;

  /// (Highcharts) An additional class name to apply to the series' graphical elements. This option does not replace default class names of the graphical element. Changes to the series' color will also be reflected in a chart's legend and tooltip.
  final String? className;

  /// (Highcharts) Disable this option to allow series rendering in the whole plotting area.
  final bool? clip;

  /// (Highcharts) The main color of the series. In line type series it applies to the line and the point markers unless otherwise specified. In bar type series it applies to the bars unless a color is specified per point. The default value is pulled from the `options.colors` array.
  final dynamic color;

  /// (Highcharts) Styled mode only. A specific color index to use for the series, so its graphic representations are given the class name `highcharts-color-{n}`.
  final num? colorIndex;

  /// (Highcharts, Highstock, Gantt) When true, each point or column edge is rounded to its nearest pixel in order to render sharp on screen. In some cases, when there are a lot of densely packed columns, this leads to visible difference in column widths or distance between columns. In these cases, settin
  final bool? crisp;

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

  /// (Highcharts) Deprecated. Use plotOptions.series.accessibility.description instead.
  final String? description;

  /// (Highcharts) Flag to determine if nodes are draggable or not.
  final bool? draggable;

  /// (Highcharts) Enable or disable the mouse tracking for a specific series. This includes point tooltips and click events on graphs and points. For large datasets it improves performance.
  final bool? enableMouseTracking;

  /// (Highcharts) General event handlers for the series items. These event hooks can also be attached to the series at run time using the `Highcharts.addEvent` function.
  final HCSeriesEventsOptionsObject? events;

  /// (Highcharts) Determines whether the series should look for the nearest point in both dimensions or just the x-dimension when hovering the series. Defaults to `'xy'` for scatter series and `'x'` for most other series. If the data has duplicate x-values, it is recommended to set this to `'xy'` to allo
  final String? findNearestPointBy;

  /// (Highcharts, Highstock) Defines when to display a gap in the graph, together with the gapUnit option.
  final num? gapSize;

  /// (Highcharts, Highstock) Together with gapSize, this option defines where to draw gaps in the graph.
  final String? gapUnit;

  /// (Highcharts) Highlight only the hovered point and fade the remaining points.
  final bool? inactiveOtherPoints;

  /// (Highcharts) When set to `false` will prevent the series data from being included in any form of data export.
  final bool? includeInDataExport;

  /// (Highcharts) An array specifying which option maps to which key in the data point array. This makes it convenient to work with unstructured data arrays from different sources.
  final List<String>? keys;

  final HCPlotNetworkgraphLayoutAlgorithmOptions? layoutAlgorithm;

  /// (Highcharts) What type of legend symbol to render for this series. Can be one of `areaMarker`, `lineMarker` or `rectangle`.
  final String? legendSymbol;

  /// (Highcharts, Highstock, Highmaps) Defines the color of the legend symbol for this series. Defaults to undefined, in which case the series color is used. Does not work with styled mode.
  final dynamic legendSymbolColor;

  /// (Highcharts, Highstock) Pixel width of the graph line.
  final num? lineWidth;

  /// (Highcharts) Link style options
  final HCPlotNetworkgraphLinkOptions? link;

  /// (Highcharts, Highstock, Gantt) The id of another series to link to. Additionally, the value can be ":previous" to link to the previous series. When two series are linked, only the first one appears in the legend. Toggling the visibility of this also toggles the linked series.
  final String? linkedTo;

  /// (Highcharts) Options for the point markers of line and scatter-like series. Properties like `fillColor`, `lineColor` and `lineWidth` define the visual appearance of the markers. The `symbol` option defines the shape. Other series types, like column series, don't have markers, but have visual options
  final HCPointMarkerOptionsObject? marker;

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

  /// (Highcharts) Sonification/audio chart options for a series.
  final HCSeriesSonificationOptions? sonification;

  /// (Highcharts) A collection of options for different series states.
  final HCSeriesStatesOptionsObject? states;

  /// (Highcharts) Sticky tracking of mouse events. When true, the `mouseOut` event on a series isn't triggered until the mouse moves over another series, or out of the plot area. When false, the `mouseOut` event on a series is triggered when the mouse leaves the area around the series' graph or markers.
  final bool? stickyTracking;

  /// (Highcharts) A configuration object for the tooltip rendering of each single series. Properties are inherited from tooltip, but only the following properties can be defined on a series level.
  final HCSeriesTooltipOptionsObject? tooltip;

  /// (Highcharts, Highstock, Gantt) When a series contains a `data` array that is longer than this, the Series class looks for data configurations of plain numbers or arrays of numbers. The first and last valid points are checked. If found, the rest of the data is assumed to be the same. This saves expen
  final num? turboThreshold;

  /// (Highcharts) Set the initial visibility of the series.
  final bool? visible;

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
    if (crisp != null) {
      json['crisp'] = crisp;
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
    if (description != null) {
      json['description'] = description;
    }
    if (draggable != null) {
      json['draggable'] = draggable;
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
    if (inactiveOtherPoints != null) {
      json['inactiveOtherPoints'] = inactiveOtherPoints;
    }
    if (includeInDataExport != null) {
      json['includeInDataExport'] = includeInDataExport;
    }
    if (keys != null) {
      json['keys'] = keys;
    }
    if (layoutAlgorithm != null) {
      json['layoutAlgorithm'] = layoutAlgorithm!.toJson();
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
    if (link != null) {
      json['link'] = link!.toJson();
    }
    if (linkedTo != null) {
      json['linkedTo'] = linkedTo;
    }
    if (marker != null) {
      json['marker'] = marker!.toJson();
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
    if (sonification != null) {
      json['sonification'] = sonification!.toJson();
    }
    if (states != null) {
      json['states'] = states!.toJson();
    }
    if (stickyTracking != null) {
      json['stickyTracking'] = stickyTracking;
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
class HCPlotNetworkgraphStatesHoverAnimationOptions implements HCOption {
  const HCPlotNetworkgraphStatesHoverAnimationOptions({
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

/// (Highcharts) Animation when not hovering over the node.
class HCPlotNetworkgraphStatesInactiveAnimationOptions implements HCOption {
  const HCPlotNetworkgraphStatesInactiveAnimationOptions({
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
class HCPlotNetworkgraphStatesSelectAnimationOptions implements HCOption {
  const HCPlotNetworkgraphStatesSelectAnimationOptions({
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
class HCPlotNetworkgraphTooltipDateTimeLabelFormatsOptions implements HCOption {
  const HCPlotNetworkgraphTooltipDateTimeLabelFormatsOptions({
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
class HCPlotNetworkgraphTooltipHeaderOptions implements HCOption {
  const HCPlotNetworkgraphTooltipHeaderOptions({
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
class HCPlotNetworkgraphTooltipPositionOptions implements HCOption {
  const HCPlotNetworkgraphTooltipPositionOptions({
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
class HCPlotObvAccessibilityPointOptions implements HCOption {
  const HCPlotObvAccessibilityPointOptions({
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
class HCPlotObvDataLabelsAnimationOptions implements HCOption {
  const HCPlotObvDataLabelsAnimationOptions({
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
class HCPlotObvDataLabelsOptions implements HCOption {
  const HCPlotObvDataLabelsOptions({
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
class HCPlotObvDataSortingOptions implements HCOption {
  const HCPlotObvDataSortingOptions({
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
class HCPlotObvLabelStyleOptions implements HCOption {
  const HCPlotObvLabelStyleOptions({
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
class HCPlotObvMarkerStatesHoverAnimationOptions implements HCOption {
  const HCPlotObvMarkerStatesHoverAnimationOptions({
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
class HCPlotObvOnPointConnectorOptions implements HCOption {
  const HCPlotObvOnPointConnectorOptions({
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
class HCPlotObvOnPointOptions implements HCOption {
  const HCPlotObvOnPointOptions({
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
class HCPlotObvOnPointPositionOptions implements HCOption {
  const HCPlotObvOnPointPositionOptions({
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

/// (Highstock) On-Balance Volume (OBV) technical indicator. This series requires the `linkedTo` option to be set and should be loaded after the `stock/indicators/indicators.js` file. Through the `volumeSeriesID` there also should be linked the volume series.
class HCPlotObvOptions implements HCOption {
  const HCPlotObvOptions({
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
  final HCPlotObvDataSortingOptions? dataSorting;

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
  final HCPlotObvParamsOptions? params;

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
class HCPlotObvParamsOptions implements HCOption {
  const HCPlotObvParamsOptions({
    this.index,
    this.period,
    this.volumeSeriesID,
  });

  final String? index;

  final String? period;

  /// (Highstock) The id of another series to use its data as volume data for the indicator calculation.
  final String? volumeSeriesID;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (index != null) {
      json['index'] = index;
    }
    if (period != null) {
      json['period'] = period;
    }
    if (volumeSeriesID != null) {
      json['volumeSeriesID'] = volumeSeriesID;
    }
    return json;
  }
}

/// (Highcharts, Highstock) Animation setting for hovering the graph in line-type series.
class HCPlotObvStatesHoverAnimationOptions implements HCOption {
  const HCPlotObvStatesHoverAnimationOptions({
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
class HCPlotObvStatesInactiveAnimationOptions implements HCOption {
  const HCPlotObvStatesInactiveAnimationOptions({
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
class HCPlotObvStatesSelectAnimationOptions implements HCOption {
  const HCPlotObvStatesSelectAnimationOptions({
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
class HCPlotObvTooltipDateTimeLabelFormatsOptions implements HCOption {
  const HCPlotObvTooltipDateTimeLabelFormatsOptions({
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
