part of 'hc_options.dart';

/// (Highstock, Gantt) Accessibility options for the navigator. Requires the Accessibility module.
class HCNavigatorAccessibilityOptions implements HCOption {
  const HCNavigatorAccessibilityOptions({
    this.enabled,
  });

  /// (Highstock, Gantt) Enable accessibility support for the navigator.
  final bool? enabled;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    return json;
  }
}

/// (Highstock, Gantt) Options for the handles for dragging the zoomed area.
class HCNavigatorHandlesOptions implements HCOption {
  const HCNavigatorHandlesOptions({
    this.backgroundColor,
    this.borderColor,
    this.borderRadius,
    this.enabled,
    this.height,
    this.lineWidth,
    this.symbols,
    this.width,
  });

  /// (Highstock, Gantt) The fill for the handle.
  final dynamic backgroundColor;

  /// (Highstock, Gantt) The stroke for the handle border and the stripes inside.
  final dynamic borderColor;

  /// (Highstock, Gantt) Border radius of the handles.
  final num? borderRadius;

  /// (Highstock, Gantt) Allows to enable/disable handles.
  final bool? enabled;

  /// (Highstock, Gantt) Height for handles.
  final num? height;

  /// (Highstock, Gantt) The width for the handle border and the stripes inside.
  final num? lineWidth;

  /// (Highstock, Gantt) Array to define shapes of handles. 0-index for left, 1-index for right.
  final List<String>? symbols;

  /// (Highstock, Gantt) Width for handles.
  final num? width;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (backgroundColor != null) {
      json['backgroundColor'] = hcJsonValue(backgroundColor);
    }
    if (borderColor != null) {
      json['borderColor'] = hcJsonValue(borderColor);
    }
    if (borderRadius != null) {
      json['borderRadius'] = borderRadius;
    }
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    if (height != null) {
      json['height'] = height;
    }
    if (lineWidth != null) {
      json['lineWidth'] = lineWidth;
    }
    if (symbols != null) {
      json['symbols'] = symbols;
    }
    if (width != null) {
      json['width'] = width;
    }
    return json;
  }
}

/// (Highstock, Gantt) The navigator is a small series below the main series, displaying a view of the entire data set. It provides tools to zoom in and out on parts of the data as well as panning across the dataset.
class HCNavigatorOptions implements HCOption {
  const HCNavigatorOptions({
    this.accessibility,
    this.adaptToUpdatedData,
    this.baseSeries,
    this.enabled,
    this.handles,
    this.height,
    this.margin,
    this.maskFill,
    this.maskInside,
    this.opposite,
    this.outlineColor,
    this.outlineWidth,
    this.series,
    this.stickToMax,
    this.xAxis,
    this.yAxis,
  });

  /// (Highstock, Gantt) Accessibility options for the navigator. Requires the Accessibility module.
  final HCNavigatorAccessibilityOptions? accessibility;

  /// (Highstock, Gantt) Whether the navigator and scrollbar should adapt to updated data in the base X axis. When loading data async, as in the demo below, this should be `false`. Otherwise new data will trigger navigator redraw, which will cause unwanted looping. In the demo below, the data in the navig
  final bool? adaptToUpdatedData;

  /// (Highstock, Gantt) An integer identifying the index to use for the base series, or a string representing the id of the series.
  final dynamic baseSeries;

  /// (Highstock, Gantt) Enable or disable the navigator.
  final bool? enabled;

  /// (Highstock, Gantt) Options for the handles for dragging the zoomed area.
  final HCNavigatorHandlesOptions? handles;

  /// (Highstock, Gantt) The height of the navigator.
  final num? height;

  /// (Highstock, Gantt) The distance from the nearest element, the X axis or X axis labels.
  final num? margin;

  /// (Highstock, Gantt) The color of the mask covering the areas of the navigator series that are currently not visible in the main series. The default color is bluish with an opacity of 0.3 to see the series below.
  final dynamic maskFill;

  /// (Highstock, Gantt) Whether the mask should be inside the range marking the zoomed range, or outside. In Highcharts Stock 1.x it was always `false`.
  final bool? maskInside;

  /// (Highstock, Gantt) When the chart is inverted, whether to draw the navigator on the opposite side.
  final bool? opposite;

  /// (Highstock, Gantt) The color of the line marking the currently zoomed area in the navigator.
  final dynamic outlineColor;

  /// (Highstock, Gantt) The width of the line marking the currently zoomed area in the navigator.
  final num? outlineWidth;

  /// (Highstock, Gantt) Options for the navigator series. Available options are the same as any series, documented at plotOptions and series.
  final dynamic series;

  /// (Highstock, Gantt) Enable or disable navigator sticking to right, while adding new points. If `undefined`, the navigator sticks to the axis maximum only if it was already at the maximum prior to adding points.
  final bool? stickToMax;

  /// (Highstock, Gantt) Options for the navigator X axis. Default series options for the navigator xAxis are: (see online documentation for example)
  final dynamic xAxis;

  /// (Highstock, Gantt) Options for the navigator Y axis. Default series options for the navigator yAxis are: (see online documentation for example)
  final dynamic yAxis;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (accessibility != null) {
      json['accessibility'] = accessibility!.toJson();
    }
    if (adaptToUpdatedData != null) {
      json['adaptToUpdatedData'] = adaptToUpdatedData;
    }
    if (baseSeries != null) {
      json['baseSeries'] = hcJsonValue(baseSeries);
    }
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    if (handles != null) {
      json['handles'] = handles!.toJson();
    }
    if (height != null) {
      json['height'] = height;
    }
    if (margin != null) {
      json['margin'] = margin;
    }
    if (maskFill != null) {
      json['maskFill'] = hcJsonValue(maskFill);
    }
    if (maskInside != null) {
      json['maskInside'] = maskInside;
    }
    if (opposite != null) {
      json['opposite'] = opposite;
    }
    if (outlineColor != null) {
      json['outlineColor'] = hcJsonValue(outlineColor);
    }
    if (outlineWidth != null) {
      json['outlineWidth'] = outlineWidth;
    }
    if (series != null) {
      json['series'] = hcJsonValue(series);
    }
    if (stickToMax != null) {
      json['stickToMax'] = stickToMax;
    }
    if (xAxis != null) {
      json['xAxis'] = hcJsonValue(xAxis);
    }
    if (yAxis != null) {
      json['yAxis'] = hcJsonValue(yAxis);
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Enable or disable the initial animation when a series is displayed for the `dataLabels`. The animation can also be set as a configuration object. Please note that this option only applies to the initial animation.
class HCNavigatorSeriesDataLabelsAnimationOptions implements HCOption {
  const HCNavigatorSeriesDataLabelsAnimationOptions({
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

/// (Highcharts, Highstock, Highmaps, Gantt) Data label options for the navigator series. Data labels are disabled by default on the navigator series.
class HCNavigatorSeriesDataLabelsOptions implements HCOption {
  const HCNavigatorSeriesDataLabelsOptions({
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

class HCNavigatorSeriesMarkerOptions implements HCOption {
  const HCNavigatorSeriesMarkerOptions({
    this.enabled,
  });

  final bool? enabled;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    return json;
  }
}

/// (Highstock, Gantt) Options for the navigator series. Available options are the same as any series, documented at plotOptions and series.
class HCNavigatorSeriesOptions implements HCOption {
  const HCNavigatorSeriesOptions({
    this.className,
    this.color,
    this.data,
    this.dataGrouping,
    this.dataLabels,
    this.fillOpacity,
    this.id,
    this.lineColor,
    this.lineWidth,
    this.marker,
    this.pointRange,
    this.threshold,
    this.type,
  });

  final String? className;

  /// (Highstock, Gantt) Sets the fill color of the navigator series.
  final dynamic color;

  /// (Highstock) Unless data is explicitly defined, the data is borrowed from the first series in the chart.
  final List<dynamic>? data;

  /// (Highstock) Data grouping options for the navigator series.
  final HCDataGroupingOptionsObject? dataGrouping;

  /// (Highcharts, Highstock, Highmaps, Gantt) Data label options for the navigator series. Data labels are disabled by default on the navigator series.
  final dynamic dataLabels;

  /// (Highstock, Gantt) The fill opacity of the navigator series.
  final num? fillOpacity;

  final String? id;

  /// (Highstock, Gantt) Line color for the navigator series. Allows setting the color while disallowing the default candlestick setting.
  final String? lineColor;

  /// (Highstock, Gantt) The pixel line width of the navigator series.
  final num? lineWidth;

  final HCNavigatorSeriesMarkerOptions? marker;

  /// (Highstock, Gantt) Since Highcharts Stock v8, default value is the same as default `pointRange` defined for a specific type (e.g. `null` for column type).
  final num? pointRange;

  /// (Highstock, Gantt) The threshold option. Setting it to 0 will make the default navigator area series draw its area from the 0 value and up.
  final num? threshold;

  /// (Highstock, Gantt) The type of the navigator series.
  final String? type;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (className != null) {
      json['className'] = className;
    }
    if (color != null) {
      json['color'] = hcJsonValue(color);
    }
    if (data != null) {
      json['data'] = data!.map((e) => hcJsonValue(e)).toList();
    }
    if (dataGrouping != null) {
      json['dataGrouping'] = dataGrouping!.toJson();
    }
    if (dataLabels != null) {
      json['dataLabels'] = hcJsonValue(dataLabels);
    }
    if (fillOpacity != null) {
      json['fillOpacity'] = fillOpacity;
    }
    if (id != null) {
      json['id'] = id;
    }
    if (lineColor != null) {
      json['lineColor'] = lineColor;
    }
    if (lineWidth != null) {
      json['lineWidth'] = lineWidth;
    }
    if (marker != null) {
      json['marker'] = marker!.toJson();
    }
    if (pointRange != null) {
      json['pointRange'] = pointRange;
    }
    if (threshold != null) {
      json['threshold'] = threshold;
    }
    if (type != null) {
      json['type'] = type;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Gantt) An array defining breaks in the axis, the sections defined will be left out and all the points shifted closer to each other.
class HCNavigatorXAxisBreaksOptions implements HCOption {
  const HCNavigatorXAxisBreaksOptions({
    this.breakSize,
    this.from,
    this.repeat,
    this.to,
  });

  /// (Highcharts, Highstock, Gantt) A number indicating how much space should be left between the start and the end of the break. The break size is given in axis units, so for instance on a `datetime` axis, a break size of 3600000 would indicate the equivalent of an hour.
  final num? breakSize;

  /// (Highcharts, Highstock, Gantt) The axis value where the break starts. On datetime axes, this may be a date string.
  final dynamic from;

  /// (Highcharts, Highstock, Gantt) Defines an interval after which the break appears again. By default the breaks do not repeat.
  final num? repeat;

  /// (Highcharts, Highstock, Gantt) The axis value where the break ends. On datetime axes, this may be a date string.
  final dynamic to;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (breakSize != null) {
      json['breakSize'] = breakSize;
    }
    if (from != null) {
      json['from'] = hcJsonValue(from);
    }
    if (repeat != null) {
      json['repeat'] = repeat;
    }
    if (to != null) {
      json['to'] = hcJsonValue(to);
    }
    return json;
  }
}

/// (Gantt) An object defining mouse events for the plot line. Supported properties are `click`, `mouseover`, `mouseout`, `mousemove`.
class HCNavigatorXAxisCurrentDateIndicatorEventsOptions implements HCOption {
  const HCNavigatorXAxisCurrentDateIndicatorEventsOptions();

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    return json;
  }
}

/// (Gantt) Text labels for the plot lines
class HCNavigatorXAxisCurrentDateIndicatorLabelOptions implements HCOption {
  const HCNavigatorXAxisCurrentDateIndicatorLabelOptions({
    this.align,
    this.format,
    this.rotation,
    this.style,
    this.text,
    this.textAlign,
    this.useHTML,
    this.verticalAlign,
    this.x,
    this.y,
  });

  /// (Gantt) Horizontal alignment of the label. Can be one of "left", "center" or "right".
  final String? align;

  /// (Gantt) Format of the label. This options is passed as the first argument to dateFormat function.
  final dynamic format;

  /// (Gantt) Rotation of the text label in degrees. Defaults to 0 for horizontal plot lines and 90 for vertical lines.
  final num? rotation;

  /// (Gantt) CSS styles for the text label.
  final HCCSSObject? style;

  /// (Gantt) The text itself. A subset of HTML is supported.
  final String? text;

  /// (Gantt) The text alignment for the label. While `align` determines where the texts anchor point is placed within the plot band, `textAlign` determines how the text is aligned against its anchor point. Possible values are "left", "center" and "right". Defaults to the same as the `align` option.
  final String? textAlign;

  /// (Gantt) Whether to use HTML to render the labels.
  final bool? useHTML;

  /// (Gantt) Vertical alignment of the label relative to the plot line. Can be one of "top", "middle" or "bottom".
  final String? verticalAlign;

  /// (Gantt) Horizontal position relative the alignment. Default varies by orientation.
  final num? x;

  /// (Gantt) Vertical position of the text baseline relative to the alignment. Default varies by orientation.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (align != null) {
      json['align'] = align;
    }
    if (format != null) {
      json['format'] = hcJsonValue(format);
    }
    if (rotation != null) {
      json['rotation'] = rotation;
    }
    if (style != null) {
      json['style'] = style!.toJson();
    }
    if (text != null) {
      json['text'] = text;
    }
    if (textAlign != null) {
      json['textAlign'] = textAlign;
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
    return json;
  }
}

class HCNavigatorXAxisCurrentDateIndicatorLabelsOptions implements HCOption {
  const HCNavigatorXAxisCurrentDateIndicatorLabelsOptions({
    this.clip,
  });

  /// (Gantt) Whether to hide labels that are outside the plot area.
  final bool? clip;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (clip != null) {
      json['clip'] = clip;
    }
    return json;
  }
}

/// (Highstock, Gantt) Event handlers for the axis.
class HCNavigatorXAxisEventsOptions implements HCOption {
  const HCNavigatorXAxisEventsOptions();

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    return json;
  }
}

/// (Gantt) Set grid options for the axis labels. Requires Highcharts Gantt.
class HCNavigatorXAxisGridOptions implements HCOption {
  const HCNavigatorXAxisGridOptions({
    this.borderColor,
    this.borderWidth,
    this.cellHeight,
    this.columns,
    this.enabled,
  });

  /// (Gantt) Set border color for the label grid lines.
  final String? borderColor;

  /// (Gantt) Set border width of the label grid lines.
  final num? borderWidth;

  /// (Gantt) Set cell height for grid axis labels. By default this is calculated from font size. This option only applies to horizontal axes. For vertical axes, check the .yAxis.staticScale option.
  final num? cellHeight;

  /// (Gantt) Set specific options for each column (or row for horizontal axes) in the grid. Each extra column/row is its own axis, and the axis options can be set here.
  final List<HCXAxisOptions>? columns;

  /// (Gantt) Enable grid on the axis labels. Defaults to true for Gantt charts.
  final bool? enabled;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (borderColor != null) {
      json['borderColor'] = borderColor;
    }
    if (borderWidth != null) {
      json['borderWidth'] = borderWidth;
    }
    if (cellHeight != null) {
      json['cellHeight'] = cellHeight;
    }
    if (columns != null) {
      json['columns'] = columns!.map((e) => e.toJson()).toList();
    }
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    return json;
  }
}

/// (Highstock, Gantt) The axis labels show the number or category for each tick.
class HCNavigatorXAxisLabelsOptions implements HCOption {
  const HCNavigatorXAxisLabelsOptions({
    this.align,
    this.allowOverlap,
    this.autoRotation,
    this.autoRotationLimit,
    this.distance,
    this.enabled,
    this.format,
    this.indentation,
    this.maxStaggerLines,
    this.overflow,
    this.padding,
    this.reserveSpace,
    this.rotation,
    this.staggerLines,
    this.step,
    this.style,
    this.useHTML,
    this.x,
    this.y,
    this.zIndex,
  });

  /// (Highstock, Gantt) What part of the string the given position is anchored to. If `left`, the left side of the string is at the axis position. Can be one of `"left"`, `"center"` or `"right"`. Defaults to an intelligent guess based on which side of the chart the axis is on and the rotation of the labe
  final String? align;

  /// (Highstock, Gantt) Whether to allow the axis labels to overlap. When false, overlapping labels are hidden.
  final bool? allowOverlap;

  /// (Highcharts, Highstock, Gantt) For horizontal axes, the allowed degrees of label rotation to prevent overlapping labels. If there is enough space, labels are not rotated. As the chart gets narrower, it will start rotating the labels -45 degrees, then remove every second label and try again with rota
  final List<num>? autoRotation;

  /// (Highcharts, Gantt) When each category width is more than this many pixels, we don't apply auto rotation. Instead, we lay out the axis label with word wrap. A lower limit makes sense when the label contains multiple short words that don't extend the available horizontal space for each label.
  final num? autoRotationLimit;

  /// (Highcharts, Gantt) The label's pixel distance from the perimeter of the plot area. On cartesian charts, this is overridden if the `labels.y` setting is set.
  final num? distance;

  /// (Highstock, Gantt) Enable or disable the axis labels.
  final bool? enabled;

  /// (Highstock, Gantt) A format string for the axis label. The context is available as format string variables. For example, you can use `{text}` to insert the default formatted text. The recommended way of adding units for the label is using `text`, for example `{text} km`.
  final String? format;

  /// (Gantt) The number of pixels to indent the labels per level in a treegrid axis.
  final num? indentation;

  /// (Highstock, Gantt) Horizontal axis only. When `staggerLines` is not set, `maxStaggerLines` defines how many lines the axis is allowed to add to automatically avoid overlapping X labels. Set to `1` to disable overlap detection.
  final num? maxStaggerLines;

  /// (Highstock, Gantt) How to handle overflowing labels on horizontal axis. If set to `"allow"`, it will not be aligned at all. By default it `"justify"` labels inside the chart area. If there is room to move it, it will be aligned to the edge, else it will be removed.
  final String? overflow;

  /// (Highcharts, Gantt) The pixel padding for axis labels, to ensure white space between them. Defaults to 4 for horizontal axes, 1 for vertical.
  final num? padding;

  /// (Highcharts, Highstock, Gantt) Whether to reserve space for the labels. By default, space is reserved for the labels in these cases:
  final bool? reserveSpace;

  /// (Highstock, Gantt) Rotation of the labels in degrees. When `undefined`, the `autoRotation` option takes precedence.
  final num? rotation;

  /// (Highstock, Gantt) Horizontal axes only. The number of lines to spread the labels over to make room or tighter labels. 0 disables staggering.
  final num? staggerLines;

  /// (Highstock, Gantt) To show only every _n_'th label on the axis, set the step to _n_. Setting the step to 2 shows every other label.
  final num? step;

  /// (Highstock, Gantt) CSS styles for the label. Use `lineClamp` to control wrapping of category labels. Use `textOverflow: 'none'` to prevent ellipsis (dots).
  final dynamic style;

  /// (Highstock, Gantt) Whether to use HTML to render the labels.
  final bool? useHTML;

  /// (Highstock, Gantt) The x position offset of all labels relative to the tick positions on the axis. Overrides the `labels.distance` option.
  final num? x;

  /// (Highstock, Gantt) The y position offset of all labels relative to the tick positions on the axis. Overrides the `labels.distance` option.
  final num? y;

  /// (Highstock, Gantt) The Z index for the axis labels.
  final num? zIndex;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (align != null) {
      json['align'] = align;
    }
    if (allowOverlap != null) {
      json['allowOverlap'] = allowOverlap;
    }
    if (autoRotation != null) {
      json['autoRotation'] = autoRotation;
    }
    if (autoRotationLimit != null) {
      json['autoRotationLimit'] = autoRotationLimit;
    }
    if (distance != null) {
      json['distance'] = distance;
    }
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    if (format != null) {
      json['format'] = format;
    }
    if (indentation != null) {
      json['indentation'] = indentation;
    }
    if (maxStaggerLines != null) {
      json['maxStaggerLines'] = maxStaggerLines;
    }
    if (overflow != null) {
      json['overflow'] = overflow;
    }
    if (padding != null) {
      json['padding'] = padding;
    }
    if (reserveSpace != null) {
      json['reserveSpace'] = reserveSpace;
    }
    if (rotation != null) {
      json['rotation'] = rotation;
    }
    if (staggerLines != null) {
      json['staggerLines'] = staggerLines;
    }
    if (step != null) {
      json['step'] = step;
    }
    if (style != null) {
      json['style'] = hcJsonValue(style);
    }
    if (useHTML != null) {
      json['useHTML'] = useHTML;
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

/// (Highstock, Gantt) CSS styles for the label. Use `lineClamp` to control wrapping of category labels. Use `textOverflow: 'none'` to prevent ellipsis (dots).
class HCNavigatorXAxisLabelsStyleOptions implements HCOption {
  const HCNavigatorXAxisLabelsStyleOptions({
    this.color,
    this.cursor,
    this.fontSize,
    this.textOverflow,
  });

  final dynamic color;

  final String? cursor;

  final num? fontSize;

  final String? textOverflow;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (color != null) {
      json['color'] = hcJsonValue(color);
    }
    if (cursor != null) {
      json['cursor'] = cursor;
    }
    if (fontSize != null) {
      json['fontSize'] = fontSize;
    }
    if (textOverflow != null) {
      json['textOverflow'] = textOverflow;
    }
    return json;
  }
}

/// (Highstock, Gantt) Options for the navigator X axis. Default series options for the navigator xAxis are: (see online documentation for example)
class HCNavigatorXAxisOptions implements HCOption {
  const HCNavigatorXAxisOptions({
    this.accessibility,
    this.alignTicks,
    this.allowDecimals,
    this.alternateGridColor,
    this.breaks,
    this.categories,
    this.ceiling,
    this.className,
    this.crosshair,
    this.crossing,
    this.currentDateIndicator,
    this.dateTimeLabelFormats,
    this.endOnTick,
    this.events,
    this.floor,
    this.grid,
    this.gridLineColor,
    this.gridLineDashStyle,
    this.gridLineWidth,
    this.gridZIndex,
    this.height,
    this.id,
    this.labels,
    this.left,
    this.lineColor,
    this.lineWidth,
    this.margin,
    this.max,
    this.maxPadding,
    this.min,
    this.minorGridLineColor,
    this.minorGridLineDashStyle,
    this.minorGridLineWidth,
    this.minorTickColor,
    this.minorTickInterval,
    this.minorTickLength,
    this.minorTickPosition,
    this.minorTicks,
    this.minorTicksPerMajor,
    this.minorTickWidth,
    this.minPadding,
    this.minTickInterval,
    this.offset,
    this.ordinal,
    this.overscroll,
    this.panningEnabled,
    this.plotBands,
    this.plotLines,
    this.reversed,
    this.reversedStacks,
    this.showFirstLabel,
    this.showLastLabel,
    this.softMax,
    this.softMin,
    this.startOfWeek,
    this.startOnTick,
    this.staticScale,
    this.tickAmount,
    this.tickColor,
    this.tickInterval,
    this.tickLength,
    this.tickmarkPlacement,
    this.tickPixelInterval,
    this.tickPosition,
    this.tickPositions,
    this.tickWidth,
    this.title,
    this.top,
    this.type,
    this.uniqueNames,
    this.units,
    this.visible,
    this.width,
    this.zIndex,
    this.zoomEnabled,
  });

  /// (Highstock, Gantt) Accessibility options for an axis. Requires the accessibility module.
  final HCAxisAccessibilityOptionsObject? accessibility;

  /// (Highcharts, Highstock, Gantt) When using multiple axis, the ticks of two or more opposite axes will automatically be aligned by adding ticks to the axis or axes with the least ticks, as if `tickAmount` were specified.
  final bool? alignTicks;

  /// (Highstock, Gantt) Whether to allow decimals in this axis' ticks. When counting integers, like persons or hits on a web page, decimals should be avoided in the labels. By default, decimals are allowed on small scale axes.
  final bool? allowDecimals;

  /// (Highstock, Gantt) When using an alternate grid color, a band is painted across the plot area between every other grid line.
  final dynamic alternateGridColor;

  /// (Highcharts, Highstock, Gantt) An array defining breaks in the axis, the sections defined will be left out and all the points shifted closer to each other.
  final List<HCNavigatorXAxisBreaksOptions>? breaks;

  /// (Highcharts, Gantt) If categories are present for the xAxis, names are used instead of numbers for that axis.
  final List<String>? categories;

  /// (Highcharts, Highstock, Gantt) The highest allowed value for automatically computed axis extremes.
  final num? ceiling;

  /// (Highstock, Gantt) A class name that opens for styling the axis by CSS, especially in Highcharts styled mode. The class name is applied to group elements for the grid, axis elements and labels.
  final String? className;

  /// (Highstock, Gantt) Configure a crosshair that follows either the mouse pointer or the hovered point.
  final dynamic crosshair;

  /// (Highstock, Gantt) The value on a perpendicular axis where this axis should cross. This is typically used on mathematical plots where the axes cross at 0. When `crossing` is set, space will not be reserved at the sides of the chart for axis labels and title, so those may be clipped. In this case it
  final num? crossing;

  /// (Gantt) Show an indicator on the axis for the current date and time. Can be a boolean or a configuration object similar to xAxis.plotLines.
  final dynamic currentDateIndicator;

  /// (Highcharts, Highstock, Gantt) For a datetime axis, the scale will automatically adjust to the appropriate unit. This member gives the default representations used for each unit. For easier data interpretation, `hour`, `day`, `month` and `year` units can be used and formatted as boundary tick values
  final HCAxisDateTimeLabelFormatsOptions? dateTimeLabelFormats;

  /// (Highstock, Gantt) Whether to force the axis to end on a tick. Use this option with the `maxPadding` option to control the axis end.
  final bool? endOnTick;

  /// (Highstock, Gantt) Event handlers for the axis.
  final HCNavigatorXAxisEventsOptions? events;

  /// (Highcharts, Highstock, Gantt) The lowest allowed value for automatically computed axis extremes.
  final num? floor;

  /// (Gantt) Set grid options for the axis labels. Requires Highcharts Gantt.
  final HCNavigatorXAxisGridOptions? grid;

  /// (Highstock, Gantt) Color of the grid lines extending the ticks across the plot area.
  final String? gridLineColor;

  /// (Highstock, Gantt) The dash or dot style of the grid lines. For possible values, see this demonstration.
  final String? gridLineDashStyle;

  /// (Highstock, Gantt) The width of the grid lines extending the ticks across the plot area. Defaults to 1 on the Y axis and 0 on the X axis, except for 3d charts and gauges.
  final num? gridLineWidth;

  /// (Highcharts, Highstock, Gantt) The Z index of the grid lines.
  final num? gridZIndex;

  /// (Highcharts, Highstock) The height as the vertical axis. If it's a number, it is interpreted as pixels.
  final dynamic height;

  /// (Highstock, Gantt) An id for the axis. This can be used after render time to get a pointer to the axis object through `chart.get()`.
  final String? id;

  /// (Highstock, Gantt) The axis labels show the number or category for each tick.
  final HCNavigatorXAxisLabelsOptions? labels;

  /// (Highcharts, Highstock) The left position as the horizontal axis. If it's a number, it is interpreted as pixel position relative to the chart.
  final dynamic left;

  /// (Highstock, Gantt) The color of the line marking the axis itself.
  final dynamic lineColor;

  /// (Highstock, Gantt) The width of the line marking the axis itself.
  final num? lineWidth;

  /// (Highstock, Gantt) If there are multiple axes on the same side of the chart, the pixel margin between the axes. Defaults to 0 on vertical axes, 15 on horizontal axes.
  final num? margin;

  /// (Highstock, Gantt) The maximum value of the axis. If `undefined`, the max value is automatically calculated.
  final dynamic max;

  /// (Highstock, Gantt) Padding of the max value relative to the length of the axis. A padding of 0.05 will make a 100px axis 5px longer. This is useful when you don't want the highest data value to appear on the edge of the plot area. When the axis' `max` option is set or a max extreme is set using `axi
  final num? maxPadding;

  /// (Highstock, Gantt) The minimum value of the axis. If `undefined`, the min value is automatically calculated.
  final dynamic min;

  /// (Highstock, Gantt) Color of the minor, secondary grid lines.
  final dynamic minorGridLineColor;

  /// (Highstock, Gantt) The dash or dot style of the minor grid lines. For possible values, see this demonstration.
  final String? minorGridLineDashStyle;

  /// (Highstock, Gantt) Width of the minor, secondary grid lines.
  final num? minorGridLineWidth;

  /// (Highstock, Gantt) Color for the minor tick marks.
  final dynamic minorTickColor;

  /// (Highstock, Gantt) Specific tick interval in axis units for the minor ticks. On a linear axis, if `"auto"`, the minor tick interval is calculated as a fifth of the tickInterval. If `undefined`, minor ticks are not shown.
  final dynamic minorTickInterval;

  /// (Highstock, Gantt) The pixel length of the minor tick marks.
  final num? minorTickLength;

  /// (Highstock, Gantt) The position of the minor tick marks relative to the axis line. Can be one of `inside` and `outside`.
  final String? minorTickPosition;

  /// (Highstock, Gantt) Enable or disable minor ticks. The interval between the minor ticks can be controlled either by the minorTicksPerMajor setting, or as an absolute minorTickInterval value.
  final bool? minorTicks;

  /// (Highstock, Gantt) The number of minor ticks per major tick. Works for `linear`, `logarithmic` and `datetime` axes.
  final num? minorTicksPerMajor;

  /// (Highstock, Gantt) The pixel width of the minor tick mark.
  final num? minorTickWidth;

  /// (Highcharts, Highstock, Gantt) Padding of the min value relative to the length of the axis. A padding of 0.05 will make a 100px axis 5px longer. This is useful when you don't want the lowest data value to appear on the edge of the plot area. When the axis' `min` option is set or a min extreme is set
  final num? minPadding;

  /// (Highstock, Gantt) The minimum tick interval allowed in axis values. For example on zooming in on an axis with daily data, this can be used to prevent the axis from showing hours. Defaults to the closest distance between two points on the axis.
  final num? minTickInterval;

  /// (Highstock, Gantt) The distance in pixels from the plot area to the axis line. A positive offset moves the axis with its line, labels and ticks away from the plot area. This is typically used when two or more axes are displayed on the same side of the plot. With multiple axes the offset is dynamical
  final num? offset;

  /// (Highstock) In an ordinal axis, the points are equally spaced in the chart regardless of the actual time or x distance between them. This means that missing data periods (e.g. nights or weekends for a stock chart) will not take up space in the chart. Having `ordinal: false` will show any gaps create
  final bool? ordinal;

  /// (Highstock) Additional range on the right side of the xAxis. Works similar to `xAxis.maxPadding`, but the value is set in terms of axis values, percentage or pixels.
  final dynamic overscroll;

  /// (Highstock, Gantt) Whether to pan axis. If `chart.panning` is enabled, the option allows to disable panning on an individual axis.
  final bool? panningEnabled;

  /// (Highcharts, Highstock, Gantt) An array of colored bands stretching across the plot area marking an interval on the axis.
  final List<HCNavigatorXAxisPlotBandsOptions>? plotBands;

  /// (Highcharts, Highstock, Gantt) An array of lines stretching across the plot area, marking a specific value on one of the axes.
  final List<HCNavigatorXAxisPlotLinesOptions>? plotLines;

  /// (Highstock, Gantt) Whether to reverse the axis so that the highest number is closest to the origin. If the chart is inverted, the x axis is reversed by default.
  final bool? reversed;

  /// (Highcharts, Highstock) This option determines how stacks should be ordered within a group. For example reversed xAxis also reverses stacks, so first series comes last in a group. To keep order like for non-reversed xAxis enable this option.
  final bool? reversedStacks;

  /// (Highstock, Gantt) Whether to show the first tick label.
  final bool? showFirstLabel;

  /// (Highcharts, Highstock, Gantt) Whether to show the last tick label. Defaults to `true` on cartesian charts, and `false` on polar charts.
  final bool? showLastLabel;

  /// (Highcharts, Highstock, Gantt) A soft maximum for the axis. If the series data maximum is less than this, the axis will stay at this maximum, but if the series data maximum is higher, the axis will flex to show all data.
  final num? softMax;

  /// (Highcharts, Highstock, Gantt) A soft minimum for the axis. If the series data minimum is greater than this, the axis will stay at this minimum, but if the series data minimum is lower, the axis will flex to show all data.
  final num? softMin;

  /// (Highcharts, Highstock, Gantt) For datetime axes, this decides where to put the tick between weeks. 0 = Sunday, 1 = Monday.
  final num? startOfWeek;

  /// (Highstock, Gantt) Whether to force the axis to start on a tick. Use this option with the `minPadding` option to control the axis start.
  final bool? startOnTick;

  /// (Highcharts, Highstock, Gantt) For vertical axes only. Setting the static scale ensures that each tick unit is translated into a fixed pixel height. For example, setting the static scale to 24 results in each Y axis category taking up 24 pixels, and the height of the chart adjusts. Adding or removin
  final num? staticScale;

  /// (Highcharts, Highstock, Gantt) The amount of ticks to draw on the axis. This opens up for aligning the ticks of multiple charts or panes within a chart. This option overrides the `tickPixelInterval` option.
  final num? tickAmount;

  /// (Highstock, Gantt) Color for the main tick marks.
  final dynamic tickColor;

  /// (Highstock, Gantt) The interval of the tick marks in axis units. When `undefined`, the tick interval is computed to approximately follow the tickPixelInterval on linear and datetime axes. On categorized axes, a `undefined` tickInterval will default to 1, one category. Note that datetime axes are bas
  final num? tickInterval;

  /// (Highstock, Gantt) The pixel length of the main tick marks.
  final num? tickLength;

  /// (Highcharts, Gantt) For categorized axes only. If `on` the tick mark is placed in the center of the category, if `between` the tick mark is placed between categories. The default is `between` if the `tickInterval` is 1, else `on`. In order to render tick marks on a category axis it is necessary to p
  final String? tickmarkPlacement;

  /// (Highstock, Gantt) If tickInterval is `null` this option sets the approximate pixel interval of the tick marks. Not applicable to categorized axis.
  final num? tickPixelInterval;

  /// (Highstock, Gantt) The position of the major tick marks relative to the axis line. Can be one of `inside` and `outside`.
  final String? tickPosition;

  /// (Highstock, Gantt) An array defining where the ticks are laid out on the axis. This overrides the default behavior of tickPixelInterval and tickInterval.
  final List<num>? tickPositions;

  /// (Highstock, Gantt) The pixel width of the major tick marks. Defaults to 0 on category axes, otherwise 1.
  final num? tickWidth;

  /// (Highstock, Gantt) The axis title, showing next to the axis line.
  final HCNavigatorXAxisTitleOptions? title;

  /// (Highcharts, Highstock) The top position as the vertical axis. If it's a number, it is interpreted as pixel position relative to the chart.
  final dynamic top;

  /// (Highcharts, Gantt) The type of axis. Can be one of `linear`, `logarithmic`, `datetime` or `category`. In a datetime axis, the numbers are given in milliseconds, and tick marks are placed on appropriate values like full hours or days. In a category axis, the point names of the chart's series are use
  final String? type;

  /// (Highcharts, Gantt) Applies only when the axis `type` is `category`. When `uniqueNames` is true, points are placed on the X axis according to their names. If the same point name is repeated in the same or another series, the point is placed on the same X position as other points of the same name. Wh
  final bool? uniqueNames;

  /// (Highcharts, Highstock, Gantt) Datetime axis only. An array determining what time intervals the ticks are allowed to fall on. Each array item is an array where the first value is the time unit and the second value another array of allowed multiples.
  final List<dynamic>? units;

  /// (Highcharts, Highstock, Gantt) Whether axis, including axis title, line, ticks and labels, should be visible.
  final bool? visible;

  /// (Highcharts, Highstock) The width as the horizontal axis. If it's a number, it is interpreted as pixels.
  final dynamic width;

  /// (Highstock, Gantt) The Z index for the axis group.
  final num? zIndex;

  /// (Highstock, Gantt) Whether to zoom axis. If `chart.zoomType` is set, the option allows to disable zooming on an individual axis.
  final bool? zoomEnabled;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (accessibility != null) {
      json['accessibility'] = accessibility!.toJson();
    }
    if (alignTicks != null) {
      json['alignTicks'] = alignTicks;
    }
    if (allowDecimals != null) {
      json['allowDecimals'] = allowDecimals;
    }
    if (alternateGridColor != null) {
      json['alternateGridColor'] = hcJsonValue(alternateGridColor);
    }
    if (breaks != null) {
      json['breaks'] = breaks!.map((e) => e.toJson()).toList();
    }
    if (categories != null) {
      json['categories'] = categories;
    }
    if (ceiling != null) {
      json['ceiling'] = ceiling;
    }
    if (className != null) {
      json['className'] = className;
    }
    if (crosshair != null) {
      json['crosshair'] = hcJsonValue(crosshair);
    }
    if (crossing != null) {
      json['crossing'] = crossing;
    }
    if (currentDateIndicator != null) {
      json['currentDateIndicator'] = hcJsonValue(currentDateIndicator);
    }
    if (dateTimeLabelFormats != null) {
      json['dateTimeLabelFormats'] = dateTimeLabelFormats!.toJson();
    }
    if (endOnTick != null) {
      json['endOnTick'] = endOnTick;
    }
    if (events != null) {
      json['events'] = events!.toJson();
    }
    if (floor != null) {
      json['floor'] = floor;
    }
    if (grid != null) {
      json['grid'] = grid!.toJson();
    }
    if (gridLineColor != null) {
      json['gridLineColor'] = gridLineColor;
    }
    if (gridLineDashStyle != null) {
      json['gridLineDashStyle'] = gridLineDashStyle;
    }
    if (gridLineWidth != null) {
      json['gridLineWidth'] = gridLineWidth;
    }
    if (gridZIndex != null) {
      json['gridZIndex'] = gridZIndex;
    }
    if (height != null) {
      json['height'] = hcJsonValue(height);
    }
    if (id != null) {
      json['id'] = id;
    }
    if (labels != null) {
      json['labels'] = labels!.toJson();
    }
    if (left != null) {
      json['left'] = hcJsonValue(left);
    }
    if (lineColor != null) {
      json['lineColor'] = hcJsonValue(lineColor);
    }
    if (lineWidth != null) {
      json['lineWidth'] = lineWidth;
    }
    if (margin != null) {
      json['margin'] = margin;
    }
    if (max != null) {
      json['max'] = hcJsonValue(max);
    }
    if (maxPadding != null) {
      json['maxPadding'] = maxPadding;
    }
    if (min != null) {
      json['min'] = hcJsonValue(min);
    }
    if (minorGridLineColor != null) {
      json['minorGridLineColor'] = hcJsonValue(minorGridLineColor);
    }
    if (minorGridLineDashStyle != null) {
      json['minorGridLineDashStyle'] = minorGridLineDashStyle;
    }
    if (minorGridLineWidth != null) {
      json['minorGridLineWidth'] = minorGridLineWidth;
    }
    if (minorTickColor != null) {
      json['minorTickColor'] = hcJsonValue(minorTickColor);
    }
    if (minorTickInterval != null) {
      json['minorTickInterval'] = hcJsonValue(minorTickInterval);
    }
    if (minorTickLength != null) {
      json['minorTickLength'] = minorTickLength;
    }
    if (minorTickPosition != null) {
      json['minorTickPosition'] = minorTickPosition;
    }
    if (minorTicks != null) {
      json['minorTicks'] = minorTicks;
    }
    if (minorTicksPerMajor != null) {
      json['minorTicksPerMajor'] = minorTicksPerMajor;
    }
    if (minorTickWidth != null) {
      json['minorTickWidth'] = minorTickWidth;
    }
    if (minPadding != null) {
      json['minPadding'] = minPadding;
    }
    if (minTickInterval != null) {
      json['minTickInterval'] = minTickInterval;
    }
    if (offset != null) {
      json['offset'] = offset;
    }
    if (ordinal != null) {
      json['ordinal'] = ordinal;
    }
    if (overscroll != null) {
      json['overscroll'] = hcJsonValue(overscroll);
    }
    if (panningEnabled != null) {
      json['panningEnabled'] = panningEnabled;
    }
    if (plotBands != null) {
      json['plotBands'] = plotBands!.map((e) => e.toJson()).toList();
    }
    if (plotLines != null) {
      json['plotLines'] = plotLines!.map((e) => e.toJson()).toList();
    }
    if (reversed != null) {
      json['reversed'] = reversed;
    }
    if (reversedStacks != null) {
      json['reversedStacks'] = reversedStacks;
    }
    if (showFirstLabel != null) {
      json['showFirstLabel'] = showFirstLabel;
    }
    if (showLastLabel != null) {
      json['showLastLabel'] = showLastLabel;
    }
    if (softMax != null) {
      json['softMax'] = softMax;
    }
    if (softMin != null) {
      json['softMin'] = softMin;
    }
    if (startOfWeek != null) {
      json['startOfWeek'] = startOfWeek;
    }
    if (startOnTick != null) {
      json['startOnTick'] = startOnTick;
    }
    if (staticScale != null) {
      json['staticScale'] = staticScale;
    }
    if (tickAmount != null) {
      json['tickAmount'] = tickAmount;
    }
    if (tickColor != null) {
      json['tickColor'] = hcJsonValue(tickColor);
    }
    if (tickInterval != null) {
      json['tickInterval'] = tickInterval;
    }
    if (tickLength != null) {
      json['tickLength'] = tickLength;
    }
    if (tickmarkPlacement != null) {
      json['tickmarkPlacement'] = tickmarkPlacement;
    }
    if (tickPixelInterval != null) {
      json['tickPixelInterval'] = tickPixelInterval;
    }
    if (tickPosition != null) {
      json['tickPosition'] = tickPosition;
    }
    if (tickPositions != null) {
      json['tickPositions'] = tickPositions;
    }
    if (tickWidth != null) {
      json['tickWidth'] = tickWidth;
    }
    if (title != null) {
      json['title'] = title!.toJson();
    }
    if (top != null) {
      json['top'] = hcJsonValue(top);
    }
    if (type != null) {
      json['type'] = type;
    }
    if (uniqueNames != null) {
      json['uniqueNames'] = uniqueNames;
    }
    if (units != null) {
      json['units'] = units!.map((e) => hcJsonValue(e)).toList();
    }
    if (visible != null) {
      json['visible'] = visible;
    }
    if (width != null) {
      json['width'] = hcJsonValue(width);
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

/// (Highcharts, Highstock, Gantt) An object defining mouse events for the plot band. Supported properties are `click`, `mouseover`, `mouseout`, `mousemove`.
class HCNavigatorXAxisPlotBandsEventsOptions implements HCOption {
  const HCNavigatorXAxisPlotBandsEventsOptions();

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    return json;
  }
}

/// (Highcharts, Highstock, Gantt) Text labels for the plot bands
class HCNavigatorXAxisPlotBandsLabelOptions implements HCOption {
  const HCNavigatorXAxisPlotBandsLabelOptions({
    this.align,
    this.allowOverlap,
    this.inside,
    this.rotation,
    this.style,
    this.text,
    this.textAlign,
    this.useHTML,
    this.verticalAlign,
    this.x,
    this.y,
  });

  /// (Highcharts, Highstock, Gantt) Horizontal alignment of the label. Can be one of "left", "center" or "right".
  final String? align;

  /// (Highcharts, Highstock, Gantt) Whether or not the label can be hidden if it overlaps with another label.
  final bool? allowOverlap;

  /// (Highcharts, Highstock, Gantt) Wether or not the text of the label can exceed the width of the label.
  final bool? inside;

  /// (Highcharts, Highstock, Gantt) Rotation of the text label in degrees .
  final num? rotation;

  /// (Highcharts, Highstock, Gantt) CSS styles for the text label.
  final HCCSSObject? style;

  /// (Highcharts, Highstock, Gantt) The string text itself. A subset of HTML is supported.
  final String? text;

  /// (Highcharts, Highstock, Gantt) The text alignment for the label. While `align` determines where the texts anchor point is placed within the plot band, `textAlign` determines how the text is aligned against its anchor point. Possible values are "left", "center" and "right". Defaults to the same as th
  final String? textAlign;

  /// (Highcharts, Highstock, Gantt) Whether to use HTML to render the labels.
  final bool? useHTML;

  /// (Highcharts, Highstock, Gantt) Vertical alignment of the label relative to the plot band. Can be one of "top", "middle" or "bottom".
  final String? verticalAlign;

  /// (Highcharts, Highstock, Gantt) Horizontal position relative the alignment. Default varies by orientation.
  final num? x;

  /// (Highcharts, Highstock, Gantt) Vertical position of the text baseline relative to the alignment. Default varies by orientation.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (align != null) {
      json['align'] = align;
    }
    if (allowOverlap != null) {
      json['allowOverlap'] = allowOverlap;
    }
    if (inside != null) {
      json['inside'] = inside;
    }
    if (rotation != null) {
      json['rotation'] = rotation;
    }
    if (style != null) {
      json['style'] = style!.toJson();
    }
    if (text != null) {
      json['text'] = text;
    }
    if (textAlign != null) {
      json['textAlign'] = textAlign;
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
    return json;
  }
}

/// (Highcharts, Highstock, Gantt) An array of colored bands stretching across the plot area marking an interval on the axis.
class HCNavigatorXAxisPlotBandsOptions implements HCOption {
  const HCNavigatorXAxisPlotBandsOptions({
    this.acrossPanes,
    this.borderColor,
    this.borderRadius,
    this.borderWidth,
    this.className,
    this.color,
    this.events,
    this.from,
    this.id,
    this.label,
    this.to,
    this.zIndex,
  });

  /// (Highstock) Flag to decide if plotBand should be rendered across all panes.
  final bool? acrossPanes;

  /// (Highcharts, Highstock, Gantt) Border color for the plot band. Also requires `borderWidth` to be set.
  final String? borderColor;

  /// (Highcharts, Highstock, Gantt) Border radius for the plot band. Applies only to gauges. Can be a pixel value or a percentage, for example `50%`.
  final dynamic borderRadius;

  /// (Highcharts, Highstock, Gantt) Border width for the plot band. Also requires `borderColor` to be set.
  final num? borderWidth;

  /// (Highcharts, Highstock, Gantt) A custom class name, in addition to the default `highcharts-plot-band`, to apply to each individual band.
  final String? className;

  /// (Highcharts, Highstock, Gantt) The color of the plot band.
  final dynamic color;

  /// (Highcharts, Highstock, Gantt) An object defining mouse events for the plot band. Supported properties are `click`, `mouseover`, `mouseout`, `mousemove`.
  final HCNavigatorXAxisPlotBandsEventsOptions? events;

  /// (Highcharts, Highstock, Gantt) The start position of the plot band in axis units.
  final dynamic from;

  /// (Highcharts, Highstock, Gantt) An id used for identifying the plot band in Axis.removePlotBand.
  final String? id;

  /// (Highcharts, Highstock, Gantt) Text labels for the plot bands
  final HCNavigatorXAxisPlotBandsLabelOptions? label;

  /// (Highcharts, Highstock, Gantt) The end position of the plot band in axis units.
  final dynamic to;

  /// (Highcharts, Highstock, Gantt) The z index of the plot band within the chart, relative to other elements. Using the same z index as another element may give unpredictable results, as the last rendered element will be on top. Values from 0 to 20 make sense.
  final num? zIndex;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (acrossPanes != null) {
      json['acrossPanes'] = acrossPanes;
    }
    if (borderColor != null) {
      json['borderColor'] = borderColor;
    }
    if (borderRadius != null) {
      json['borderRadius'] = hcJsonValue(borderRadius);
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
    if (events != null) {
      json['events'] = events!.toJson();
    }
    if (from != null) {
      json['from'] = hcJsonValue(from);
    }
    if (id != null) {
      json['id'] = id;
    }
    if (label != null) {
      json['label'] = label!.toJson();
    }
    if (to != null) {
      json['to'] = hcJsonValue(to);
    }
    if (zIndex != null) {
      json['zIndex'] = zIndex;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Gantt) An object defining mouse events for the plot line. Supported properties are `click`, `mouseover`, `mouseout`, `mousemove`.
class HCNavigatorXAxisPlotLinesEventsOptions implements HCOption {
  const HCNavigatorXAxisPlotLinesEventsOptions();

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    return json;
  }
}

/// (Highcharts, Highstock, Gantt) Text labels for the plot lines
class HCNavigatorXAxisPlotLinesLabelOptions implements HCOption {
  const HCNavigatorXAxisPlotLinesLabelOptions({
    this.align,
    this.rotation,
    this.style,
    this.text,
    this.textAlign,
    this.useHTML,
    this.verticalAlign,
    this.x,
    this.y,
  });

  /// (Highcharts, Highstock, Gantt) Horizontal alignment of the label. Can be one of "left", "center" or "right".
  final String? align;

  /// (Highcharts, Highstock, Gantt) Rotation of the text label in degrees. Defaults to 0 for horizontal plot lines and 90 for vertical lines.
  final num? rotation;

  /// (Highcharts, Highstock, Gantt) CSS styles for the text label.
  final HCCSSObject? style;

  /// (Highcharts, Highstock, Gantt) The text itself. A subset of HTML is supported.
  final String? text;

  /// (Highcharts, Highstock, Gantt) The text alignment for the label. While `align` determines where the texts anchor point is placed within the plot band, `textAlign` determines how the text is aligned against its anchor point. Possible values are "left", "center" and "right". Defaults to the same as th
  final String? textAlign;

  /// (Highcharts, Highstock, Gantt) Whether to use HTML to render the labels.
  final bool? useHTML;

  /// (Highcharts, Highstock, Gantt) Vertical alignment of the label relative to the plot line. Can be one of "top", "middle" or "bottom".
  final String? verticalAlign;

  /// (Highcharts, Highstock, Gantt) Horizontal position relative the alignment. Default varies by orientation.
  final num? x;

  /// (Highcharts, Highstock, Gantt) Vertical position of the text baseline relative to the alignment. Default varies by orientation.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (align != null) {
      json['align'] = align;
    }
    if (rotation != null) {
      json['rotation'] = rotation;
    }
    if (style != null) {
      json['style'] = style!.toJson();
    }
    if (text != null) {
      json['text'] = text;
    }
    if (textAlign != null) {
      json['textAlign'] = textAlign;
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
    return json;
  }
}

class HCNavigatorXAxisPlotLinesLabelsOptions implements HCOption {
  const HCNavigatorXAxisPlotLinesLabelsOptions({
    this.clip,
  });

  /// (Highcharts, Highstock, Gantt) Whether to hide labels that are outside the plot area.
  final bool? clip;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (clip != null) {
      json['clip'] = clip;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Gantt) An array of lines stretching across the plot area, marking a specific value on one of the axes.
class HCNavigatorXAxisPlotLinesOptions implements HCOption {
  const HCNavigatorXAxisPlotLinesOptions({
    this.acrossPanes,
    this.className,
    this.color,
    this.dashStyle,
    this.events,
    this.id,
    this.label,
    this.labels,
    this.value,
    this.width,
    this.zIndex,
  });

  /// (Highstock) Flag to decide if plotLine should be rendered across all panes.
  final bool? acrossPanes;

  /// (Highcharts, Highstock, Gantt) A custom class name, in addition to the default `highcharts-plot-line`, to apply to each individual line.
  final String? className;

  /// (Highcharts, Highstock, Gantt) The color of the line.
  final String? color;

  /// (Highcharts, Highstock, Gantt) The dashing or dot style for the plot line. For possible values see this overview.
  final String? dashStyle;

  /// (Highcharts, Highstock, Gantt) An object defining mouse events for the plot line. Supported properties are `click`, `mouseover`, `mouseout`, `mousemove`.
  final HCNavigatorXAxisPlotLinesEventsOptions? events;

  /// (Highcharts, Highstock, Gantt) An id used for identifying the plot line in Axis.removePlotLine.
  final String? id;

  /// (Highcharts, Highstock, Gantt) Text labels for the plot lines
  final HCNavigatorXAxisPlotLinesLabelOptions? label;

  final HCNavigatorXAxisPlotLinesLabelsOptions? labels;

  /// (Highcharts, Highstock, Gantt) The position of the line in axis units.
  final dynamic value;

  /// (Highcharts, Highstock, Gantt) The width or thickness of the plot line.
  final num? width;

  /// (Highcharts, Highstock, Gantt) The z index of the plot line within the chart.
  final num? zIndex;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (acrossPanes != null) {
      json['acrossPanes'] = acrossPanes;
    }
    if (className != null) {
      json['className'] = className;
    }
    if (color != null) {
      json['color'] = color;
    }
    if (dashStyle != null) {
      json['dashStyle'] = dashStyle;
    }
    if (events != null) {
      json['events'] = events!.toJson();
    }
    if (id != null) {
      json['id'] = id;
    }
    if (label != null) {
      json['label'] = label!.toJson();
    }
    if (labels != null) {
      json['labels'] = labels!.toJson();
    }
    if (value != null) {
      json['value'] = hcJsonValue(value);
    }
    if (width != null) {
      json['width'] = width;
    }
    if (zIndex != null) {
      json['zIndex'] = zIndex;
    }
    return json;
  }
}

/// (Highstock, Gantt) The axis title, showing next to the axis line.
class HCNavigatorXAxisTitleOptions implements HCOption {
  const HCNavigatorXAxisTitleOptions({
    this.align,
    this.margin,
    this.offset,
    this.reserveSpace,
    this.rotation,
    this.style,
    this.text,
    this.textAlign,
    this.useHTML,
    this.x,
    this.y,
  });

  /// (Highstock, Gantt) Alignment of the title relative to the axis values. Possible values are "low", "middle" or "high".
  final String? align;

  /// (Highstock, Gantt) The pixel distance between the axis labels or line and the title. Defaults to 0 for horizontal axes, 10 for vertical
  final num? margin;

  /// (Highstock, Gantt) The distance from the plot area to the axis line. A positive offset moves the axis with its line, labels and ticks away from the plot area. With multiple axes the offset is dynamically adjusted to avoid collision, this can be overridden by setting offset explicitly.
  final dynamic offset;

  /// (Highcharts, Highstock, Gantt) Whether to reserve space for the title when laying out the axis.
  final bool? reserveSpace;

  /// (Highstock, Gantt) The rotation of the text in degrees. 0 is horizontal, 270 is vertical reading from bottom to top. Defaults to 0 for horizontal axes, 270 for left-side axes and 90 for right-side axes.
  final num? rotation;

  /// (Highstock, Gantt) CSS styles for the title. If the title text is longer than the axis length, it will wrap to multiple lines by default. This can be customized by setting the `lineClamp` property, by setting a specific `width` or by setting `whiteSpace: 'nowrap'`.
  final dynamic style;

  /// (Highstock, Gantt) The actual text of the axis title. It can contain basic HTML tags like `b`, `i` and `span` with style.
  final String? text;

  /// (Highstock, Gantt) Alignment of the text, can be `"left"`, `"right"` or `"center"`. Default alignment depends on the title.align:
  final String? textAlign;

  /// (Highcharts, Highstock, Gantt) Whether to use HTML to render the axis title.
  final bool? useHTML;

  /// (Highcharts, Highstock, Gantt) Horizontal pixel offset of the title position.
  final num? x;

  /// (Highcharts, Highstock, Gantt) Vertical pixel offset of the title position.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (align != null) {
      json['align'] = align;
    }
    if (margin != null) {
      json['margin'] = margin;
    }
    if (offset != null) {
      json['offset'] = hcJsonValue(offset);
    }
    if (reserveSpace != null) {
      json['reserveSpace'] = reserveSpace;
    }
    if (rotation != null) {
      json['rotation'] = rotation;
    }
    if (style != null) {
      json['style'] = hcJsonValue(style);
    }
    if (text != null) {
      json['text'] = text;
    }
    if (textAlign != null) {
      json['textAlign'] = textAlign;
    }
    if (useHTML != null) {
      json['useHTML'] = useHTML;
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

/// (Highstock, Gantt) CSS styles for the title. If the title text is longer than the axis length, it will wrap to multiple lines by default. This can be customized by setting the `lineClamp` property, by setting a specific `width` or by setting `whiteSpace: 'nowrap'`.
class HCNavigatorXAxisTitleStyleOptions implements HCOption {
  const HCNavigatorXAxisTitleStyleOptions({
    this.color,
    this.fontSize,
  });

  final dynamic color;

  final dynamic fontSize;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (color != null) {
      json['color'] = hcJsonValue(color);
    }
    if (fontSize != null) {
      json['fontSize'] = hcJsonValue(fontSize);
    }
    return json;
  }
}

/// (Highcharts, Highstock, Gantt) An array defining breaks in the axis, the sections defined will be left out and all the points shifted closer to each other.
class HCNavigatorYAxisBreaksOptions implements HCOption {
  const HCNavigatorYAxisBreaksOptions({
    this.breakSize,
    this.from,
    this.repeat,
    this.to,
  });

  /// (Highcharts, Highstock, Gantt) A number indicating how much space should be left between the start and the end of the break. The break size is given in axis units, so for instance on a `datetime` axis, a break size of 3600000 would indicate the equivalent of an hour.
  final num? breakSize;

  /// (Highcharts, Highstock, Gantt) The axis value where the break starts. On datetime axes, this may be a date string.
  final dynamic from;

  /// (Highcharts, Highstock, Gantt) Defines an interval after which the break appears again. By default the breaks do not repeat.
  final num? repeat;

  /// (Highcharts, Highstock, Gantt) The axis value where the break ends. On datetime axes, this may be a date string.
  final dynamic to;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (breakSize != null) {
      json['breakSize'] = breakSize;
    }
    if (from != null) {
      json['from'] = hcJsonValue(from);
    }
    if (repeat != null) {
      json['repeat'] = repeat;
    }
    if (to != null) {
      json['to'] = hcJsonValue(to);
    }
    return json;
  }
}

/// (Highstock, Gantt) Event handlers for the axis.
class HCNavigatorYAxisEventsOptions implements HCOption {
  const HCNavigatorYAxisEventsOptions();

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    return json;
  }
}

/// (Gantt) Set grid options for the axis labels. Requires Highcharts Gantt.
class HCNavigatorYAxisGridOptions implements HCOption {
  const HCNavigatorYAxisGridOptions({
    this.borderColor,
    this.borderWidth,
    this.cellHeight,
    this.columns,
    this.enabled,
  });

  /// (Gantt) Set border color for the label grid lines.
  final String? borderColor;

  /// (Gantt) Set border width of the label grid lines.
  final num? borderWidth;

  /// (Gantt) Set cell height for grid axis labels. By default this is calculated from font size. This option only applies to horizontal axes. For vertical axes, check the .yAxis.staticScale option.
  final num? cellHeight;

  /// (Gantt) Set specific options for each column (or row for horizontal axes) in the grid. Each extra column/row is its own axis, and the axis options can be set here.
  final List<HCXAxisOptions>? columns;

  /// (Gantt) Enable grid on the axis labels. Defaults to true for Gantt charts.
  final bool? enabled;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (borderColor != null) {
      json['borderColor'] = borderColor;
    }
    if (borderWidth != null) {
      json['borderWidth'] = borderWidth;
    }
    if (cellHeight != null) {
      json['cellHeight'] = cellHeight;
    }
    if (columns != null) {
      json['columns'] = columns!.map((e) => e.toJson()).toList();
    }
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    return json;
  }
}

/// (Gantt) Set options on specific levels in a tree grid axis. Takes precedence over labels options.
class HCNavigatorYAxisLabelsLevelsOptions implements HCOption {
  const HCNavigatorYAxisLabelsLevelsOptions({
    this.level,
    this.style,
  });

  /// (Gantt) Specify the level which the options within this object applies to.
  final num? level;

  final HCCSSObject? style;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (level != null) {
      json['level'] = level;
    }
    if (style != null) {
      json['style'] = style!.toJson();
    }
    return json;
  }
}

/// (Highstock, Gantt) The axis labels show the number or category for each tick.
class HCNavigatorYAxisLabelsOptions implements HCOption {
  const HCNavigatorYAxisLabelsOptions({
    this.align,
    this.allowOverlap,
    this.autoRotation,
    this.autoRotationLimit,
    this.enabled,
    this.format,
    this.indentation,
    this.levels,
    this.maxStaggerLines,
    this.overflow,
    this.padding,
    this.reserveSpace,
    this.rotation,
    this.staggerLines,
    this.step,
    this.style,
    this.symbol,
    this.useHTML,
    this.x,
    this.y,
    this.zIndex,
  });

  /// (Highstock, Gantt) What part of the string the given position is anchored to. Can be one of `"left"`, `"center"` or `"right"`. The exact position also depends on the `labels.x` setting.
  final String? align;

  /// (Highstock, Gantt) Whether to allow the axis labels to overlap. When false, overlapping labels are hidden.
  final bool? allowOverlap;

  /// (Highcharts, Highstock, Gantt) For horizontal axes, the allowed degrees of label rotation to prevent overlapping labels. If there is enough space, labels are not rotated. As the chart gets narrower, it will start rotating the labels -45 degrees, then remove every second label and try again with rota
  final List<num>? autoRotation;

  /// (Highcharts, Gantt) When each category width is more than this many pixels, we don't apply auto rotation. Instead, we lay out the axis label with word wrap. A lower limit makes sense when the label contains multiple short words that don't extend the available horizontal space for each label.
  final num? autoRotationLimit;

  /// (Highstock, Gantt) Enable or disable the axis labels.
  final bool? enabled;

  /// (Highstock, Gantt) A format string for the axis label. The context is available as format string variables. For example, you can use `{text}` to insert the default formatted text. The recommended way of adding units for the label is using `text`, for example `{text} km`.
  final String? format;

  /// (Gantt) The number of pixels to indent the labels per level in a treegrid axis.
  final num? indentation;

  /// (Gantt) Set options on specific levels in a tree grid axis. Takes precedence over labels options.
  final List<HCNavigatorYAxisLabelsLevelsOptions>? levels;

  /// (Highstock, Gantt) Horizontal axis only. When `staggerLines` is not set, `maxStaggerLines` defines how many lines the axis is allowed to add to automatically avoid overlapping X labels. Set to `1` to disable overlap detection.
  final num? maxStaggerLines;

  /// (Highstock, Gantt) How to handle overflowing labels on horizontal axis. If set to `"allow"`, it will not be aligned at all. By default it `"justify"` labels inside the chart area. If there is room to move it, it will be aligned to the edge, else it will be removed.
  final String? overflow;

  /// (Highcharts, Gantt) The pixel padding for axis labels, to ensure white space between them. Defaults to 4 for horizontal axes, 1 for vertical.
  final num? padding;

  /// (Highcharts, Highstock, Gantt) Whether to reserve space for the labels. By default, space is reserved for the labels in these cases:
  final bool? reserveSpace;

  /// (Highstock, Gantt) Rotation of the labels in degrees. When `undefined`, the `autoRotation` option takes precedence.
  final num? rotation;

  /// (Highstock, Gantt) Horizontal axes only. The number of lines to spread the labels over to make room or tighter labels. 0 disables staggering.
  final num? staggerLines;

  /// (Highstock, Gantt) To show only every _n_'th label on the axis, set the step to _n_. Setting the step to 2 shows every other label.
  final num? step;

  /// (Highstock, Gantt) CSS styles for the label. Use `lineClamp` to control wrapping of category labels. Use `textOverflow: 'none'` to prevent ellipsis (dots).
  final dynamic style;

  /// (Gantt) The symbol for the collapse and expand icon in a treegrid.
  final HCNavigatorYAxisLabelsSymbolOptions? symbol;

  /// (Highstock, Gantt) Whether to use HTML to render the labels.
  final bool? useHTML;

  /// (Highstock, Gantt) The x position offset of all labels relative to the tick positions on the axis. Defaults to -15 for left axis, 15 for right axis.
  final num? x;

  /// (Highstock, Gantt) The y position offset of all labels relative to the tick positions on the axis. For polar and radial axis consider the use of the distance option.
  final num? y;

  /// (Highstock, Gantt) The Z index for the axis labels.
  final num? zIndex;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (align != null) {
      json['align'] = align;
    }
    if (allowOverlap != null) {
      json['allowOverlap'] = allowOverlap;
    }
    if (autoRotation != null) {
      json['autoRotation'] = autoRotation;
    }
    if (autoRotationLimit != null) {
      json['autoRotationLimit'] = autoRotationLimit;
    }
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    if (format != null) {
      json['format'] = format;
    }
    if (indentation != null) {
      json['indentation'] = indentation;
    }
    if (levels != null) {
      json['levels'] = levels!.map((e) => e.toJson()).toList();
    }
    if (maxStaggerLines != null) {
      json['maxStaggerLines'] = maxStaggerLines;
    }
    if (overflow != null) {
      json['overflow'] = overflow;
    }
    if (padding != null) {
      json['padding'] = padding;
    }
    if (reserveSpace != null) {
      json['reserveSpace'] = reserveSpace;
    }
    if (rotation != null) {
      json['rotation'] = rotation;
    }
    if (staggerLines != null) {
      json['staggerLines'] = staggerLines;
    }
    if (step != null) {
      json['step'] = step;
    }
    if (style != null) {
      json['style'] = hcJsonValue(style);
    }
    if (symbol != null) {
      json['symbol'] = symbol!.toJson();
    }
    if (useHTML != null) {
      json['useHTML'] = useHTML;
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

/// (Highstock, Gantt) CSS styles for the label. Use `lineClamp` to control wrapping of category labels. Use `textOverflow: 'none'` to prevent ellipsis (dots).
class HCNavigatorYAxisLabelsStyleOptions implements HCOption {
  const HCNavigatorYAxisLabelsStyleOptions({
    this.color,
    this.cursor,
    this.fontSize,
    this.textOverflow,
  });

  final dynamic color;

  final String? cursor;

  final num? fontSize;

  final String? textOverflow;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (color != null) {
      json['color'] = hcJsonValue(color);
    }
    if (cursor != null) {
      json['cursor'] = cursor;
    }
    if (fontSize != null) {
      json['fontSize'] = fontSize;
    }
    if (textOverflow != null) {
      json['textOverflow'] = textOverflow;
    }
    return json;
  }
}

/// (Gantt) The symbol for the collapse and expand icon in a treegrid.
class HCNavigatorYAxisLabelsSymbolOptions implements HCOption {
  const HCNavigatorYAxisLabelsSymbolOptions({
    this.height,
    this.type,
    this.width,
    this.x,
    this.y,
  });

  final num? height;

  /// (Gantt) The symbol type. Points to a definition function in the `Highcharts.Renderer.symbols` collection.
  final String? type;

  final num? width;

  final num? x;

  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (height != null) {
      json['height'] = height;
    }
    if (type != null) {
      json['type'] = type;
    }
    if (width != null) {
      json['width'] = width;
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

/// (Highstock, Gantt) Options for the navigator Y axis. Default series options for the navigator yAxis are: (see online documentation for example)
class HCNavigatorYAxisOptions implements HCOption {
  const HCNavigatorYAxisOptions({
    this.accessibility,
    this.alignTicks,
    this.allowDecimals,
    this.alternateGridColor,
    this.breaks,
    this.categories,
    this.ceiling,
    this.className,
    this.crosshair,
    this.crossing,
    this.dateTimeLabelFormats,
    this.endOnTick,
    this.events,
    this.floor,
    this.grid,
    this.gridLineColor,
    this.gridLineDashStyle,
    this.gridLineWidth,
    this.gridZIndex,
    this.id,
    this.labels,
    this.left,
    this.lineColor,
    this.lineWidth,
    this.margin,
    this.max,
    this.maxPadding,
    this.min,
    this.minorGridLineColor,
    this.minorGridLineDashStyle,
    this.minorGridLineWidth,
    this.minorTickColor,
    this.minorTickInterval,
    this.minorTickLength,
    this.minorTickPosition,
    this.minorTicks,
    this.minorTicksPerMajor,
    this.minorTickWidth,
    this.minPadding,
    this.minTickInterval,
    this.offset,
    this.opposite,
    this.panningEnabled,
    this.plotBands,
    this.plotLines,
    this.reversed,
    this.reversedStacks,
    this.showFirstLabel,
    this.showLastLabel,
    this.softMax,
    this.softMin,
    this.startOfWeek,
    this.startOnTick,
    this.staticScale,
    this.tickAmount,
    this.tickColor,
    this.tickInterval,
    this.tickLength,
    this.tickmarkPlacement,
    this.tickPixelInterval,
    this.tickPosition,
    this.tickPositions,
    this.tickWidth,
    this.title,
    this.type,
    this.uniqueNames,
    this.visible,
    this.width,
    this.zIndex,
    this.zoomEnabled,
  });

  /// (Highstock, Gantt) Accessibility options for an axis. Requires the accessibility module.
  final HCAxisAccessibilityOptionsObject? accessibility;

  /// (Highcharts, Highstock, Gantt) When using multiple axis, the ticks of two or more opposite axes will automatically be aligned by adding ticks to the axis or axes with the least ticks, as if `tickAmount` were specified.
  final bool? alignTicks;

  /// (Highstock, Gantt) Whether to allow decimals in this axis' ticks. When counting integers, like persons or hits on a web page, decimals should be avoided in the labels. By default, decimals are allowed on small scale axes.
  final bool? allowDecimals;

  /// (Highstock, Gantt) When using an alternate grid color, a band is painted across the plot area between every other grid line.
  final dynamic alternateGridColor;

  /// (Highcharts, Highstock, Gantt) An array defining breaks in the axis, the sections defined will be left out and all the points shifted closer to each other.
  final List<HCNavigatorYAxisBreaksOptions>? breaks;

  /// (Highcharts, Gantt) If categories are present for the xAxis, names are used instead of numbers for that axis.
  final List<String>? categories;

  /// (Highcharts, Highstock, Gantt) The highest allowed value for automatically computed axis extremes.
  final num? ceiling;

  /// (Highstock, Gantt) A class name that opens for styling the axis by CSS, especially in Highcharts styled mode. The class name is applied to group elements for the grid, axis elements and labels.
  final String? className;

  /// (Highstock, Gantt) Configure a crosshair that follows either the mouse pointer or the hovered point.
  final dynamic crosshair;

  /// (Highstock, Gantt) The value on a perpendicular axis where this axis should cross. This is typically used on mathematical plots where the axes cross at 0. When `crossing` is set, space will not be reserved at the sides of the chart for axis labels and title, so those may be clipped. In this case it
  final num? crossing;

  /// (Highcharts, Highstock, Gantt) For a datetime axis, the scale will automatically adjust to the appropriate unit. This member gives the default representations used for each unit. For easier data interpretation, `hour`, `day`, `month` and `year` units can be used and formatted as boundary tick values
  final HCAxisDateTimeLabelFormatsOptions? dateTimeLabelFormats;

  /// (Highstock, Gantt) Whether to force the axis to end on a tick. Use this option with the `maxPadding` option to control the axis end.
  final bool? endOnTick;

  /// (Highstock, Gantt) Event handlers for the axis.
  final HCNavigatorYAxisEventsOptions? events;

  /// (Highcharts, Highstock, Gantt) The lowest allowed value for automatically computed axis extremes.
  final num? floor;

  /// (Gantt) Set grid options for the axis labels. Requires Highcharts Gantt.
  final HCNavigatorYAxisGridOptions? grid;

  /// (Highstock, Gantt) Color of the grid lines extending the ticks across the plot area.
  final dynamic gridLineColor;

  /// (Highstock, Gantt) The dash or dot style of the grid lines. For possible values, see this demonstration.
  final String? gridLineDashStyle;

  /// (Highstock, Gantt) The width of the grid lines extending the ticks across the plot area. Defaults to 1 on the Y axis and 0 on the X axis, except for 3d charts and gauges.
  final num? gridLineWidth;

  /// (Highcharts, Highstock, Gantt) The Z index of the grid lines.
  final num? gridZIndex;

  /// (Highstock, Gantt) An id for the axis. This can be used after render time to get a pointer to the axis object through `chart.get()`.
  final String? id;

  /// (Highstock, Gantt) The axis labels show the number or category for each tick.
  final HCNavigatorYAxisLabelsOptions? labels;

  /// (Highcharts, Highstock) The left position as the horizontal axis. If it's a number, it is interpreted as pixel position relative to the chart.
  final dynamic left;

  /// (Highstock, Gantt) The color of the line marking the axis itself.
  final dynamic lineColor;

  /// (Highstock, Gantt) The width of the line marking the axis itself.
  final num? lineWidth;

  /// (Highstock, Gantt) If there are multiple axes on the same side of the chart, the pixel margin between the axes. Defaults to 0 on vertical axes, 15 on horizontal axes.
  final num? margin;

  /// (Highstock, Gantt) The maximum value of the axis. If `undefined`, the max value is automatically calculated.
  final dynamic max;

  /// (Highcharts, Highstock, Gantt) Padding of the max value relative to the length of the axis. A padding of 0.05 will make a 100px axis 5px longer. This is useful when you don't want the highest data value to appear on the edge of the plot area. When the axis' `max` option is set or a max extreme is se
  final num? maxPadding;

  /// (Highstock, Gantt) The minimum value of the axis. If `undefined`, the min value is automatically calculated.
  final dynamic min;

  /// (Highstock, Gantt) Color of the minor, secondary grid lines.
  final dynamic minorGridLineColor;

  /// (Highstock, Gantt) The dash or dot style of the minor grid lines. For possible values, see this demonstration.
  final String? minorGridLineDashStyle;

  /// (Highstock, Gantt) Width of the minor, secondary grid lines.
  final num? minorGridLineWidth;

  /// (Highstock, Gantt) Color for the minor tick marks.
  final dynamic minorTickColor;

  /// (Highstock, Gantt) Specific tick interval in axis units for the minor ticks. On a linear axis, if `"auto"`, the minor tick interval is calculated as a fifth of the tickInterval. If `undefined`, minor ticks are not shown.
  final dynamic minorTickInterval;

  /// (Highstock, Gantt) The pixel length of the minor tick marks.
  final num? minorTickLength;

  /// (Highstock, Gantt) The position of the minor tick marks relative to the axis line. Can be one of `inside` and `outside`.
  final String? minorTickPosition;

  /// (Highstock, Gantt) Enable or disable minor ticks. The interval between the minor ticks can be controlled either by the minorTicksPerMajor setting, or as an absolute minorTickInterval value.
  final bool? minorTicks;

  /// (Highstock, Gantt) The number of minor ticks per major tick. Works for `linear`, `logarithmic` and `datetime` axes.
  final num? minorTicksPerMajor;

  /// (Highstock, Gantt) The pixel width of the minor tick mark.
  final num? minorTickWidth;

  /// (Highcharts, Highstock, Gantt) Padding of the min value relative to the length of the axis. A padding of 0.05 will make a 100px axis 5px longer. This is useful when you don't want the lowest data value to appear on the edge of the plot area. When the axis' `min` option is set or a max extreme is set
  final num? minPadding;

  /// (Highstock, Gantt) The minimum tick interval allowed in axis values. For example on zooming in on an axis with daily data, this can be used to prevent the axis from showing hours. Defaults to the closest distance between two points on the axis.
  final num? minTickInterval;

  /// (Highstock, Gantt) The distance in pixels from the plot area to the axis line. A positive offset moves the axis with its line, labels and ticks away from the plot area. This is typically used when two or more axes are displayed on the same side of the plot. With multiple axes the offset is dynamical
  final num? offset;

  /// (Highstock, Highcharts, Gantt) Whether to display the axis on the opposite side of the normal. The normal is on the left side for vertical axes and bottom for horizontal, so the opposite sides will be right and top respectively. This is typically used with dual or multiple axes.
  final bool? opposite;

  /// (Highstock, Gantt) Whether to pan axis. If `chart.panning` is enabled, the option allows to disable panning on an individual axis.
  final bool? panningEnabled;

  /// (Highcharts, Highstock, Gantt) An array of colored bands stretching across the plot area marking an interval on the axis.
  final List<HCNavigatorYAxisPlotBandsOptions>? plotBands;

  /// (Highcharts, Highstock, Gantt) An array of lines stretching across the plot area, marking a specific value on one of the axes.
  final List<HCNavigatorYAxisPlotLinesOptions>? plotLines;

  /// (Highstock, Gantt) Whether to reverse the axis so that the highest number is closest to the origin.
  final bool? reversed;

  /// (Highcharts, Highstock) If `true`, the first series in a stack will be drawn on top in a positive, non-reversed Y axis. If `false`, the first series is in the base of the stack.
  final bool? reversedStacks;

  /// (Highstock, Gantt) Whether to show the first tick label.
  final bool? showFirstLabel;

  /// (Highcharts, Highstock, Gantt) Whether to show the last tick label.
  final bool? showLastLabel;

  /// (Highcharts, Highstock, Gantt) A soft maximum for the axis. If the series data maximum is less than this, the axis will stay at this maximum, but if the series data maximum is higher, the axis will flex to show all data.
  final num? softMax;

  /// (Highcharts, Highstock, Gantt) A soft minimum for the axis. If the series data minimum is greater than this, the axis will stay at this minimum, but if the series data minimum is lower, the axis will flex to show all data.
  final num? softMin;

  /// (Highcharts, Highstock, Gantt) For datetime axes, this decides where to put the tick between weeks. 0 = Sunday, 1 = Monday.
  final num? startOfWeek;

  /// (Highcharts, Highstock, Gantt) Whether to force the axis to start on a tick. Use this option with the `maxPadding` option to control the axis start.
  final bool? startOnTick;

  /// (Highcharts, Highstock, Gantt) For vertical axes only. Setting the static scale ensures that each tick unit is translated into a fixed pixel height. For example, setting the static scale to 24 results in each Y axis category taking up 24 pixels, and the height of the chart adjusts. Adding or removin
  final num? staticScale;

  /// (Highcharts, Highstock, Gantt) The amount of ticks to draw on the axis. This opens up for aligning the ticks of multiple charts or panes within a chart. This option overrides the `tickPixelInterval` option.
  final num? tickAmount;

  /// (Highstock, Gantt) Color for the main tick marks.
  final dynamic tickColor;

  /// (Highstock, Gantt) The interval of the tick marks in axis units. When `undefined`, the tick interval is computed to approximately follow the tickPixelInterval on linear and datetime axes. On categorized axes, a `undefined` tickInterval will default to 1, one category. Note that datetime axes are bas
  final num? tickInterval;

  /// (Highstock, Gantt) The pixel length of the main tick marks.
  final num? tickLength;

  /// (Highcharts, Gantt) For categorized axes only. If `on` the tick mark is placed in the center of the category, if `between` the tick mark is placed between categories. The default is `between` if the `tickInterval` is 1, else `on`. In order to render tick marks on a category axis it is necessary to p
  final String? tickmarkPlacement;

  /// (Highstock, Gantt) If tickInterval is `null` this option sets the approximate pixel interval of the tick marks. Not applicable to categorized axis.
  final num? tickPixelInterval;

  /// (Highstock, Gantt) The position of the major tick marks relative to the axis line. Can be one of `inside` and `outside`.
  final String? tickPosition;

  /// (Highstock, Gantt) An array defining where the ticks are laid out on the axis. This overrides the default behavior of tickPixelInterval and tickInterval.
  final List<num>? tickPositions;

  /// (Highcharts, Highstock, Gantt) The pixel width of the major tick marks.
  final num? tickWidth;

  /// (Highstock, Gantt) The axis title, showing next to the axis line.
  final HCNavigatorYAxisTitleOptions? title;

  /// (Highcharts, Gantt) The type of axis. Can be one of `linear`, `logarithmic`, `datetime`, `category` or `treegrid`. Defaults to `treegrid` for Gantt charts, `linear` for other chart types.
  final String? type;

  /// (Highcharts, Gantt) Applies only when the axis `type` is `category`. When `uniqueNames` is true, points are placed on the X axis according to their names. If the same point name is repeated in the same or another series, the point is placed on the same X position as other points of the same name. Wh
  final bool? uniqueNames;

  /// (Highcharts, Highstock, Gantt) Whether axis, including axis title, line, ticks and labels, should be visible.
  final bool? visible;

  /// (Highcharts, Highstock) The width as the horizontal axis. If it's a number, it is interpreted as pixels.
  final dynamic width;

  /// (Highstock, Gantt) The Z index for the axis group.
  final num? zIndex;

  /// (Highstock, Gantt) Whether to zoom axis. If `chart.zoomType` is set, the option allows to disable zooming on an individual axis.
  final bool? zoomEnabled;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (accessibility != null) {
      json['accessibility'] = accessibility!.toJson();
    }
    if (alignTicks != null) {
      json['alignTicks'] = alignTicks;
    }
    if (allowDecimals != null) {
      json['allowDecimals'] = allowDecimals;
    }
    if (alternateGridColor != null) {
      json['alternateGridColor'] = hcJsonValue(alternateGridColor);
    }
    if (breaks != null) {
      json['breaks'] = breaks!.map((e) => e.toJson()).toList();
    }
    if (categories != null) {
      json['categories'] = categories;
    }
    if (ceiling != null) {
      json['ceiling'] = ceiling;
    }
    if (className != null) {
      json['className'] = className;
    }
    if (crosshair != null) {
      json['crosshair'] = hcJsonValue(crosshair);
    }
    if (crossing != null) {
      json['crossing'] = crossing;
    }
    if (dateTimeLabelFormats != null) {
      json['dateTimeLabelFormats'] = dateTimeLabelFormats!.toJson();
    }
    if (endOnTick != null) {
      json['endOnTick'] = endOnTick;
    }
    if (events != null) {
      json['events'] = events!.toJson();
    }
    if (floor != null) {
      json['floor'] = floor;
    }
    if (grid != null) {
      json['grid'] = grid!.toJson();
    }
    if (gridLineColor != null) {
      json['gridLineColor'] = hcJsonValue(gridLineColor);
    }
    if (gridLineDashStyle != null) {
      json['gridLineDashStyle'] = gridLineDashStyle;
    }
    if (gridLineWidth != null) {
      json['gridLineWidth'] = gridLineWidth;
    }
    if (gridZIndex != null) {
      json['gridZIndex'] = gridZIndex;
    }
    if (id != null) {
      json['id'] = id;
    }
    if (labels != null) {
      json['labels'] = labels!.toJson();
    }
    if (left != null) {
      json['left'] = hcJsonValue(left);
    }
    if (lineColor != null) {
      json['lineColor'] = hcJsonValue(lineColor);
    }
    if (lineWidth != null) {
      json['lineWidth'] = lineWidth;
    }
    if (margin != null) {
      json['margin'] = margin;
    }
    if (max != null) {
      json['max'] = hcJsonValue(max);
    }
    if (maxPadding != null) {
      json['maxPadding'] = maxPadding;
    }
    if (min != null) {
      json['min'] = hcJsonValue(min);
    }
    if (minorGridLineColor != null) {
      json['minorGridLineColor'] = hcJsonValue(minorGridLineColor);
    }
    if (minorGridLineDashStyle != null) {
      json['minorGridLineDashStyle'] = minorGridLineDashStyle;
    }
    if (minorGridLineWidth != null) {
      json['minorGridLineWidth'] = minorGridLineWidth;
    }
    if (minorTickColor != null) {
      json['minorTickColor'] = hcJsonValue(minorTickColor);
    }
    if (minorTickInterval != null) {
      json['minorTickInterval'] = hcJsonValue(minorTickInterval);
    }
    if (minorTickLength != null) {
      json['minorTickLength'] = minorTickLength;
    }
    if (minorTickPosition != null) {
      json['minorTickPosition'] = minorTickPosition;
    }
    if (minorTicks != null) {
      json['minorTicks'] = minorTicks;
    }
    if (minorTicksPerMajor != null) {
      json['minorTicksPerMajor'] = minorTicksPerMajor;
    }
    if (minorTickWidth != null) {
      json['minorTickWidth'] = minorTickWidth;
    }
    if (minPadding != null) {
      json['minPadding'] = minPadding;
    }
    if (minTickInterval != null) {
      json['minTickInterval'] = minTickInterval;
    }
    if (offset != null) {
      json['offset'] = offset;
    }
    if (opposite != null) {
      json['opposite'] = opposite;
    }
    if (panningEnabled != null) {
      json['panningEnabled'] = panningEnabled;
    }
    if (plotBands != null) {
      json['plotBands'] = plotBands!.map((e) => e.toJson()).toList();
    }
    if (plotLines != null) {
      json['plotLines'] = plotLines!.map((e) => e.toJson()).toList();
    }
    if (reversed != null) {
      json['reversed'] = reversed;
    }
    if (reversedStacks != null) {
      json['reversedStacks'] = reversedStacks;
    }
    if (showFirstLabel != null) {
      json['showFirstLabel'] = showFirstLabel;
    }
    if (showLastLabel != null) {
      json['showLastLabel'] = showLastLabel;
    }
    if (softMax != null) {
      json['softMax'] = softMax;
    }
    if (softMin != null) {
      json['softMin'] = softMin;
    }
    if (startOfWeek != null) {
      json['startOfWeek'] = startOfWeek;
    }
    if (startOnTick != null) {
      json['startOnTick'] = startOnTick;
    }
    if (staticScale != null) {
      json['staticScale'] = staticScale;
    }
    if (tickAmount != null) {
      json['tickAmount'] = tickAmount;
    }
    if (tickColor != null) {
      json['tickColor'] = hcJsonValue(tickColor);
    }
    if (tickInterval != null) {
      json['tickInterval'] = tickInterval;
    }
    if (tickLength != null) {
      json['tickLength'] = tickLength;
    }
    if (tickmarkPlacement != null) {
      json['tickmarkPlacement'] = tickmarkPlacement;
    }
    if (tickPixelInterval != null) {
      json['tickPixelInterval'] = tickPixelInterval;
    }
    if (tickPosition != null) {
      json['tickPosition'] = tickPosition;
    }
    if (tickPositions != null) {
      json['tickPositions'] = tickPositions;
    }
    if (tickWidth != null) {
      json['tickWidth'] = tickWidth;
    }
    if (title != null) {
      json['title'] = title!.toJson();
    }
    if (type != null) {
      json['type'] = type;
    }
    if (uniqueNames != null) {
      json['uniqueNames'] = uniqueNames;
    }
    if (visible != null) {
      json['visible'] = visible;
    }
    if (width != null) {
      json['width'] = hcJsonValue(width);
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

/// (Highcharts, Highstock, Gantt) An object defining mouse events for the plot band. Supported properties are `click`, `mouseover`, `mouseout`, `mousemove`.
class HCNavigatorYAxisPlotBandsEventsOptions implements HCOption {
  const HCNavigatorYAxisPlotBandsEventsOptions();

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    return json;
  }
}

/// (Highcharts, Highstock, Gantt) Text labels for the plot bands
class HCNavigatorYAxisPlotBandsLabelOptions implements HCOption {
  const HCNavigatorYAxisPlotBandsLabelOptions({
    this.align,
    this.allowOverlap,
    this.inside,
    this.rotation,
    this.style,
    this.text,
    this.textAlign,
    this.useHTML,
    this.verticalAlign,
    this.x,
    this.y,
  });

  /// (Highcharts, Highstock, Gantt) Horizontal alignment of the label. Can be one of "left", "center" or "right".
  final String? align;

  /// (Highcharts, Highstock, Gantt) Whether or not the label can be hidden if it overlaps with another label.
  final bool? allowOverlap;

  /// (Highcharts, Highstock, Gantt) Wether or not the text of the label can exceed the width of the label.
  final bool? inside;

  /// (Highcharts, Highstock, Gantt) Rotation of the text label in degrees .
  final num? rotation;

  /// (Highcharts, Highstock, Gantt) CSS styles for the text label.
  final HCCSSObject? style;

  /// (Highcharts, Highstock, Gantt) The string text itself. A subset of HTML is supported.
  final String? text;

  /// (Highcharts, Highstock, Gantt) The text alignment for the label. While `align` determines where the texts anchor point is placed within the plot band, `textAlign` determines how the text is aligned against its anchor point. Possible values are "left", "center" and "right". Defaults to the same as th
  final String? textAlign;

  /// (Highcharts, Highstock, Gantt) Whether to use HTML to render the labels.
  final bool? useHTML;

  /// (Highcharts, Highstock, Gantt) Vertical alignment of the label relative to the plot band. Can be one of "top", "middle" or "bottom".
  final String? verticalAlign;

  /// (Highcharts, Highstock, Gantt) Horizontal position relative the alignment. Default varies by orientation.
  final num? x;

  /// (Highcharts, Highstock, Gantt) Vertical position of the text baseline relative to the alignment. Default varies by orientation.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (align != null) {
      json['align'] = align;
    }
    if (allowOverlap != null) {
      json['allowOverlap'] = allowOverlap;
    }
    if (inside != null) {
      json['inside'] = inside;
    }
    if (rotation != null) {
      json['rotation'] = rotation;
    }
    if (style != null) {
      json['style'] = style!.toJson();
    }
    if (text != null) {
      json['text'] = text;
    }
    if (textAlign != null) {
      json['textAlign'] = textAlign;
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
    return json;
  }
}

/// (Highcharts, Highstock, Gantt) An array of colored bands stretching across the plot area marking an interval on the axis.
class HCNavigatorYAxisPlotBandsOptions implements HCOption {
  const HCNavigatorYAxisPlotBandsOptions({
    this.acrossPanes,
    this.borderColor,
    this.borderRadius,
    this.borderWidth,
    this.className,
    this.color,
    this.events,
    this.from,
    this.id,
    this.innerRadius,
    this.label,
    this.outerRadius,
    this.thickness,
    this.to,
    this.zIndex,
  });

  /// (Highstock) Flag to decide if plotBand should be rendered across all panes.
  final bool? acrossPanes;

  /// (Highcharts, Highstock, Gantt) Border color for the plot band. Also requires `borderWidth` to be set.
  final String? borderColor;

  /// (Highcharts, Highstock, Gantt) Border radius for the plot band. Applies only to gauges. Can be a pixel value or a percentage, for example `50%`.
  final dynamic borderRadius;

  /// (Highcharts, Highstock, Gantt) Border width for the plot band. Also requires `borderColor` to be set.
  final num? borderWidth;

  /// (Highcharts, Highstock, Gantt) A custom class name, in addition to the default `highcharts-plot-band`, to apply to each individual band.
  final String? className;

  /// (Highcharts, Highstock, Gantt) The color of the plot band.
  final dynamic color;

  /// (Highcharts, Highstock, Gantt) An object defining mouse events for the plot band. Supported properties are `click`, `mouseover`, `mouseout`, `mousemove`.
  final HCNavigatorYAxisPlotBandsEventsOptions? events;

  /// (Highcharts, Highstock, Gantt) The start position of the plot band in axis units.
  final dynamic from;

  /// (Highcharts, Highstock, Gantt) An id used for identifying the plot band in Axis.removePlotBand.
  final String? id;

  /// (Highcharts) In a gauge chart, this option determines the inner radius of the plot band that stretches along the perimeter. It can be given as a percentage string, like `"100%"`, or as a pixel number, like `100`. By default, the inner radius is controlled by the thickness option.
  final dynamic innerRadius;

  /// (Highcharts, Highstock, Gantt) Text labels for the plot bands
  final HCNavigatorYAxisPlotBandsLabelOptions? label;

  /// (Highcharts) In a gauge chart, this option determines the outer radius of the plot band that stretches along the perimeter. It can be given as a percentage string, like `"100%"`, or as a pixel number, like `100`.
  final dynamic outerRadius;

  /// (Highcharts) In a gauge chart, this option sets the width of the plot band stretching along the perimeter. It can be given as a percentage string, like `'10%'`, or as a pixel number, like `10`. If `undefined`, the plot band fills out the range between `pane.size` and `pane.innerSize`.
  final dynamic thickness;

  /// (Highcharts, Highstock, Gantt) The end position of the plot band in axis units.
  final dynamic to;

  /// (Highcharts, Highstock, Gantt) The z index of the plot band within the chart, relative to other elements. Using the same z index as another element may give unpredictable results, as the last rendered element will be on top. Values from 0 to 20 make sense.
  final num? zIndex;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (acrossPanes != null) {
      json['acrossPanes'] = acrossPanes;
    }
    if (borderColor != null) {
      json['borderColor'] = borderColor;
    }
    if (borderRadius != null) {
      json['borderRadius'] = hcJsonValue(borderRadius);
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
    if (events != null) {
      json['events'] = events!.toJson();
    }
    if (from != null) {
      json['from'] = hcJsonValue(from);
    }
    if (id != null) {
      json['id'] = id;
    }
    if (innerRadius != null) {
      json['innerRadius'] = hcJsonValue(innerRadius);
    }
    if (label != null) {
      json['label'] = label!.toJson();
    }
    if (outerRadius != null) {
      json['outerRadius'] = hcJsonValue(outerRadius);
    }
    if (thickness != null) {
      json['thickness'] = hcJsonValue(thickness);
    }
    if (to != null) {
      json['to'] = hcJsonValue(to);
    }
    if (zIndex != null) {
      json['zIndex'] = zIndex;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Gantt) An object defining mouse events for the plot line. Supported properties are `click`, `mouseover`, `mouseout`, `mousemove`.
class HCNavigatorYAxisPlotLinesEventsOptions implements HCOption {
  const HCNavigatorYAxisPlotLinesEventsOptions();

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    return json;
  }
}

/// (Highcharts, Highstock, Gantt) Text labels for the plot lines
class HCNavigatorYAxisPlotLinesLabelOptions implements HCOption {
  const HCNavigatorYAxisPlotLinesLabelOptions({
    this.align,
    this.rotation,
    this.style,
    this.text,
    this.textAlign,
    this.useHTML,
    this.verticalAlign,
    this.x,
    this.y,
  });

  /// (Highcharts, Highstock, Gantt) Horizontal alignment of the label. Can be one of "left", "center" or "right".
  final String? align;

  /// (Highcharts, Highstock, Gantt) Rotation of the text label in degrees. Defaults to 0 for horizontal plot lines and 90 for vertical lines.
  final num? rotation;

  /// (Highcharts, Highstock, Gantt) CSS styles for the text label.
  final HCCSSObject? style;

  /// (Highcharts, Highstock, Gantt) The text itself. A subset of HTML is supported.
  final String? text;

  /// (Highcharts, Highstock, Gantt) The text alignment for the label. While `align` determines where the texts anchor point is placed within the plot band, `textAlign` determines how the text is aligned against its anchor point. Possible values are "left", "center" and "right". Defaults to the same as th
  final String? textAlign;

  /// (Highcharts, Highstock, Gantt) Whether to use HTML to render the labels.
  final bool? useHTML;

  /// (Highcharts, Highstock, Gantt) Vertical alignment of the label relative to the plot line. Can be one of "top", "middle" or "bottom".
  final String? verticalAlign;

  /// (Highcharts, Highstock, Gantt) Horizontal position relative the alignment. Default varies by orientation.
  final num? x;

  /// (Highcharts, Highstock, Gantt) Vertical position of the text baseline relative to the alignment. Default varies by orientation.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (align != null) {
      json['align'] = align;
    }
    if (rotation != null) {
      json['rotation'] = rotation;
    }
    if (style != null) {
      json['style'] = style!.toJson();
    }
    if (text != null) {
      json['text'] = text;
    }
    if (textAlign != null) {
      json['textAlign'] = textAlign;
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
    return json;
  }
}

class HCNavigatorYAxisPlotLinesLabelsOptions implements HCOption {
  const HCNavigatorYAxisPlotLinesLabelsOptions({
    this.clip,
  });

  /// (Highcharts, Highstock, Gantt) Whether to hide labels that are outside the plot area.
  final bool? clip;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (clip != null) {
      json['clip'] = clip;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Gantt) An array of lines stretching across the plot area, marking a specific value on one of the axes.
class HCNavigatorYAxisPlotLinesOptions implements HCOption {
  const HCNavigatorYAxisPlotLinesOptions({
    this.acrossPanes,
    this.className,
    this.color,
    this.dashStyle,
    this.events,
    this.id,
    this.label,
    this.labels,
    this.value,
    this.width,
    this.zIndex,
  });

  /// (Highstock) Flag to decide if plotLine should be rendered across all panes.
  final bool? acrossPanes;

  /// (Highcharts, Highstock, Gantt) A custom class name, in addition to the default `highcharts-plot-line`, to apply to each individual line.
  final String? className;

  /// (Highcharts, Highstock, Gantt) The color of the line.
  final String? color;

  /// (Highcharts, Highstock, Gantt) The dashing or dot style for the plot line. For possible values see this overview.
  final String? dashStyle;

  /// (Highcharts, Highstock, Gantt) An object defining mouse events for the plot line. Supported properties are `click`, `mouseover`, `mouseout`, `mousemove`.
  final HCNavigatorYAxisPlotLinesEventsOptions? events;

  /// (Highcharts, Highstock, Gantt) An id used for identifying the plot line in Axis.removePlotLine.
  final String? id;

  /// (Highcharts, Highstock, Gantt) Text labels for the plot lines
  final HCNavigatorYAxisPlotLinesLabelOptions? label;

  final HCNavigatorYAxisPlotLinesLabelsOptions? labels;

  /// (Highcharts, Highstock, Gantt) The position of the line in axis units.
  final dynamic value;

  /// (Highcharts, Highstock, Gantt) The width or thickness of the plot line.
  final num? width;

  /// (Highcharts, Highstock, Gantt) The z index of the plot line within the chart.
  final num? zIndex;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (acrossPanes != null) {
      json['acrossPanes'] = acrossPanes;
    }
    if (className != null) {
      json['className'] = className;
    }
    if (color != null) {
      json['color'] = color;
    }
    if (dashStyle != null) {
      json['dashStyle'] = dashStyle;
    }
    if (events != null) {
      json['events'] = events!.toJson();
    }
    if (id != null) {
      json['id'] = id;
    }
    if (label != null) {
      json['label'] = label!.toJson();
    }
    if (labels != null) {
      json['labels'] = labels!.toJson();
    }
    if (value != null) {
      json['value'] = hcJsonValue(value);
    }
    if (width != null) {
      json['width'] = width;
    }
    if (zIndex != null) {
      json['zIndex'] = zIndex;
    }
    return json;
  }
}

/// (Highstock, Gantt) The axis title, showing next to the axis line.
class HCNavigatorYAxisTitleOptions implements HCOption {
  const HCNavigatorYAxisTitleOptions({
    this.align,
    this.margin,
    this.offset,
    this.reserveSpace,
    this.rotation,
    this.style,
    this.text,
    this.textAlign,
    this.useHTML,
    this.x,
    this.y,
  });

  /// (Highstock, Gantt) Alignment of the title relative to the axis values. Possible values are "low", "middle" or "high".
  final String? align;

  /// (Highstock, Gantt) The pixel distance between the axis labels and the title. Positive values are outside the axis line, negative are inside.
  final num? margin;

  /// (Highstock, Gantt) The distance from the plot area to the axis line. A positive offset moves the axis with its line, labels and ticks away from the plot area. With multiple axes the offset is dynamically adjusted to avoid collision, this can be overridden by setting offset explicitly.
  final dynamic offset;

  /// (Highcharts, Highstock, Gantt) Whether to reserve space for the title when laying out the axis.
  final bool? reserveSpace;

  /// (Highstock, Gantt) The rotation of the text in degrees. 0 is horizontal, 270 is vertical reading from bottom to top. Defaults to 0 for horizontal axes, 270 for left-side axes and 90 for right-side axes.
  final num? rotation;

  /// (Highstock, Gantt) CSS styles for the title. If the title text is longer than the axis length, it will wrap to multiple lines by default. This can be customized by setting the `lineClamp` property, by setting a specific `width` or by setting `whiteSpace: 'nowrap'`.
  final dynamic style;

  /// (Highcharts, Highstock, Gantt) The actual text of the axis title. Horizontal texts can contain HTML, but rotated texts are painted using vector techniques and must be clean text. The Y axis title is disabled by setting the `text` option to `undefined`. The default value is overridden by the `lang.yA
  final String? text;

  /// (Highstock, Gantt) Alignment of the text, can be `"left"`, `"right"` or `"center"`. Default alignment depends on the title.align:
  final String? textAlign;

  /// (Highcharts, Highstock, Gantt) Whether to use HTML to render the axis title.
  final bool? useHTML;

  /// (Highcharts, Highstock, Gantt) Horizontal pixel offset of the title position.
  final num? x;

  /// (Highcharts, Highstock, Gantt) Vertical pixel offset of the title position.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (align != null) {
      json['align'] = align;
    }
    if (margin != null) {
      json['margin'] = margin;
    }
    if (offset != null) {
      json['offset'] = hcJsonValue(offset);
    }
    if (reserveSpace != null) {
      json['reserveSpace'] = reserveSpace;
    }
    if (rotation != null) {
      json['rotation'] = rotation;
    }
    if (style != null) {
      json['style'] = hcJsonValue(style);
    }
    if (text != null) {
      json['text'] = text;
    }
    if (textAlign != null) {
      json['textAlign'] = textAlign;
    }
    if (useHTML != null) {
      json['useHTML'] = useHTML;
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

/// (Highstock, Gantt) CSS styles for the title. If the title text is longer than the axis length, it will wrap to multiple lines by default. This can be customized by setting the `lineClamp` property, by setting a specific `width` or by setting `whiteSpace: 'nowrap'`.
class HCNavigatorYAxisTitleStyleOptions implements HCOption {
  const HCNavigatorYAxisTitleStyleOptions({
    this.color,
    this.fontSize,
  });

  final dynamic color;

  final dynamic fontSize;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (color != null) {
      json['color'] = hcJsonValue(color);
    }
    if (fontSize != null) {
      json['fontSize'] = hcJsonValue(fontSize);
    }
    return json;
  }
}
