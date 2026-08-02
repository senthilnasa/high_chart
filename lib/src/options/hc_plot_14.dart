part of 'hc_options.dart';

/// (Highstock) Animation when not hovering over the marker.
class HCPlotPriceenvelopesStatesInactiveAnimationOptions implements HCOption {
  const HCPlotPriceenvelopesStatesInactiveAnimationOptions({
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
class HCPlotPriceenvelopesStatesSelectAnimationOptions implements HCOption {
  const HCPlotPriceenvelopesStatesSelectAnimationOptions({
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
class HCPlotPriceenvelopesTooltipDateTimeLabelFormatsOptions
    implements HCOption {
  const HCPlotPriceenvelopesTooltipDateTimeLabelFormatsOptions({
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
class HCPlotPriceenvelopesTooltipHeaderOptions implements HCOption {
  const HCPlotPriceenvelopesTooltipHeaderOptions({
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
class HCPlotPriceenvelopesTooltipPositionOptions implements HCOption {
  const HCPlotPriceenvelopesTooltipPositionOptions({
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

/// (Highstock) Top line options.
class HCPlotPriceenvelopesTopLineOptions implements HCOption {
  const HCPlotPriceenvelopesTopLineOptions({
    this.styles,
  });

  final HCPlotPriceenvelopesTopLineStylesOptions? styles;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (styles != null) {
      json['styles'] = styles!.toJson();
    }
    return json;
  }
}

class HCPlotPriceenvelopesTopLineStylesOptions implements HCOption {
  const HCPlotPriceenvelopesTopLineStylesOptions({
    this.lineColor,
    this.lineWidth,
  });

  /// (Highstock) Color of the line. If not set, it's inherited from plotOptions.priceenvelopes.color.
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

/// (Highstock) Point accessibility options for a series.
class HCPlotPsarAccessibilityPointOptions implements HCOption {
  const HCPlotPsarAccessibilityPointOptions({
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
class HCPlotPsarDataLabelsAnimationOptions implements HCOption {
  const HCPlotPsarDataLabelsAnimationOptions({
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
class HCPlotPsarDataLabelsOptions implements HCOption {
  const HCPlotPsarDataLabelsOptions({
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
class HCPlotPsarDataSortingOptions implements HCOption {
  const HCPlotPsarDataSortingOptions({
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
class HCPlotPsarLabelStyleOptions implements HCOption {
  const HCPlotPsarLabelStyleOptions({
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
class HCPlotPsarMarkerStatesHoverAnimationOptions implements HCOption {
  const HCPlotPsarMarkerStatesHoverAnimationOptions({
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
class HCPlotPsarOnPointConnectorOptions implements HCOption {
  const HCPlotPsarOnPointConnectorOptions({
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
class HCPlotPsarOnPointOptions implements HCOption {
  const HCPlotPsarOnPointOptions({
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
class HCPlotPsarOnPointPositionOptions implements HCOption {
  const HCPlotPsarOnPointPositionOptions({
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

/// (Highstock) Parabolic SAR. This series requires `linkedTo` option to be set and should be loaded after `stock/indicators/indicators.js` file.
class HCPlotPsarOptions implements HCOption {
  const HCPlotPsarOptions({
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
  final HCPlotPsarDataSortingOptions? dataSorting;

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
  final HCPlotPsarParamsOptions? params;

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
class HCPlotPsarParamsOptions implements HCOption {
  const HCPlotPsarParamsOptions({
    this.decimals,
    this.increment,
    this.index,
    this.initialAccelerationFactor,
    this.maxAccelerationFactor,
    this.period,
  });

  /// (Highstock) Number of maximum decimals that are used in PSAR calculations.
  final num? decimals;

  /// (Highstock) Acceleration factor increases by increment each time the extreme point makes a new high.
  final num? increment;

  /// (Highstock) Index from which PSAR is starting calculation
  final num? index;

  /// (Highstock) The initial value for acceleration factor. Acceleration factor is starting with this value and increases by specified increment each time the extreme point makes a new high. AF can reach a maximum of maxAccelerationFactor, no matter how long the uptrend extends.
  final num? initialAccelerationFactor;

  /// (Highstock) The Maximum value for acceleration factor. AF can reach a maximum of maxAccelerationFactor, no matter how long the uptrend extends.
  final num? maxAccelerationFactor;

  final String? period;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (decimals != null) {
      json['decimals'] = decimals;
    }
    if (increment != null) {
      json['increment'] = increment;
    }
    if (index != null) {
      json['index'] = index;
    }
    if (initialAccelerationFactor != null) {
      json['initialAccelerationFactor'] = initialAccelerationFactor;
    }
    if (maxAccelerationFactor != null) {
      json['maxAccelerationFactor'] = maxAccelerationFactor;
    }
    if (period != null) {
      json['period'] = period;
    }
    return json;
  }
}

/// (Highcharts, Highstock) Animation setting for hovering the graph in line-type series.
class HCPlotPsarStatesHoverAnimationOptions implements HCOption {
  const HCPlotPsarStatesHoverAnimationOptions({
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
class HCPlotPsarStatesInactiveAnimationOptions implements HCOption {
  const HCPlotPsarStatesInactiveAnimationOptions({
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
class HCPlotPsarStatesSelectAnimationOptions implements HCOption {
  const HCPlotPsarStatesSelectAnimationOptions({
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
class HCPlotPsarTooltipDateTimeLabelFormatsOptions implements HCOption {
  const HCPlotPsarTooltipDateTimeLabelFormatsOptions({
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
class HCPlotPsarTooltipHeaderOptions implements HCOption {
  const HCPlotPsarTooltipHeaderOptions({
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
class HCPlotPsarTooltipPositionOptions implements HCOption {
  const HCPlotPsarTooltipPositionOptions({
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
class HCPlotPyramid3dAccessibilityPointOptions implements HCOption {
  const HCPlotPyramid3dAccessibilityPointOptions({
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
class HCPlotPyramid3dDataLabelsAnimationOptions implements HCOption {
  const HCPlotPyramid3dDataLabelsAnimationOptions({
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
class HCPlotPyramid3dDataLabelsOptions implements HCOption {
  const HCPlotPyramid3dDataLabelsOptions({
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

/// (Highcharts, Highstock, Gantt) Styles for the series label. The color defaults to the series color, or a contrast color if `onArea`.
class HCPlotPyramid3dLabelStyleOptions implements HCOption {
  const HCPlotPyramid3dLabelStyleOptions({
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
class HCPlotPyramid3dOnPointConnectorOptions implements HCOption {
  const HCPlotPyramid3dOnPointConnectorOptions({
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
class HCPlotPyramid3dOnPointOptions implements HCOption {
  const HCPlotPyramid3dOnPointOptions({
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
class HCPlotPyramid3dOnPointPositionOptions implements HCOption {
  const HCPlotPyramid3dOnPointPositionOptions({
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

/// (Highcharts) A pyramid3d is a 3d version of pyramid series type. Pyramid charts are a type of chart often used to visualize stages in a sales project, where the top are the initial stages with the most clients.
class HCPlotPyramid3dOptions implements HCOption {
  const HCPlotPyramid3dOptions({
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
    this.colorKey,
    this.colors,
    this.crisp,
    this.cropThreshold,
    this.cursor,
    this.custom,
    this.dashStyle,
    this.dataLabels,
    this.dataMapping,
    this.depth,
    this.description,
    this.dragDrop,
    this.edgeColor,
    this.edgeWidth,
    this.enableMouseTracking,
    this.events,
    this.findNearestPointBy,
    this.getExtremesFromAll,
    this.gradientForSides,
    this.grouping,
    this.groupPadding,
    this.groupZPadding,
    this.height,
    this.inactiveOtherPoints,
    this.includeInDataExport,
    this.keys,
    this.label,
    this.legendSymbol,
    this.linkedTo,
    this.maxPointWidth,
    this.minPointLength,
    this.neckHeight,
    this.neckWidth,
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
    this.reversed,
    this.selected,
    this.shadow,
    this.showCheckbox,
    this.showInLegend,
    this.skipKeyboardNavigation,
    this.softThreshold,
    this.sonification,
    this.stacking,
    this.states,
    this.stickyTracking,
    this.threshold,
    this.tooltip,
    this.turboThreshold,
    this.visible,
    this.width,
    this.zoneAxis,
    this.zones,
    this.zoomEnabled,
  });

  /// (Highcharts) Accessibility options for a series.
  final HCSeriesAccessibilityOptionsObject? accessibility;

  /// (Highcharts) Allow this series' points to be selected by clicking on the graphic (columns, point markers, pie slices, map areas etc).
  final bool? allowPointSelect;

  /// (Highcharts) Enable or disable the initial animation when a series is displayed. The animation can also be set as a configuration object. Please note that this option only applies to the initial animation of the series itself. For other animations, see chart.animation and the animation parameter und
  final bool? animation;

  /// (Highcharts) For some series, there is a limit that shuts down animation by default when the total number of points in the chart is too high. For example, for a column chart and its derivatives, animation does not run if there is more than 250 points totally. To disable this cap, set `animationLimit
  final num? animationLimit;

  /// (Highcharts, Highstock, Gantt) The color of the border surrounding each column or bar.
  final dynamic borderColor;

  /// (Highcharts, Highstock, Gantt) The corner radius of the border surrounding each column or bar. A number signifies pixels. A percentage string, like for example `50%`, signifies a relative size. For columns this is relative to the column width, for pies it is relative to the radius and the inner radi
  final dynamic borderRadius;

  /// (Highcharts, Highstock, Gantt) The width of the border surrounding each column or bar. Defaults to `1` when there is room for a border, but to `0` when the columns are so dense that a border would cover the next column.
  final num? borderWidth;

  /// (Highcharts, Highstock, Gantt) When `true`, the columns will center in the category, ignoring null or missing points. When `false`, space will be reserved for null or missing points.
  final bool? centerInCategory;

  /// (Highcharts) An additional class name to apply to the series' graphical elements. This option does not replace default class names of the graphical element. Changes to the series' color will also be reflected in a chart's legend and tooltip.
  final String? className;

  /// (Highcharts) Disable this option to allow series rendering in the whole plotting area.
  final bool? clip;

  /// (Highcharts) The main color of the series. In line type series it applies to the line and the point markers unless otherwise specified. In bar type series it applies to the bars unless a color is specified per point. The default value is pulled from the `options.colors` array.
  final dynamic color;

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

  /// (Highcharts) Determines whether the series should look for the nearest point in both dimensions or just the x-dimension when hovering the series. Defaults to `'xy'` for scatter series and `'x'` for most other series. If the data has duplicate x-values, it is recommended to set this to `'xy'` to allo
  final String? findNearestPointBy;

  /// (Highcharts, Highstock, Gantt) Whether to use the Y extremes of the total chart width or only the zoomed area when zooming in on parts of the X axis. By default, the Y axis adjusts to the min and max of the visible data. Cartesian series only.
  final bool? getExtremesFromAll;

  /// (Highcharts) By default sides fill is set to a gradient through this option being set to `true`. Set to `false` to get solid color for the sides.
  final bool? gradientForSides;

  /// (Highcharts, Highstock, Gantt) Whether to group non-stacked columns or to let them render independent of each other. Non-grouped columns will be laid out individually and overlap each other.
  final bool? grouping;

  /// (Highcharts, Highstock, Gantt) Padding between each value groups, in x axis units.
  final num? groupPadding;

  /// (Highcharts) The spacing between columns on the Z Axis in a 3D chart.
  final num? groupZPadding;

  /// (Highcharts) The height of the series. If it is a number it defines the pixel height, if it is a percentage string it is the percentage of the plot area height.
  final dynamic height;

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

  /// (Highcharts, Highstock, Gantt) The id of another series to link to. Additionally, the value can be ":previous" to link to the previous series. When two series are linked, only the first one appears in the legend. Toggling the visibility of this also toggles the linked series.
  final String? linkedTo;

  /// (Highcharts, Highstock, Gantt) The maximum allowed pixel width for a column, translated to the height of a bar in a bar chart. This prevents the columns from becoming too wide when there is a small number of points in the chart.
  final num? maxPointWidth;

  /// (Highcharts, Highstock, Gantt) The minimal height for a column or width for a bar. By default, 0 values are not shown. To visualize a 0 (or close to zero) point, set the minimal point length to a pixel value like 3\. In stacked column charts, minPointLength might not be respected for tightly packed
  final num? minPointLength;

  final num? neckHeight;

  final num? neckWidth;

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

  /// (Highcharts) A reversed pyramid3d is funnel3d, but the latter supports neck related options: neckHeight and neckWidth
  final bool? reversed;

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

  /// (Highcharts) A collection of options for different series states.
  final HCSeriesStatesOptionsObject? states;

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

  /// (Highcharts) The max width of the series compared to the width of the plot area, or the pixel width if it is a number.
  final dynamic width;

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
      json['animation'] = animation;
    }
    if (animationLimit != null) {
      json['animationLimit'] = animationLimit;
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
    if (findNearestPointBy != null) {
      json['findNearestPointBy'] = findNearestPointBy;
    }
    if (getExtremesFromAll != null) {
      json['getExtremesFromAll'] = getExtremesFromAll;
    }
    if (gradientForSides != null) {
      json['gradientForSides'] = gradientForSides;
    }
    if (grouping != null) {
      json['grouping'] = grouping;
    }
    if (groupPadding != null) {
      json['groupPadding'] = groupPadding;
    }
    if (groupZPadding != null) {
      json['groupZPadding'] = groupZPadding;
    }
    if (height != null) {
      json['height'] = hcJsonValue(height);
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
    if (linkedTo != null) {
      json['linkedTo'] = linkedTo;
    }
    if (maxPointWidth != null) {
      json['maxPointWidth'] = maxPointWidth;
    }
    if (minPointLength != null) {
      json['minPointLength'] = minPointLength;
    }
    if (neckHeight != null) {
      json['neckHeight'] = neckHeight;
    }
    if (neckWidth != null) {
      json['neckWidth'] = neckWidth;
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
    if (reversed != null) {
      json['reversed'] = reversed;
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
    if (visible != null) {
      json['visible'] = visible;
    }
    if (width != null) {
      json['width'] = hcJsonValue(width);
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
class HCPlotPyramid3dStatesHoverAnimationOptions implements HCOption {
  const HCPlotPyramid3dStatesHoverAnimationOptions({
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
class HCPlotPyramid3dStatesInactiveAnimationOptions implements HCOption {
  const HCPlotPyramid3dStatesInactiveAnimationOptions({
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
class HCPlotPyramid3dStatesSelectAnimationOptions implements HCOption {
  const HCPlotPyramid3dStatesSelectAnimationOptions({
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
class HCPlotPyramid3dTooltipDateTimeLabelFormatsOptions implements HCOption {
  const HCPlotPyramid3dTooltipDateTimeLabelFormatsOptions({
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
class HCPlotPyramid3dTooltipHeaderOptions implements HCOption {
  const HCPlotPyramid3dTooltipHeaderOptions({
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
class HCPlotPyramid3dTooltipPositionOptions implements HCOption {
  const HCPlotPyramid3dTooltipPositionOptions({
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

/// (Highcharts) Point accessibility options for a series.
class HCPlotPyramidAccessibilityPointOptions implements HCOption {
  const HCPlotPyramidAccessibilityPointOptions({
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
class HCPlotPyramidDataLabelsAnimationOptions implements HCOption {
  const HCPlotPyramidDataLabelsAnimationOptions({
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

/// (Highcharts) Options for the connector in the _Series on point_ feature.
class HCPlotPyramidOnPointConnectorOptions implements HCOption {
  const HCPlotPyramidOnPointConnectorOptions({
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
class HCPlotPyramidOnPointOptions implements HCOption {
  const HCPlotPyramidOnPointOptions({
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
class HCPlotPyramidOnPointPositionOptions implements HCOption {
  const HCPlotPyramidOnPointPositionOptions({
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

/// (Highcharts) A pyramid series is a special type of funnel, without neck and reversed by default.
class HCPlotPyramidOptions implements HCOption {
  const HCPlotPyramidOptions({
    this.accessibility,
    this.allowPointSelect,
    this.animation,
    this.borderColor,
    this.borderRadius,
    this.borderWidth,
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
    this.depth,
    this.description,
    this.enableMouseTracking,
    this.endAngle,
    this.events,
    this.fillColor,
    this.gapSize,
    this.gapUnit,
    this.height,
    this.ignoreHiddenPoint,
    this.inactiveOtherPoints,
    this.includeInDataExport,
    this.keys,
    this.legendSymbol,
    this.legendSymbolColor,
    this.linecap,
    this.minSize,
    this.neckHeight,
    this.neckWidth,
    this.nullInteraction,
    this.onPoint,
    this.opacity,
    this.point,
    this.pointDescriptionFormat,
    this.pointDescriptionFormatter,
    this.relativeXValue,
    this.reversed,
    this.selected,
    this.shadow,
    this.showCheckbox,
    this.showInLegend,
    this.skipKeyboardNavigation,
    this.slicedOffset,
    this.sonification,
    this.startAngle,
    this.states,
    this.stickyTracking,
    this.thickness,
    this.tooltip,
    this.visible,
    this.width,
    this.zoomEnabled,
  });

  /// (Highcharts) Accessibility options for a series.
  final HCSeriesAccessibilityOptionsObject? accessibility;

  /// (Highcharts) Allow this series' points to be selected by clicking on the graphic (columns, point markers, pie slices, map areas etc).
  final bool? allowPointSelect;

  /// (Highcharts) Initial animation is by default disabled for the funnel chart.
  final bool? animation;

  /// (Highcharts, Highmaps) The color of the border surrounding each slice. When `null`, the border takes the same color as the slice fill. This can be used together with a `borderWidth` to fill drawing gaps created by antialiasing artifacts in border-less pies.
  final dynamic borderColor;

  /// (Highcharts) The corner radius of the border surrounding all points or series. A number signifies pixels. A percentage string, like for example `50%`, signifies a size relative to the series width.
  final num? borderRadius;

  /// (Highcharts, Highmaps) The width of the border surrounding each slice.
  final num? borderWidth;

  /// (Highcharts, Highmaps) The center of the series. By default, it is centered in the middle of the plot area, so it fills the plot area height.
  final List<dynamic>? center;

  /// (Highcharts) An additional class name to apply to the series' graphical elements. This option does not replace default class names of the graphical element. Changes to the series' color will also be reflected in a chart's legend and tooltip.
  final String? className;

  /// (Highcharts) Disable this option to allow series rendering in the whole plotting area.
  final bool? clip;

  /// (Highcharts) The color of the pie series. A pie series is represented as an empty circle if the total sum of its values is 0. Use this property to define the color of its border.
  final dynamic color;

  /// (Highcharts, Highstock, Highmaps) When using dual or multiple color axes, this number defines which colorAxis the particular series is connected to. It refers to either the axis id or the index of the axis in the colorAxis array, with 0 being the first. Set this option to false to prevent a series f
  final dynamic colorAxis;

  /// (Highcharts) Styled mode only. A specific color index to use for the series, so its graphic representations are given the class name `highcharts-color-{n}`.
  final num? colorIndex;

  /// (Highcharts, Highstock, Highmaps) Determines what data value should be used to calculate point color if `colorAxis` is used. Requires to set `min` and `max` if some custom point property is used or if approximation for data grouping is set to `'sum'`.
  final String? colorKey;

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

  /// (Highcharts) The thickness of a 3D pie.
  final num? depth;

  /// (Highcharts) Deprecated. Use plotOptions.series.accessibility.description instead.
  final String? description;

  /// (Highcharts) Enable or disable the mouse tracking for a specific series. This includes point tooltips and click events on graphs and points. For large datasets it improves performance.
  final bool? enableMouseTracking;

  /// (Highcharts, Highmaps) The end angle of the pie in degrees where 0 is top and 90 is right. Defaults to `startAngle` plus 360.
  final num? endAngle;

  /// (Highcharts) General event handlers for the series items. These event hooks can also be attached to the series at run time using the `Highcharts.addEvent` function.
  final HCSeriesEventsOptionsObject? events;

  /// (Highcharts) If the total sum of the pie's values is 0, the series is represented as an empty circle . The `fillColor` option defines the color of that circle. Use pie.borderWidth to set the border thickness.
  final dynamic fillColor;

  /// (Highcharts, Highstock) Defines when to display a gap in the graph, together with the gapUnit option.
  final num? gapSize;

  /// (Highcharts, Highstock) Together with gapSize, this option defines where to draw gaps in the graph.
  final String? gapUnit;

  /// (Highcharts) The height of the funnel or pyramid. If it is a number it defines the pixel height, if it is a percentage string it is the percentage of the plot area height.
  final dynamic height;

  /// (Highcharts, Highmaps) Equivalent to chart.ignoreHiddenSeries, this option tells whether the series shall be redrawn as if the hidden point were `null`.
  final bool? ignoreHiddenPoint;

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

  /// (Highcharts) The line cap used for line ends and line joins on the graph.
  final String? linecap;

  /// (Highcharts, Highmaps) The minimum size for a pie in response to auto margins. The pie will try to shrink to make room for data labels in side the plot area, but only to this size.
  final dynamic minSize;

  /// (Highcharts) The height of the neck, the lower part of the funnel. A number defines pixel width, a percentage string defines a percentage of the plot area height.
  final dynamic neckHeight;

  /// (Highcharts) The width of the neck, the lower part of the funnel. A number defines pixel width, a percentage string defines a percentage of the plot area width.
  final dynamic neckWidth;

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

  /// (Highcharts) A reversed funnel has the widest area down. A reversed funnel with no neck width and neck height is a pyramid.
  final bool? reversed;

  /// (Highcharts) Whether to select the series initially. If `showCheckbox` is true, the checkbox next to the series name in the legend will be checked for a selected series.
  final bool? selected;

  /// (Highcharts) Whether to apply a drop shadow to the graph line. Since 2.3 the shadow can be an object configuration containing `color`, `offsetX`, `offsetY`, `opacity` and `width`.
  final dynamic shadow;

  /// (Highcharts) If true, a checkbox is displayed next to the legend item to allow selecting the series. The state of the checkbox is determined by the `selected` option.
  final bool? showCheckbox;

  /// (Highcharts, Highmaps) Whether to display this particular series or series type in the legend. Since 2.1, pies are not shown in the legend by default.
  final bool? showInLegend;

  /// (Highcharts) Deprecated. Use series.accessibility.keyboardNavigation instead.
  final bool? skipKeyboardNavigation;

  /// (Highcharts, Highmaps) If a point is sliced, moved out from the center, how many pixels should it be moved?.
  final num? slicedOffset;

  /// (Highcharts) Sonification/audio chart options for a series.
  final HCSeriesSonificationOptions? sonification;

  /// (Highcharts, Highmaps) The start angle of the pie slices in degrees where 0 is top and 90 right.
  final num? startAngle;

  /// (Highcharts) Options for the series states.
  final HCSeriesStatesOptionsObject? states;

  /// (Highcharts, Highmaps) Sticky tracking of mouse events. When true, the `mouseOut` event on a series isn't triggered until the mouse moves over another series, or out of the plot area. When false, the `mouseOut` event on a series is triggered when the mouse leaves the area around the series' graph or
  final bool? stickyTracking;

  /// (Highcharts) Thickness describing the ring size for a donut type chart, overriding innerSize.
  final num? thickness;

  /// (Highcharts) A configuration object for the tooltip rendering of each single series. Properties are inherited from tooltip, but only the following properties can be defined on a series level.
  final HCSeriesTooltipOptionsObject? tooltip;

  /// (Highcharts) Set the initial visibility of the series.
  final bool? visible;

  /// (Highcharts) The width of the funnel compared to the width of the plot area, or the pixel width if it is a number.
  final dynamic width;

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
      json['animation'] = animation;
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
    if (colorAxis != null) {
      json['colorAxis'] = hcJsonValue(colorAxis);
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
    if (depth != null) {
      json['depth'] = depth;
    }
    if (description != null) {
      json['description'] = description;
    }
    if (enableMouseTracking != null) {
      json['enableMouseTracking'] = enableMouseTracking;
    }
    if (endAngle != null) {
      json['endAngle'] = endAngle;
    }
    if (events != null) {
      json['events'] = events!.toJson();
    }
    if (fillColor != null) {
      json['fillColor'] = hcJsonValue(fillColor);
    }
    if (gapSize != null) {
      json['gapSize'] = gapSize;
    }
    if (gapUnit != null) {
      json['gapUnit'] = gapUnit;
    }
    if (height != null) {
      json['height'] = hcJsonValue(height);
    }
    if (ignoreHiddenPoint != null) {
      json['ignoreHiddenPoint'] = ignoreHiddenPoint;
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
    if (linecap != null) {
      json['linecap'] = linecap;
    }
    if (minSize != null) {
      json['minSize'] = hcJsonValue(minSize);
    }
    if (neckHeight != null) {
      json['neckHeight'] = hcJsonValue(neckHeight);
    }
    if (neckWidth != null) {
      json['neckWidth'] = hcJsonValue(neckWidth);
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
    if (reversed != null) {
      json['reversed'] = reversed;
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
    if (visible != null) {
      json['visible'] = visible;
    }
    if (width != null) {
      json['width'] = hcJsonValue(width);
    }
    if (zoomEnabled != null) {
      json['zoomEnabled'] = zoomEnabled;
    }
    return json;
  }
}

/// (Highcharts, Highstock) Animation setting for hovering the graph in line-type series.
class HCPlotPyramidStatesHoverAnimationOptions implements HCOption {
  const HCPlotPyramidStatesHoverAnimationOptions({
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
class HCPlotPyramidStatesInactiveAnimationOptions implements HCOption {
  const HCPlotPyramidStatesInactiveAnimationOptions({
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
class HCPlotPyramidStatesSelectAnimationOptions implements HCOption {
  const HCPlotPyramidStatesSelectAnimationOptions({
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
class HCPlotPyramidTooltipDateTimeLabelFormatsOptions implements HCOption {
  const HCPlotPyramidTooltipDateTimeLabelFormatsOptions({
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
class HCPlotPyramidTooltipHeaderOptions implements HCOption {
  const HCPlotPyramidTooltipHeaderOptions({
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
class HCPlotPyramidTooltipPositionOptions implements HCOption {
  const HCPlotPyramidTooltipPositionOptions({
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
class HCPlotRenkoAccessibilityPointOptions implements HCOption {
  const HCPlotRenkoAccessibilityPointOptions({
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

/// (Highcharts, Highstock, Gantt) The corner radius of the border surrounding each column or bar. A number signifies pixels. A percentage string, like for example `50%`, signifies a relative size. For columns this is relative to the column width, for pies it is relative to the radius and the inner radi
class HCPlotRenkoBorderRadiusOptions implements HCOption {
  const HCPlotRenkoBorderRadiusOptions({
    this.where,
  });

  final String? where;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (where != null) {
      json['where'] = where;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Enable or disable the initial animation when a series is displayed for the `dataLabels`. The animation can also be set as a configuration object. Please note that this option only applies to the initial animation.
class HCPlotRenkoDataLabelsAnimationOptions implements HCOption {
  const HCPlotRenkoDataLabelsAnimationOptions({
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
class HCPlotRenkoDataLabelsOptions implements HCOption {
  const HCPlotRenkoDataLabelsOptions({
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

/// (Highcharts, Highstock, Gantt) Styles for the series label. The color defaults to the series color, or a contrast color if `onArea`.
class HCPlotRenkoLabelStyleOptions implements HCOption {
  const HCPlotRenkoLabelStyleOptions({
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

/// (Highstock) Options for the corresponding navigator series if `showInNavigator` is `true` for this series. Available options are the same as any series, documented at plotOptions and series.
class HCPlotRenkoNavigatorOptions implements HCOption {
  const HCPlotRenkoNavigatorOptions({
    this.type,
  });

  final String? type;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (type != null) {
      json['type'] = type;
    }
    return json;
  }
}

/// (Highstock) Options for the connector in the _Series on point_ feature.
class HCPlotRenkoOnPointConnectorOptions implements HCOption {
  const HCPlotRenkoOnPointConnectorOptions({
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
class HCPlotRenkoOnPointOptions implements HCOption {
  const HCPlotRenkoOnPointOptions({
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
class HCPlotRenkoOnPointPositionOptions implements HCOption {
  const HCPlotRenkoOnPointPositionOptions({
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

/// (Highstock) A Renko series is a style of financial chart used to describe price movements over time. It displays open, high, low and close values per data point.
class HCPlotRenkoOptions implements HCOption {
  const HCPlotRenkoOptions({
    this.accessibility,
    this.allowPointSelect,
    this.animation,
    this.animationLimit,
    this.borderColor,
    this.borderRadius,
    this.borderWidth,
    this.boxSize,
    this.className,
    this.color,
    this.colorAxis,
    this.colorIndex,
    this.colorKey,
    this.colors,
    this.crisp,
    this.cropThreshold,
    this.cursor,
    this.custom,
    this.dataLabels,
    this.dataMapping,
    this.description,
    this.downColor,
    this.enableMouseTracking,
    this.events,
    this.fillColor,
    this.findNearestPointBy,
    this.grouping,
    this.groupPadding,
    this.inactiveOtherPoints,
    this.includeInDataExport,
    this.keys,
    this.label,
    this.lastPrice,
    this.lastVisiblePrice,
    this.legendSymbol,
    this.legendSymbolColor,
    this.lineWidth,
    this.maxPointWidth,
    this.minPointLength,
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
    this.pointPadding,
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
    this.stickyTracking,
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

  /// (Highcharts, Highstock, Gantt) The color of the border surrounding each column or bar.
  final dynamic borderColor;

  /// (Highcharts, Highstock, Gantt) The corner radius of the border surrounding each column or bar. A number signifies pixels. A percentage string, like for example `50%`, signifies a relative size. For columns this is relative to the column width, for pies it is relative to the radius and the inner radi
  final dynamic borderRadius;

  /// (Highcharts, Highstock, Gantt) The width of the border surrounding each column or bar. Defaults to `1` when there is room for a border, but to `0` when the columns are so dense that a border would cover the next column.
  final num? borderWidth;

  /// (Highstock) The size of the individual box, representing a point. Can be set in yAxis value, or percent value of the first point e.g. if first point's value is 200, and box size is set to `20%`, the box will be 40, so the new point will be drawn when the next value changes for more than 40.
  final num? boxSize;

  /// (Highstock) An additional class name to apply to the series' graphical elements. This option does not replace default class names of the graphical element. Changes to the series' color will also be reflected in a chart's legend and tooltip.
  final String? className;

  /// (Highstock) The main color of the series. In line type series it applies to the line and the point markers unless otherwise specified. In bar type series it applies to the bars unless a color is specified per point. The default value is pulled from the `options.colors` array.
  final dynamic color;

  /// (Highcharts, Highstock, Highmaps) When using dual or multiple color axes, this number defines which colorAxis the particular series is connected to. It refers to either the axis id or the index of the axis in the colorAxis array, with 0 being the first. Set this option to false to prevent a series f
  final dynamic colorAxis;

  /// (Highstock) Styled mode only. A specific color index to use for the series, so its graphic representations are given the class name `highcharts-color-{n}`.
  final num? colorIndex;

  /// (Highcharts, Highstock, Highmaps) Determines what data value should be used to calculate point color if `colorAxis` is used. Requires to set `min` and `max` if some custom point property is used or if approximation for data grouping is set to `'sum'`.
  final String? colorKey;

  /// (Highcharts, Highstock, Gantt) A series specific or series type specific color set to apply instead of the global colors when colorByPoint is true.
  final List<dynamic>? colors;

  /// (Highcharts, Highstock, Gantt) When true, each point or column edge is rounded to its nearest pixel in order to render sharp on screen. In some cases, when there are a lot of densely packed columns, this leads to visible difference in column widths or distance between columns. In these cases, settin
  final bool? crisp;

  /// (Highcharts, Highstock, Gantt) When the series contains less points than the crop threshold, all points are drawn, even if the points fall outside the visible plot area at the current zoom. The advantage of drawing all points (including markers and columns), is that animation is performed on updates
  final num? cropThreshold;

  /// (Highstock) You can set the cursor to "pointer" if you have click events attached to the series, to signal to the user that the points and lines can be clicked.
  final String? cursor;

  /// (Highstock) A reserved subspace to store options and values for customized functionality. Here you can add additional data for your own event callbacks and formatter callbacks.
  final HCDictionary? custom;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for the series data labels, appearing next to each data point.
  final dynamic dataLabels;

  /// (Highstock) The mapping between the data table and the series data points. This is used in conjunction with the `dataTable` option (on chart or series level) to map columns from the data table to the properties of the data points. The keys of the `dataMapping` object correspond to the properties of
  final HCDataMappingOptionsObject? dataMapping;

  /// (Highstock) Deprecated. Use plotOptions.series.accessibility.description instead.
  final String? description;

  final String? downColor;

  /// (Highstock) Enable or disable the mouse tracking for a specific series. This includes point tooltips and click events on graphs and points. For large datasets it improves performance.
  final bool? enableMouseTracking;

  /// (Highstock) General event handlers for the series items. These event hooks can also be attached to the series at run time using the `Highcharts.addEvent` function.
  final HCSeriesEventsOptionsObject? events;

  final String? fillColor;

  /// (Highstock) Determines whether the series should look for the nearest point in both dimensions or just the x-dimension when hovering the series. Defaults to `'xy'` for scatter series and `'x'` for most other series. If the data has duplicate x-values, it is recommended to set this to `'xy'` to allow
  final String? findNearestPointBy;

  /// (Highcharts, Highstock, Gantt) Whether to group non-stacked columns or to let them render independent of each other. Non-grouped columns will be laid out individually and overlap each other.
  final bool? grouping;

  /// (Highcharts, Highstock, Gantt) Padding between each value groups, in x axis units.
  final num? groupPadding;

  /// (Highstock) Highlight only the hovered point and fade the remaining points.
  final bool? inactiveOtherPoints;

  /// (Highstock) When set to `false` will prevent the series data from being included in any form of data export.
  final bool? includeInDataExport;

  /// (Highstock) An array specifying which option maps to which key in the data point array. This makes it convenient to work with unstructured data arrays from different sources.
  final List<String>? keys;

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

  final num? lineWidth;

  /// (Highcharts, Highstock, Gantt) The maximum allowed pixel width for a column, translated to the height of a bar in a bar chart. This prevents the columns from becoming too wide when there is a small number of points in the chart.
  final num? maxPointWidth;

  /// (Highcharts, Highstock, Gantt) The minimal height for a column or width for a bar. By default, 0 values are not shown. To visualize a 0 (or close to zero) point, set the minimal point length to a pixel value like 3\. In stacked column charts, minPointLength might not be respected for tightly packed
  final num? minPointLength;

  /// (Highstock) Options for the corresponding navigator series if `showInNavigator` is `true` for this series. Available options are the same as any series, documented at plotOptions and series.
  final dynamic navigatorOptions;

  /// (Highstock) The color for the parts of the graph or points that are below the threshold. Note that `zones` takes precedence over the negative color. Using `negativeColor` is equivalent to applying a zone with value of 0.
  final dynamic negativeColor;

  /// (Highcharts, Highstock) Whether or not data-points with the value of `null` should be interactive. When this is set to `true`, tooltips may highlight these points, and this option also enables keyboard navigation for such points. Format options for such points include `nullFormat` and `nullFormatter
  final bool? nullInteraction;

  /// (Highstock) Options for the _Series on point_ feature. Only `pie` and `sunburst` series are supported at this moment.
  final dynamic onPoint;

  /// (Highstock) Opacity of a series parts: line, fill (e.g. area) and dataLabels.
  final num? opacity;

  /// (Highstock) Properties for each single point.
  final HCPlotSeriesPointOptions? point;

  /// (Highstock) Deprecated. Use series.accessibility.point.descriptionFormat instead.
  final dynamic pointDescriptionFormat;

  /// (Highstock) Deprecated. Use series.accessibility.point.descriptionFormatter instead.
  final dynamic pointDescriptionFormatter;

  /// (Highcharts, Highstock, Gantt) If no x values are given for the points in a series, `pointInterval` defines the interval of the x values. For example, if a series contains one value every decade starting from year 0, set `pointInterval` to `10`. In true `datetime` axes, the `pointInterval` is set in
  final num? pointInterval;

  /// (Highcharts, Highstock, Gantt) On datetime series, this allows for setting the pointInterval to irregular time units, `day`, `month` and `year`. A day is usually the same as 24 hours, but `pointIntervalUnit` also takes the DST crossover into consideration when dealing with local time. Combine this o
  final String? pointIntervalUnit;

  final num? pointPadding;

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

  /// (Highstock) Whether or not to show the series in the navigator. Takes precedence over navigator.baseSeries if defined.
  final bool? showInNavigator;

  /// (Highstock) Deprecated. Use series.accessibility.keyboardNavigation instead.
  final bool? skipKeyboardNavigation;

  /// (Highcharts, Highstock) When this is true, the series will not cause the Y axis to cross the zero plane (or threshold option) unless the data actually crosses the plane.
  final bool? softThreshold;

  /// (Highstock) Sonification/audio chart options for a series.
  final HCSeriesSonificationOptions? sonification;

  /// (Highstock) A collection of options for different series states.
  final HCSeriesStatesOptionsObject? states;

  /// (Highstock) Sticky tracking of mouse events. When true, the `mouseOut` event on a series isn't triggered until the mouse moves over another series, or out of the plot area. When false, the `mouseOut` event on a series is triggered when the mouse leaves the area around the series' graph or markers. T
  final bool? stickyTracking;

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
    if (borderColor != null) {
      json['borderColor'] = hcJsonValue(borderColor);
    }
    if (borderRadius != null) {
      json['borderRadius'] = hcJsonValue(borderRadius);
    }
    if (borderWidth != null) {
      json['borderWidth'] = borderWidth;
    }
    if (boxSize != null) {
      json['boxSize'] = boxSize;
    }
    if (className != null) {
      json['className'] = className;
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
    if (dataLabels != null) {
      json['dataLabels'] = hcJsonValue(dataLabels);
    }
    if (dataMapping != null) {
      json['dataMapping'] = dataMapping!.toJson();
    }
    if (description != null) {
      json['description'] = description;
    }
    if (downColor != null) {
      json['downColor'] = downColor;
    }
    if (enableMouseTracking != null) {
      json['enableMouseTracking'] = enableMouseTracking;
    }
    if (events != null) {
      json['events'] = events!.toJson();
    }
    if (fillColor != null) {
      json['fillColor'] = fillColor;
    }
    if (findNearestPointBy != null) {
      json['findNearestPointBy'] = findNearestPointBy;
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
    if (lineWidth != null) {
      json['lineWidth'] = lineWidth;
    }
    if (maxPointWidth != null) {
      json['maxPointWidth'] = maxPointWidth;
    }
    if (minPointLength != null) {
      json['minPointLength'] = minPointLength;
    }
    if (navigatorOptions != null) {
      json['navigatorOptions'] = hcJsonValue(navigatorOptions);
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
class HCPlotRenkoStatesHoverAnimationOptions implements HCOption {
  const HCPlotRenkoStatesHoverAnimationOptions({
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
class HCPlotRenkoStatesInactiveAnimationOptions implements HCOption {
  const HCPlotRenkoStatesInactiveAnimationOptions({
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
class HCPlotRenkoStatesSelectAnimationOptions implements HCOption {
  const HCPlotRenkoStatesSelectAnimationOptions({
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
class HCPlotRenkoTooltipDateTimeLabelFormatsOptions implements HCOption {
  const HCPlotRenkoTooltipDateTimeLabelFormatsOptions({
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
class HCPlotRenkoTooltipHeaderOptions implements HCOption {
  const HCPlotRenkoTooltipHeaderOptions({
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
class HCPlotRenkoTooltipPositionOptions implements HCOption {
  const HCPlotRenkoTooltipPositionOptions({
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
class HCPlotRocAccessibilityPointOptions implements HCOption {
  const HCPlotRocAccessibilityPointOptions({
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
class HCPlotRocDataLabelsAnimationOptions implements HCOption {
  const HCPlotRocDataLabelsAnimationOptions({
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
class HCPlotRocDataLabelsOptions implements HCOption {
  const HCPlotRocDataLabelsOptions({
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
class HCPlotRocDataSortingOptions implements HCOption {
  const HCPlotRocDataSortingOptions({
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
class HCPlotRocLabelStyleOptions implements HCOption {
  const HCPlotRocLabelStyleOptions({
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
class HCPlotRocMarkerStatesHoverAnimationOptions implements HCOption {
  const HCPlotRocMarkerStatesHoverAnimationOptions({
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
class HCPlotRocOnPointConnectorOptions implements HCOption {
  const HCPlotRocOnPointConnectorOptions({
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
class HCPlotRocOnPointOptions implements HCOption {
  const HCPlotRocOnPointOptions({
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
class HCPlotRocOnPointPositionOptions implements HCOption {
  const HCPlotRocOnPointPositionOptions({
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

/// (Highstock) Rate of change indicator (ROC). The indicator value for each point is defined as:
class HCPlotRocOptions implements HCOption {
  const HCPlotRocOptions({
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
  final HCPlotRocDataSortingOptions? dataSorting;

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
  final HCPlotRocParamsOptions? params;

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
class HCPlotRocParamsOptions implements HCOption {
  const HCPlotRocParamsOptions({
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
class HCPlotRocStatesHoverAnimationOptions implements HCOption {
  const HCPlotRocStatesHoverAnimationOptions({
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
class HCPlotRocStatesInactiveAnimationOptions implements HCOption {
  const HCPlotRocStatesInactiveAnimationOptions({
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
class HCPlotRocStatesSelectAnimationOptions implements HCOption {
  const HCPlotRocStatesSelectAnimationOptions({
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
class HCPlotRocTooltipDateTimeLabelFormatsOptions implements HCOption {
  const HCPlotRocTooltipDateTimeLabelFormatsOptions({
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
class HCPlotRocTooltipHeaderOptions implements HCOption {
  const HCPlotRocTooltipHeaderOptions({
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
class HCPlotRocTooltipPositionOptions implements HCOption {
  const HCPlotRocTooltipPositionOptions({
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
class HCPlotRsiAccessibilityPointOptions implements HCOption {
  const HCPlotRsiAccessibilityPointOptions({
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
class HCPlotRsiDataLabelsAnimationOptions implements HCOption {
  const HCPlotRsiDataLabelsAnimationOptions({
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
class HCPlotRsiDataLabelsOptions implements HCOption {
  const HCPlotRsiDataLabelsOptions({
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
class HCPlotRsiDataSortingOptions implements HCOption {
  const HCPlotRsiDataSortingOptions({
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
class HCPlotRsiLabelStyleOptions implements HCOption {
  const HCPlotRsiLabelStyleOptions({
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
class HCPlotRsiMarkerStatesHoverAnimationOptions implements HCOption {
  const HCPlotRsiMarkerStatesHoverAnimationOptions({
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
class HCPlotRsiOnPointConnectorOptions implements HCOption {
  const HCPlotRsiOnPointConnectorOptions({
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
class HCPlotRsiOnPointOptions implements HCOption {
  const HCPlotRsiOnPointOptions({
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
class HCPlotRsiOnPointPositionOptions implements HCOption {
  const HCPlotRsiOnPointPositionOptions({
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

/// (Highstock) Relative strength index (RSI) technical indicator. This series requires the `linkedTo` option to be set and should be loaded after the `stock/indicators/indicators.js` file.
class HCPlotRsiOptions implements HCOption {
  const HCPlotRsiOptions({
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
  final HCPlotRsiDataSortingOptions? dataSorting;

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
  final HCPlotRsiParamsOptions? params;

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
class HCPlotRsiParamsOptions implements HCOption {
  const HCPlotRsiParamsOptions({
    this.decimals,
    this.index,
    this.period,
  });

  final num? decimals;

  /// (Highstock) The point index which indicator calculations will base. For example using OHLC data, index=2 means the indicator will be calculated using Low values.
  final num? index;

  /// (Highstock) The base period for indicator calculations. This is the number of data points which are taken into account for the indicator calculations.
  final num? period;

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
    return json;
  }
}

/// (Highcharts, Highstock) Animation setting for hovering the graph in line-type series.
class HCPlotRsiStatesHoverAnimationOptions implements HCOption {
  const HCPlotRsiStatesHoverAnimationOptions({
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
class HCPlotRsiStatesInactiveAnimationOptions implements HCOption {
  const HCPlotRsiStatesInactiveAnimationOptions({
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
class HCPlotRsiStatesSelectAnimationOptions implements HCOption {
  const HCPlotRsiStatesSelectAnimationOptions({
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
class HCPlotRsiTooltipDateTimeLabelFormatsOptions implements HCOption {
  const HCPlotRsiTooltipDateTimeLabelFormatsOptions({
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
class HCPlotRsiTooltipHeaderOptions implements HCOption {
  const HCPlotRsiTooltipHeaderOptions({
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
class HCPlotRsiTooltipPositionOptions implements HCOption {
  const HCPlotRsiTooltipPositionOptions({
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
