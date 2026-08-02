part of 'hc_options.dart';

/// (Highcharts) Accessibility options for an axis. Requires the accessibility module.
class HCAxisAccessibilityOptionsObject implements HCOption {
  const HCAxisAccessibilityOptionsObject({
    this.description,
    this.enabled,
    this.rangeDescription,
  });

  /// (Highcharts) Description for an axis to expose to screen reader users.
  final String? description;

  /// (Highcharts) Enable axis accessibility features, including axis information in the screen reader information region. If this is disabled on the xAxis, the x values are not exposed to screen readers for the individual data points by default.
  final bool? enabled;

  /// (Highcharts) Range description for an axis. Overrides the default range description. Set to empty to disable range description for this axis.
  final String? rangeDescription;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (description != null) {
      json['description'] = description;
    }
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    if (rangeDescription != null) {
      json['rangeDescription'] = rangeDescription;
    }
    return json;
  }
}

/// (Highstock) A label on the axis next to the crosshair.
class HCAxisCrosshairLabelOptions implements HCOption {
  const HCAxisCrosshairLabelOptions({
    this.align,
    this.backgroundColor,
    this.borderColor,
    this.borderRadius,
    this.borderWidth,
    this.enabled,
    this.format,
    this.padding,
    this.shape,
    this.style,
  });

  /// (Highstock) Alignment of the label compared to the axis. Defaults to `"left"` for right-side axes, `"right"` for left-side axes and `"center"` for horizontal axes.
  final String? align;

  /// (Highstock) The background color for the label. Defaults to the related series color, or `#666666` if that is not available.
  final dynamic backgroundColor;

  /// (Highstock) The border color for the crosshair label
  final dynamic borderColor;

  /// (Highstock) The border corner radius of the crosshair label.
  final num? borderRadius;

  /// (Highstock) The border width for the crosshair label.
  final num? borderWidth;

  /// (Highstock) Flag to enable crosshair's label.
  final bool? enabled;

  /// (Highstock) A format string for the crosshair label. Defaults to `{value}` for numeric axes and `{value:%b %d, %Y}` for datetime axes.
  final String? format;

  /// (Highstock) Padding inside the crosshair label.
  final num? padding;

  /// (Highstock) The shape to use for the label box.
  final String? shape;

  /// (Highstock) Text styles for the crosshair label.
  final HCCSSObject? style;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (align != null) {
      json['align'] = align;
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
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    if (format != null) {
      json['format'] = format;
    }
    if (padding != null) {
      json['padding'] = padding;
    }
    if (shape != null) {
      json['shape'] = shape;
    }
    if (style != null) {
      json['style'] = style!.toJson();
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Configure a crosshair that follows either the mouse pointer or the hovered point.
class HCAxisCrosshairOptions implements HCOption {
  const HCAxisCrosshairOptions({
    this.className,
    this.color,
    this.dashStyle,
    this.label,
    this.showDelay,
    this.snap,
    this.width,
    this.zIndex,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) A class name for the crosshair, especially as a hook for styling.
  final String? className;

  /// (Highcharts, Highstock, Highmaps, Gantt) The color of the crosshair. Defaults to `#cccccc` for numeric and datetime axes, and `rgba(204,214,235,0.25)` for category axes, where the crosshair by default highlights the whole category.
  final dynamic color;

  /// (Highcharts, Highstock, Highmaps, Gantt) The dash style for the crosshair. See plotOptions.series.dashStyle for possible values.
  final String? dashStyle;

  /// (Highstock) A label on the axis next to the crosshair.
  final HCAxisCrosshairLabelOptions? label;

  /// (Highcharts, Highstock, Highmaps, Gantt) The number of milliseconds to wait until the crosshair is shown when the mouse is over a point. Works on initial hover.
  final num? showDelay;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether the crosshair should snap to the point or follow the pointer independent of points.
  final bool? snap;

  /// (Highcharts, Highstock, Highmaps, Gantt) The pixel width of the crosshair. Defaults to 1 for numeric or datetime axes, and for one category width for category axes.
  final num? width;

  /// (Highcharts, Highstock, Highmaps, Gantt) The Z index of the crosshair. Higher Z indices allow drawing the crosshair on top of the series or behind the grid lines.
  final num? zIndex;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (className != null) {
      json['className'] = className;
    }
    if (color != null) {
      json['color'] = hcJsonValue(color);
    }
    if (dashStyle != null) {
      json['dashStyle'] = dashStyle;
    }
    if (label != null) {
      json['label'] = label!.toJson();
    }
    if (showDelay != null) {
      json['showDelay'] = showDelay;
    }
    if (snap != null) {
      json['snap'] = snap;
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

/// (Highcharts, Highstock, Gantt) For a datetime axis, the scale will automatically adjust to the appropriate unit. This member gives the default representations used for each unit. For easier data interpretation, `hour`, `day`, `month` and `year` units can be used and formatted as boundary tick values
class HCAxisDateTimeLabelFormatsOptions implements HCOption {
  const HCAxisDateTimeLabelFormatsOptions({
    this.day,
    this.hour,
    this.millisecond,
    this.minute,
    this.month,
    this.second,
    this.week,
    this.year,
  });

  final HCAxisDateTimeLabelFormatsOptionsObject? day;

  final HCAxisDateTimeLabelFormatsOptionsObject? hour;

  final HCAxisDateTimeLabelFormatsOptionsObject? millisecond;

  final HCAxisDateTimeLabelFormatsOptionsObject? minute;

  final HCAxisDateTimeLabelFormatsOptionsObject? month;

  final HCAxisDateTimeLabelFormatsOptionsObject? second;

  final HCAxisDateTimeLabelFormatsOptionsObject? week;

  final HCAxisDateTimeLabelFormatsOptionsObject? year;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (day != null) {
      json['day'] = day!.toJson();
    }
    if (hour != null) {
      json['hour'] = hour!.toJson();
    }
    if (millisecond != null) {
      json['millisecond'] = millisecond!.toJson();
    }
    if (minute != null) {
      json['minute'] = minute!.toJson();
    }
    if (month != null) {
      json['month'] = month!.toJson();
    }
    if (second != null) {
      json['second'] = second!.toJson();
    }
    if (week != null) {
      json['week'] = week!.toJson();
    }
    if (year != null) {
      json['year'] = year!.toJson();
    }
    return json;
  }
}

class HCAxisDateTimeLabelFormatsOptionsObject implements HCOption {
  const HCAxisDateTimeLabelFormatsOptionsObject({
    this.boundary,
    this.list,
    this.main,
    this.range,
  });

  /// (Highcharts, Highstock, Gantt) Label format that should be used when a tick is a boundary tick, e.g. start of day, start of year, etc.
  final String? boundary;

  /// (Highcharts, Highstock, Gantt) List of possible format strings used for this unit.
  final List<dynamic>? list;

  final String? main;

  /// (Gantt) When `false`, this time unit is treated as a point in time rather than a range. In Gantt charts, when grid axis is enabled, point-in-time ticks get left-aligned in the grid cell by default.
  final bool? range;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (boundary != null) {
      json['boundary'] = boundary;
    }
    if (list != null) {
      json['list'] = list!.map((e) => hcJsonValue(e)).toList();
    }
    if (main != null) {
      json['main'] = main;
    }
    if (range != null) {
      json['range'] = range;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Gantt) An array defining breaks in the axis, the sections defined will be left out and all the points shifted closer to each other.
class HCXAxisBreaksOptions implements HCOption {
  const HCXAxisBreaksOptions({
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
class HCXAxisCurrentDateIndicatorEventsOptions implements HCOption {
  const HCXAxisCurrentDateIndicatorEventsOptions();

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    return json;
  }
}

/// (Gantt) Text labels for the plot lines
class HCXAxisCurrentDateIndicatorLabelOptions implements HCOption {
  const HCXAxisCurrentDateIndicatorLabelOptions({
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

class HCXAxisCurrentDateIndicatorLabelsOptions implements HCOption {
  const HCXAxisCurrentDateIndicatorLabelsOptions({
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

/// (Highcharts, Highstock, Highmaps, Gantt) Event handlers for the axis.
class HCXAxisEventsOptions implements HCOption {
  const HCXAxisEventsOptions();

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    return json;
  }
}

/// (Gantt) Set grid options for the axis labels. Requires Highcharts Gantt.
class HCXAxisGridOptions implements HCOption {
  const HCXAxisGridOptions({
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

/// (Highcharts, Highstock, Highmaps, Gantt) The axis labels show the number or category for each tick.
class HCXAxisLabelsOptions implements HCOption {
  const HCXAxisLabelsOptions({
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
    this.position3d,
    this.reserveSpace,
    this.rotation,
    this.skew3d,
    this.staggerLines,
    this.step,
    this.style,
    this.useHTML,
    this.x,
    this.y,
    this.zIndex,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) What part of the string the given position is anchored to. If `left`, the left side of the string is at the axis position. Can be one of `"left"`, `"center"` or `"right"`. Defaults to an intelligent guess based on which side of the chart the axis is on and th
  final String? align;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to allow the axis labels to overlap. When false, overlapping labels are hidden.
  final bool? allowOverlap;

  /// (Highcharts, Highstock, Gantt) For horizontal axes, the allowed degrees of label rotation to prevent overlapping labels. If there is enough space, labels are not rotated. As the chart gets narrower, it will start rotating the labels -45 degrees, then remove every second label and try again with rota
  final List<num>? autoRotation;

  /// (Highcharts, Gantt) When each category width is more than this many pixels, we don't apply auto rotation. Instead, we lay out the axis label with word wrap. A lower limit makes sense when the label contains multiple short words that don't extend the available horizontal space for each label.
  final num? autoRotationLimit;

  /// (Highcharts, Gantt) The label's pixel distance from the perimeter of the plot area. On cartesian charts, this is overridden if the `labels.y` setting is set.
  final num? distance;

  /// (Highcharts, Highstock, Highmaps, Gantt) Enable or disable the axis labels.
  final bool? enabled;

  /// (Highcharts, Highstock, Highmaps, Gantt) A format string for the axis label. The context is available as format string variables. For example, you can use `{text}` to insert the default formatted text. The recommended way of adding units for the label is using `text`, for example `{text} km`.
  final String? format;

  /// (Gantt) The number of pixels to indent the labels per level in a treegrid axis.
  final num? indentation;

  /// (Highcharts, Highstock, Highmaps, Gantt) Horizontal axis only. When `staggerLines` is not set, `maxStaggerLines` defines how many lines the axis is allowed to add to automatically avoid overlapping X labels. Set to `1` to disable overlap detection.
  final num? maxStaggerLines;

  /// (Highcharts, Highstock, Highmaps, Gantt) How to handle overflowing labels on horizontal axis. If set to `"allow"`, it will not be aligned at all. By default it `"justify"` labels inside the chart area. If there is room to move it, it will be aligned to the edge, else it will be removed.
  final String? overflow;

  /// (Highcharts, Gantt) The pixel padding for axis labels, to ensure white space between them. Defaults to 4 for horizontal axes, 1 for vertical.
  final num? padding;

  /// (Highcharts) Defines how the labels are be repositioned according to the 3D chart orientation.
  final String? position3d;

  /// (Highcharts, Highstock, Gantt) Whether to reserve space for the labels. By default, space is reserved for the labels in these cases:
  final bool? reserveSpace;

  /// (Highcharts, Highstock, Highmaps, Gantt) Rotation of the labels in degrees. When `undefined`, the `autoRotation` option takes precedence.
  final num? rotation;

  /// (Highcharts) If enabled, the axis labels will skewed to follow the perspective.
  final bool? skew3d;

  /// (Highcharts, Highstock, Highmaps, Gantt) Horizontal axes only. The number of lines to spread the labels over to make room or tighter labels. 0 disables staggering.
  final num? staggerLines;

  /// (Highcharts, Highstock, Highmaps, Gantt) To show only every _n_'th label on the axis, set the step to _n_. Setting the step to 2 shows every other label.
  final num? step;

  /// (Highcharts, Highstock, Highmaps, Gantt) CSS styles for the label. Use `lineClamp` to control wrapping of category labels. Use `textOverflow: 'none'` to prevent ellipsis (dots).
  final dynamic style;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to use HTML to render the labels.
  final bool? useHTML;

  /// (Highcharts, Highstock, Highmaps, Gantt) The x position offset of all labels relative to the tick positions on the axis. Overrides the `labels.distance` option.
  final num? x;

  /// (Highcharts, Highstock, Highmaps, Gantt) The y position offset of all labels relative to the tick positions on the axis. Overrides the `labels.distance` option.
  final num? y;

  /// (Highcharts, Highstock, Highmaps, Gantt) The Z index for the axis labels.
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
    if (position3d != null) {
      json['position3d'] = position3d;
    }
    if (reserveSpace != null) {
      json['reserveSpace'] = reserveSpace;
    }
    if (rotation != null) {
      json['rotation'] = rotation;
    }
    if (skew3d != null) {
      json['skew3d'] = skew3d;
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

/// (Highcharts, Highstock, Highmaps, Gantt) CSS styles for the label. Use `lineClamp` to control wrapping of category labels. Use `textOverflow: 'none'` to prevent ellipsis (dots).
class HCXAxisLabelsStyleOptions implements HCOption {
  const HCXAxisLabelsStyleOptions({
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

/// (Highcharts, Highstock, Highmaps, Gantt) The X axis or category axis. Normally this is the horizontal axis, though if the chart is inverted this is the vertical axis. In case of multiple axes, the xAxis node is an array of configuration objects.
class HCXAxisOptions implements HCOption {
  const HCXAxisOptions({
    this.accessibility,
    this.alignTicks,
    this.allowDecimals,
    this.alternateGridColor,
    this.angle,
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
    this.gridLineInterpolation,
    this.gridLineWidth,
    this.gridZIndex,
    this.height,
    this.id,
    this.labels,
    this.left,
    this.lineColor,
    this.lineWidth,
    this.linkedTo,
    this.margin,
    this.max,
    this.maxPadding,
    this.maxRange,
    this.maxZoom,
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
    this.minRange,
    this.minTickInterval,
    this.offset,
    this.opposite,
    this.ordinal,
    this.overscroll,
    this.pane,
    this.panningEnabled,
    this.plotBands,
    this.plotLines,
    this.range,
    this.reversed,
    this.reversedStacks,
    this.scrollbar,
    this.showEmpty,
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

  /// (Highcharts, Highstock, Highmaps, Gantt) Accessibility options for an axis. Requires the accessibility module.
  final HCAxisAccessibilityOptionsObject? accessibility;

  /// (Highcharts, Highstock, Gantt) When using multiple axis, the ticks of two or more opposite axes will automatically be aligned by adding ticks to the axis or axes with the least ticks, as if `tickAmount` were specified.
  final bool? alignTicks;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to allow decimals in this axis' ticks. When counting integers, like persons or hits on a web page, decimals should be avoided in the labels. By default, decimals are allowed on small scale axes.
  final bool? allowDecimals;

  /// (Highcharts, Highstock, Highmaps, Gantt) When using an alternate grid color, a band is painted across the plot area between every other grid line.
  final dynamic alternateGridColor;

  /// (Highcharts) In a polar chart, this is the angle of the Y axis in degrees, where 0 is up and 90 is right. The angle determines the position of the axis line and the labels, though the coordinate system is unaffected. Since v8.0.0 this option is also applicable for X axis (inverted polar).
  final num? angle;

  /// (Highcharts, Highstock, Gantt) An array defining breaks in the axis, the sections defined will be left out and all the points shifted closer to each other.
  final List<HCXAxisBreaksOptions>? breaks;

  /// (Highcharts, Gantt) If categories are present for the xAxis, names are used instead of numbers for that axis.
  final List<String>? categories;

  /// (Highcharts, Highstock, Gantt) The highest allowed value for automatically computed axis extremes.
  final num? ceiling;

  /// (Highcharts, Highstock, Highmaps, Gantt) A class name that opens for styling the axis by CSS, especially in Highcharts styled mode. The class name is applied to group elements for the grid, axis elements and labels.
  final String? className;

  /// (Highcharts, Highstock, Highmaps, Gantt) Configure a crosshair that follows either the mouse pointer or the hovered point.
  final dynamic crosshair;

  /// (Highcharts, Highstock, Highmaps, Gantt) The value on a perpendicular axis where this axis should cross. This is typically used on mathematical plots where the axes cross at 0. When `crossing` is set, space will not be reserved at the sides of the chart for axis labels and title, so those may be cli
  final num? crossing;

  /// (Gantt) Show an indicator on the axis for the current date and time. Can be a boolean or a configuration object similar to xAxis.plotLines.
  final dynamic currentDateIndicator;

  /// (Highcharts, Highstock, Gantt) For a datetime axis, the scale will automatically adjust to the appropriate unit. This member gives the default representations used for each unit. For easier data interpretation, `hour`, `day`, `month` and `year` units can be used and formatted as boundary tick values
  final HCAxisDateTimeLabelFormatsOptions? dateTimeLabelFormats;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to force the axis to end on a tick. Use this option with the `maxPadding` option to control the axis end.
  final bool? endOnTick;

  /// (Highcharts, Highstock, Highmaps, Gantt) Event handlers for the axis.
  final HCXAxisEventsOptions? events;

  /// (Highcharts, Highstock, Gantt) The lowest allowed value for automatically computed axis extremes.
  final num? floor;

  /// (Gantt) Set grid options for the axis labels. Requires Highcharts Gantt.
  final HCXAxisGridOptions? grid;

  /// (Highcharts, Highstock, Highmaps, Gantt) Color of the grid lines extending the ticks across the plot area.
  final dynamic gridLineColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) The dash or dot style of the grid lines. For possible values, see this demonstration.
  final String? gridLineDashStyle;

  /// (Highcharts) Polar charts only. Whether the grid lines should draw as a polygon with straight lines between categories, or as circles. Can be either `circle` or `polygon`. Since v8.0.0 this option is also applicable for X axis (inverted polar).
  final String? gridLineInterpolation;

  /// (Highcharts, Highstock, Highmaps, Gantt) The width of the grid lines extending the ticks across the plot area. Defaults to 1 on the Y axis and 0 on the X axis, except for 3d charts and gauges.
  final num? gridLineWidth;

  /// (Highcharts, Highstock, Gantt) The Z index of the grid lines.
  final num? gridZIndex;

  /// (Highcharts, Highstock) The height as the vertical axis. If it's a number, it is interpreted as pixels.
  final dynamic height;

  /// (Highcharts, Highstock, Highmaps, Gantt) An id for the axis. This can be used after render time to get a pointer to the axis object through `chart.get()`.
  final String? id;

  /// (Highcharts, Highstock, Highmaps, Gantt) The axis labels show the number or category for each tick.
  final HCXAxisLabelsOptions? labels;

  /// (Highcharts, Highstock) The left position as the horizontal axis. If it's a number, it is interpreted as pixel position relative to the chart.
  final dynamic left;

  /// (Highcharts, Highstock, Highmaps, Gantt) The color of the line marking the axis itself.
  final dynamic lineColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) The width of the line marking the axis itself.
  final num? lineWidth;

  /// (Highcharts, Highstock, Gantt) Index of another axis that this axis is linked to. When an axis is linked to a master axis, it will take the same extremes as the master, but as assigned by min or max or by setExtremes. It can be used to show additional info, or to ease reading the chart by duplicatin
  final num? linkedTo;

  /// (Highcharts, Highstock, Highmaps, Gantt) If there are multiple axes on the same side of the chart, the pixel margin between the axes. Defaults to 0 on vertical axes, 15 on horizontal axes.
  final num? margin;

  /// (Highcharts, Highstock, Highmaps, Gantt) The maximum value of the axis. If `undefined`, the max value is automatically calculated.
  final dynamic max;

  /// (Highcharts, Highstock, Highmaps, Gantt) Padding of the max value relative to the length of the axis. A padding of 0.05 will make a 100px axis 5px longer. This is useful when you don't want the highest data value to appear on the edge of the plot area. When the axis' `max` option is set or a max ext
  final num? maxPadding;

  /// (Highstock, Gantt) Maximum range which can be set using the navigator's handles. Opposite of xAxis.minRange.
  final num? maxRange;

  /// (Highcharts, Highstock) Deprecated. Use `minRange` instead.
  final num? maxZoom;

  /// (Highcharts, Highstock, Highmaps, Gantt) The minimum value of the axis. If `undefined`, the min value is automatically calculated.
  final dynamic min;

  /// (Highcharts, Highstock, Highmaps, Gantt) Color of the minor, secondary grid lines.
  final dynamic minorGridLineColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) The dash or dot style of the minor grid lines. For possible values, see this demonstration.
  final String? minorGridLineDashStyle;

  /// (Highcharts, Highstock, Highmaps, Gantt) Width of the minor, secondary grid lines.
  final num? minorGridLineWidth;

  /// (Highcharts, Highstock, Highmaps, Gantt) Color for the minor tick marks.
  final dynamic minorTickColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) Specific tick interval in axis units for the minor ticks. On a linear axis, if `"auto"`, the minor tick interval is calculated as a fifth of the tickInterval. If `undefined`, minor ticks are not shown.
  final dynamic minorTickInterval;

  /// (Highcharts, Highstock, Highmaps, Gantt) The pixel length of the minor tick marks.
  final num? minorTickLength;

  /// (Highcharts, Highstock, Highmaps, Gantt) The position of the minor tick marks relative to the axis line. Can be one of `inside` and `outside`.
  final String? minorTickPosition;

  /// (Highcharts, Highstock, Highmaps, Gantt) Enable or disable minor ticks. The interval between the minor ticks can be controlled either by the minorTicksPerMajor setting, or as an absolute minorTickInterval value.
  final bool? minorTicks;

  /// (Highcharts, Highstock, Highmaps, Gantt) The number of minor ticks per major tick. Works for `linear`, `logarithmic` and `datetime` axes.
  final num? minorTicksPerMajor;

  /// (Highcharts, Highstock, Highmaps, Gantt) The pixel width of the minor tick mark.
  final num? minorTickWidth;

  /// (Highcharts, Highstock, Gantt) Padding of the min value relative to the length of the axis. A padding of 0.05 will make a 100px axis 5px longer. This is useful when you don't want the lowest data value to appear on the edge of the plot area. When the axis' `min` option is set or a min extreme is set
  final num? minPadding;

  /// (Highcharts, Highstock, Highmaps, Gantt) The minimum range to display on this axis. The entire axis will not be allowed to span over a smaller interval than this. For example, for a datetime axis the main unit is milliseconds. If minRange is set to 3600000, you can't zoom in more than to one hour.
  final num? minRange;

  /// (Highcharts, Highstock, Highmaps, Gantt) The minimum tick interval allowed in axis values. For example on zooming in on an axis with daily data, this can be used to prevent the axis from showing hours. Defaults to the closest distance between two points on the axis.
  final num? minTickInterval;

  /// (Highcharts, Highstock, Highmaps, Gantt) The distance in pixels from the plot area to the axis line. A positive offset moves the axis with its line, labels and ticks away from the plot area. This is typically used when two or more axes are displayed on the same side of the plot. With multiple axes t
  final num? offset;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to display the axis on the opposite side of the normal. The normal is on the left side for vertical axes and bottom for horizontal, so the opposite sides will be right and top respectively. This is typically used with dual or multiple axes.
  final bool? opposite;

  /// (Highstock) In an ordinal axis, the points are equally spaced in the chart regardless of the actual time or x distance between them. This means that missing data periods (e.g. nights or weekends for a stock chart) will not take up space in the chart. Having `ordinal: false` will show any gaps create
  final bool? ordinal;

  /// (Highstock) Additional range on the right side of the xAxis. Works similar to `xAxis.maxPadding`, but the value is set in terms of axis values, percentage or pixels.
  final dynamic overscroll;

  /// (Highcharts) Refers to the index in the panes array. Used for circular gauges and polar charts. When the option is not set then first pane will be used.
  final num? pane;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to pan axis. If `chart.panning` is enabled, the option allows to disable panning on an individual axis.
  final bool? panningEnabled;

  /// (Highcharts, Highstock, Gantt) An array of colored bands stretching across the plot area marking an interval on the axis.
  final List<HCXAxisPlotBandsOptions>? plotBands;

  /// (Highcharts, Highstock, Gantt) An array of lines stretching across the plot area, marking a specific value on one of the axes.
  final List<HCXAxisPlotLinesOptions>? plotLines;

  /// (Highstock) The zoomed range to display when only defining one or none of `min` or `max`. For example, to show the latest month, a range of one month can be set.
  final num? range;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to reverse the axis so that the highest number is closest to the origin. If the chart is inverted, the x axis is reversed by default.
  final bool? reversed;

  /// (Highcharts, Highstock) This option determines how stacks should be ordered within a group. For example reversed xAxis also reverses stacks, so first series comes last in a group. To keep order like for non-reversed xAxis enable this option.
  final bool? reversedStacks;

  /// (Highstock) An optional scrollbar to display on the X axis in response to limiting the minimum and maximum of the axis values.
  final HCXAxisScrollbarOptions? scrollbar;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to show the axis line and title when the axis has no data.
  final bool? showEmpty;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to show the first tick label.
  final bool? showFirstLabel;

  /// (Highcharts, Highstock, Gantt) Whether to show the last tick label. Defaults to `true` on cartesian charts, and `false` on polar charts.
  final bool? showLastLabel;

  /// (Highcharts, Highstock, Gantt) A soft maximum for the axis. If the series data maximum is less than this, the axis will stay at this maximum, but if the series data maximum is higher, the axis will flex to show all data.
  final num? softMax;

  /// (Highcharts, Highstock, Gantt) A soft minimum for the axis. If the series data minimum is greater than this, the axis will stay at this minimum, but if the series data minimum is lower, the axis will flex to show all data.
  final num? softMin;

  /// (Highcharts, Highstock, Gantt) For datetime axes, this decides where to put the tick between weeks. 0 = Sunday, 1 = Monday.
  final num? startOfWeek;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to force the axis to start on a tick. Use this option with the `minPadding` option to control the axis start.
  final bool? startOnTick;

  /// (Highcharts, Highstock, Gantt) For vertical axes only. Setting the static scale ensures that each tick unit is translated into a fixed pixel height. For example, setting the static scale to 24 results in each Y axis category taking up 24 pixels, and the height of the chart adjusts. Adding or removin
  final num? staticScale;

  /// (Highcharts, Highstock, Gantt) The amount of ticks to draw on the axis. This opens up for aligning the ticks of multiple charts or panes within a chart. This option overrides the `tickPixelInterval` option.
  final num? tickAmount;

  /// (Highcharts, Highstock, Highmaps, Gantt) Color for the main tick marks.
  final dynamic tickColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) The interval of the tick marks in axis units. When `undefined`, the tick interval is computed to approximately follow the tickPixelInterval on linear and datetime axes. On categorized axes, a `undefined` tickInterval will default to 1, one category. Note that
  final num? tickInterval;

  /// (Highcharts, Highstock, Highmaps, Gantt) The pixel length of the main tick marks.
  final num? tickLength;

  /// (Highcharts, Gantt) For categorized axes only. If `on` the tick mark is placed in the center of the category, if `between` the tick mark is placed between categories. The default is `between` if the `tickInterval` is 1, else `on`. In order to render tick marks on a category axis it is necessary to p
  final String? tickmarkPlacement;

  /// (Highcharts, Highstock, Highmaps, Gantt) If tickInterval is `null` this option sets the approximate pixel interval of the tick marks. Not applicable to categorized axis.
  final num? tickPixelInterval;

  /// (Highcharts, Highstock, Highmaps, Gantt) The position of the major tick marks relative to the axis line. Can be one of `inside` and `outside`.
  final String? tickPosition;

  /// (Highcharts, Highstock, Highmaps, Gantt) An array defining where the ticks are laid out on the axis. This overrides the default behavior of tickPixelInterval and tickInterval.
  final List<num>? tickPositions;

  /// (Highcharts, Highstock, Highmaps, Gantt) The pixel width of the major tick marks. Defaults to 0 on category axes, otherwise 1.
  final num? tickWidth;

  /// (Highcharts, Highstock, Highmaps, Gantt) The axis title, showing next to the axis line.
  final HCXAxisTitleOptions? title;

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

  /// (Highcharts, Highstock, Highmaps, Gantt) The Z index for the axis group.
  final num? zIndex;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to zoom axis. If `chart.zoomType` is set, the option allows to disable zooming on an individual axis.
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
    if (angle != null) {
      json['angle'] = angle;
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
      json['gridLineColor'] = hcJsonValue(gridLineColor);
    }
    if (gridLineDashStyle != null) {
      json['gridLineDashStyle'] = gridLineDashStyle;
    }
    if (gridLineInterpolation != null) {
      json['gridLineInterpolation'] = gridLineInterpolation;
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
    if (linkedTo != null) {
      json['linkedTo'] = linkedTo;
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
    if (maxRange != null) {
      json['maxRange'] = maxRange;
    }
    if (maxZoom != null) {
      json['maxZoom'] = maxZoom;
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
    if (minRange != null) {
      json['minRange'] = minRange;
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
    if (ordinal != null) {
      json['ordinal'] = ordinal;
    }
    if (overscroll != null) {
      json['overscroll'] = hcJsonValue(overscroll);
    }
    if (pane != null) {
      json['pane'] = pane;
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
    if (range != null) {
      json['range'] = range;
    }
    if (reversed != null) {
      json['reversed'] = reversed;
    }
    if (reversedStacks != null) {
      json['reversedStacks'] = reversedStacks;
    }
    if (scrollbar != null) {
      json['scrollbar'] = scrollbar!.toJson();
    }
    if (showEmpty != null) {
      json['showEmpty'] = showEmpty;
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
class HCXAxisPlotBandsEventsOptions implements HCOption {
  const HCXAxisPlotBandsEventsOptions();

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    return json;
  }
}

/// (Highcharts, Highstock, Gantt) Text labels for the plot bands
class HCXAxisPlotBandsLabelOptions implements HCOption {
  const HCXAxisPlotBandsLabelOptions({
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
class HCXAxisPlotBandsOptions implements HCOption {
  const HCXAxisPlotBandsOptions({
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
  final HCXAxisPlotBandsEventsOptions? events;

  /// (Highcharts, Highstock, Gantt) The start position of the plot band in axis units.
  final dynamic from;

  /// (Highcharts, Highstock, Gantt) An id used for identifying the plot band in Axis.removePlotBand.
  final String? id;

  /// (Highcharts, Highstock, Gantt) Text labels for the plot bands
  final HCXAxisPlotBandsLabelOptions? label;

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
class HCXAxisPlotLinesEventsOptions implements HCOption {
  const HCXAxisPlotLinesEventsOptions();

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    return json;
  }
}

/// (Highcharts, Highstock, Gantt) Text labels for the plot lines
class HCXAxisPlotLinesLabelOptions implements HCOption {
  const HCXAxisPlotLinesLabelOptions({
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

class HCXAxisPlotLinesLabelsOptions implements HCOption {
  const HCXAxisPlotLinesLabelsOptions({
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
class HCXAxisPlotLinesOptions implements HCOption {
  const HCXAxisPlotLinesOptions({
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
  final HCXAxisPlotLinesEventsOptions? events;

  /// (Highcharts, Highstock, Gantt) An id used for identifying the plot line in Axis.removePlotLine.
  final String? id;

  /// (Highcharts, Highstock, Gantt) Text labels for the plot lines
  final HCXAxisPlotLinesLabelOptions? label;

  final HCXAxisPlotLinesLabelsOptions? labels;

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

/// (Highstock) An optional scrollbar to display on the X axis in response to limiting the minimum and maximum of the axis values.
class HCXAxisScrollbarOptions implements HCOption {
  const HCXAxisScrollbarOptions({
    this.barBackgroundColor,
    this.barBorderColor,
    this.barBorderRadius,
    this.barBorderWidth,
    this.buttonArrowColor,
    this.buttonBackgroundColor,
    this.buttonBorderColor,
    this.buttonBorderRadius,
    this.buttonBorderWidth,
    this.buttonsEnabled,
    this.enabled,
    this.height,
    this.liveRedraw,
    this.margin,
    this.minWidth,
    this.opposite,
    this.rifleColor,
    this.showFull,
    this.trackBackgroundColor,
    this.trackBorderColor,
    this.trackBorderRadius,
    this.trackBorderWidth,
    this.zIndex,
  });

  /// (Highstock) The background color of the scrollbar itself.
  final dynamic barBackgroundColor;

  /// (Highstock) The color of the scrollbar's border.
  final dynamic barBorderColor;

  /// (Highstock) The border rounding radius of the bar.
  final num? barBorderRadius;

  /// (Highstock) The width of the bar's border.
  final num? barBorderWidth;

  /// (Highstock) The color of the small arrow inside the scrollbar buttons.
  final dynamic buttonArrowColor;

  /// (Highstock) The color of scrollbar buttons.
  final dynamic buttonBackgroundColor;

  /// (Highstock) The color of the border of the scrollbar buttons.
  final dynamic buttonBorderColor;

  /// (Highstock) The corner radius of the scrollbar buttons.
  final num? buttonBorderRadius;

  /// (Highstock) The border width of the scrollbar buttons.
  final num? buttonBorderWidth;

  /// (Highstock) Enable or disable the buttons at the end of the scrollbar.
  final bool? buttonsEnabled;

  /// (Highstock) Enable or disable the scrollbar.
  final bool? enabled;

  /// (Highstock) The height of the scrollbar. If `buttonsEnabled` is true , the height also applies to the width of the scroll arrows so that they are always squares.
  final num? height;

  /// (Highstock) Whether to redraw the main chart as the scrollbar or the navigator zoomed window is moved. Defaults to `true` for modern browsers and `false` for legacy IE browsers as well as mobile devices. This option works regardless of whether the scrollbar is enabled or not.
  final bool? liveRedraw;

  /// (Highstock) The margin between the scrollbar and its axis when the scrollbar is applied directly to an axis, or the navigator in case that is enabled. Defaults to 10 for axis, 3 for navigator.
  final num? margin;

  /// (Highstock) The minimum width of the scrollbar.
  final num? minWidth;

  /// (Highstock) Defines the position of the scrollbar. By default, it is positioned on the opposite of the main axis (right side of the chart). However, in the case of RTL languages could be set to `false` which positions the scrollbar on the left.
  final bool? opposite;

  /// (Highstock) The color of the small rifles in the middle of the scrollbar.
  final dynamic rifleColor;

  /// (Highstock) Whether to show or hide the scrollbar when the scrolled content is zoomed out to it full extent.
  final bool? showFull;

  /// (Highstock) The color of the track background.
  final dynamic trackBackgroundColor;

  /// (Highstock) The color of the border of the scrollbar track.
  final dynamic trackBorderColor;

  /// (Highstock) The corner radius of the border of the scrollbar track.
  final num? trackBorderRadius;

  /// (Highstock) The width of the border of the scrollbar track.
  final num? trackBorderWidth;

  /// (Highstock) The z index of the scrollbar group.
  final num? zIndex;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (barBackgroundColor != null) {
      json['barBackgroundColor'] = hcJsonValue(barBackgroundColor);
    }
    if (barBorderColor != null) {
      json['barBorderColor'] = hcJsonValue(barBorderColor);
    }
    if (barBorderRadius != null) {
      json['barBorderRadius'] = barBorderRadius;
    }
    if (barBorderWidth != null) {
      json['barBorderWidth'] = barBorderWidth;
    }
    if (buttonArrowColor != null) {
      json['buttonArrowColor'] = hcJsonValue(buttonArrowColor);
    }
    if (buttonBackgroundColor != null) {
      json['buttonBackgroundColor'] = hcJsonValue(buttonBackgroundColor);
    }
    if (buttonBorderColor != null) {
      json['buttonBorderColor'] = hcJsonValue(buttonBorderColor);
    }
    if (buttonBorderRadius != null) {
      json['buttonBorderRadius'] = buttonBorderRadius;
    }
    if (buttonBorderWidth != null) {
      json['buttonBorderWidth'] = buttonBorderWidth;
    }
    if (buttonsEnabled != null) {
      json['buttonsEnabled'] = buttonsEnabled;
    }
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    if (height != null) {
      json['height'] = height;
    }
    if (liveRedraw != null) {
      json['liveRedraw'] = liveRedraw;
    }
    if (margin != null) {
      json['margin'] = margin;
    }
    if (minWidth != null) {
      json['minWidth'] = minWidth;
    }
    if (opposite != null) {
      json['opposite'] = opposite;
    }
    if (rifleColor != null) {
      json['rifleColor'] = hcJsonValue(rifleColor);
    }
    if (showFull != null) {
      json['showFull'] = showFull;
    }
    if (trackBackgroundColor != null) {
      json['trackBackgroundColor'] = hcJsonValue(trackBackgroundColor);
    }
    if (trackBorderColor != null) {
      json['trackBorderColor'] = hcJsonValue(trackBorderColor);
    }
    if (trackBorderRadius != null) {
      json['trackBorderRadius'] = trackBorderRadius;
    }
    if (trackBorderWidth != null) {
      json['trackBorderWidth'] = trackBorderWidth;
    }
    if (zIndex != null) {
      json['zIndex'] = zIndex;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) The axis title, showing next to the axis line.
class HCXAxisTitleOptions implements HCOption {
  const HCXAxisTitleOptions({
    this.align,
    this.enabled,
    this.margin,
    this.offset,
    this.position3d,
    this.reserveSpace,
    this.rotation,
    this.skew3d,
    this.style,
    this.text,
    this.textAlign,
    this.useHTML,
    this.x,
    this.y,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Alignment of the title relative to the axis values. Possible values are "low", "middle" or "high".
  final String? align;

  /// (Highcharts) Deprecated. Set the `text` to `undefined` to disable the title.
  final bool? enabled;

  /// (Highcharts, Highstock, Highmaps, Gantt) The pixel distance between the axis labels or line and the title. Defaults to 0 for horizontal axes, 10 for vertical
  final num? margin;

  /// (Highcharts, Highstock, Highmaps, Gantt) The distance from the plot area to the axis line. A positive offset moves the axis with its line, labels and ticks away from the plot area. With multiple axes the offset is dynamically adjusted to avoid collision, this can be overridden by setting offset expl
  final dynamic offset;

  /// (Highcharts) Defines how the title is repositioned according to the 3D chart orientation.
  final String? position3d;

  /// (Highcharts, Highstock, Gantt) Whether to reserve space for the title when laying out the axis.
  final bool? reserveSpace;

  /// (Highcharts, Highstock, Highmaps, Gantt) The rotation of the text in degrees. 0 is horizontal, 270 is vertical reading from bottom to top. Defaults to 0 for horizontal axes, 270 for left-side axes and 90 for right-side axes.
  final num? rotation;

  /// (Highcharts) If enabled, the axis title will skewed to follow the perspective.
  final bool? skew3d;

  /// (Highcharts, Highstock, Highmaps, Gantt) CSS styles for the title. If the title text is longer than the axis length, it will wrap to multiple lines by default. This can be customized by setting the `lineClamp` property, by setting a specific `width` or by setting `whiteSpace: 'nowrap'`.
  final dynamic style;

  /// (Highcharts, Highstock, Highmaps, Gantt) The actual text of the axis title. It can contain basic HTML tags like `b`, `i` and `span` with style.
  final String? text;

  /// (Highcharts, Highstock, Highmaps, Gantt) Alignment of the text, can be `"left"`, `"right"` or `"center"`. Default alignment depends on the title.align:
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
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    if (margin != null) {
      json['margin'] = margin;
    }
    if (offset != null) {
      json['offset'] = hcJsonValue(offset);
    }
    if (position3d != null) {
      json['position3d'] = position3d;
    }
    if (reserveSpace != null) {
      json['reserveSpace'] = reserveSpace;
    }
    if (rotation != null) {
      json['rotation'] = rotation;
    }
    if (skew3d != null) {
      json['skew3d'] = skew3d;
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

/// (Highcharts, Highstock, Highmaps, Gantt) CSS styles for the title. If the title text is longer than the axis length, it will wrap to multiple lines by default. This can be customized by setting the `lineClamp` property, by setting a specific `width` or by setting `whiteSpace: 'nowrap'`.
class HCXAxisTitleStyleOptions implements HCOption {
  const HCXAxisTitleStyleOptions({
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
class HCYAxisBreaksOptions implements HCOption {
  const HCYAxisBreaksOptions({
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

/// (Highcharts, Highstock, Highmaps, Gantt) Event handlers for the axis.
class HCYAxisEventsOptions implements HCOption {
  const HCYAxisEventsOptions();

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    return json;
  }
}

/// (Gantt) Set grid options for the axis labels. Requires Highcharts Gantt.
class HCYAxisGridOptions implements HCOption {
  const HCYAxisGridOptions({
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
class HCYAxisLabelsLevelsOptions implements HCOption {
  const HCYAxisLabelsLevelsOptions({
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

/// (Highcharts, Highstock, Highmaps, Gantt) The axis labels show the number or category for each tick.
class HCYAxisLabelsOptions implements HCOption {
  const HCYAxisLabelsOptions({
    this.align,
    this.allowOverlap,
    this.autoRotation,
    this.autoRotationLimit,
    this.distance,
    this.enabled,
    this.format,
    this.indentation,
    this.levels,
    this.maxStaggerLines,
    this.overflow,
    this.padding,
    this.position3d,
    this.reserveSpace,
    this.rotation,
    this.skew3d,
    this.staggerLines,
    this.step,
    this.style,
    this.symbol,
    this.useHTML,
    this.x,
    this.y,
    this.zIndex,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) What part of the string the given position is anchored to. Can be one of `"left"`, `"center"` or `"right"`. The exact position also depends on the `labels.x` setting.
  final String? align;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to allow the axis labels to overlap. When false, overlapping labels are hidden.
  final bool? allowOverlap;

  /// (Highcharts, Highstock, Gantt) For horizontal axes, the allowed degrees of label rotation to prevent overlapping labels. If there is enough space, labels are not rotated. As the chart gets narrower, it will start rotating the labels -45 degrees, then remove every second label and try again with rota
  final List<num>? autoRotation;

  /// (Highcharts, Gantt) When each category width is more than this many pixels, we don't apply auto rotation. Instead, we lay out the axis label with word wrap. A lower limit makes sense when the label contains multiple short words that don't extend the available horizontal space for each label.
  final num? autoRotationLimit;

  /// (Highcharts) The label's pixel distance from the perimeter of the plot area. On cartesian charts, this is overridden if the `labels.y` setting is set.
  final dynamic distance;

  /// (Highcharts, Highstock, Highmaps, Gantt) Enable or disable the axis labels.
  final bool? enabled;

  /// (Highcharts, Highstock, Highmaps, Gantt) A format string for the axis label. The context is available as format string variables. For example, you can use `{text}` to insert the default formatted text. The recommended way of adding units for the label is using `text`, for example `{text} km`.
  final String? format;

  /// (Gantt) The number of pixels to indent the labels per level in a treegrid axis.
  final num? indentation;

  /// (Gantt) Set options on specific levels in a tree grid axis. Takes precedence over labels options.
  final List<HCYAxisLabelsLevelsOptions>? levels;

  /// (Highcharts, Highstock, Highmaps, Gantt) Horizontal axis only. When `staggerLines` is not set, `maxStaggerLines` defines how many lines the axis is allowed to add to automatically avoid overlapping X labels. Set to `1` to disable overlap detection.
  final num? maxStaggerLines;

  /// (Highcharts, Highstock, Highmaps, Gantt) How to handle overflowing labels on horizontal axis. If set to `"allow"`, it will not be aligned at all. By default it `"justify"` labels inside the chart area. If there is room to move it, it will be aligned to the edge, else it will be removed.
  final String? overflow;

  /// (Highcharts, Gantt) The pixel padding for axis labels, to ensure white space between them. Defaults to 4 for horizontal axes, 1 for vertical.
  final num? padding;

  /// (Highcharts) Defines how the labels are be repositioned according to the 3D chart orientation.
  final String? position3d;

  /// (Highcharts, Highstock, Gantt) Whether to reserve space for the labels. By default, space is reserved for the labels in these cases:
  final bool? reserveSpace;

  /// (Highcharts, Highstock, Highmaps, Gantt) Rotation of the labels in degrees. When `undefined`, the `autoRotation` option takes precedence.
  final num? rotation;

  /// (Highcharts) If enabled, the axis labels will skewed to follow the perspective.
  final bool? skew3d;

  /// (Highcharts, Highstock, Highmaps, Gantt) Horizontal axes only. The number of lines to spread the labels over to make room or tighter labels. 0 disables staggering.
  final num? staggerLines;

  /// (Highcharts, Highstock, Highmaps, Gantt) To show only every _n_'th label on the axis, set the step to _n_. Setting the step to 2 shows every other label.
  final num? step;

  /// (Highcharts, Highstock, Highmaps, Gantt) CSS styles for the label. Use `lineClamp` to control wrapping of category labels. Use `textOverflow: 'none'` to prevent ellipsis (dots).
  final dynamic style;

  /// (Gantt) The symbol for the collapse and expand icon in a treegrid.
  final HCYAxisLabelsSymbolOptions? symbol;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to use HTML to render the labels.
  final bool? useHTML;

  /// (Highcharts, Highstock, Highmaps, Gantt) The x position offset of all labels relative to the tick positions on the axis. Defaults to -15 for left axis, 15 for right axis.
  final num? x;

  /// (Highcharts, Highstock, Highmaps, Gantt) The y position offset of all labels relative to the tick positions on the axis. For polar and radial axis consider the use of the distance option.
  final num? y;

  /// (Highcharts, Highstock, Highmaps, Gantt) The Z index for the axis labels.
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
      json['distance'] = hcJsonValue(distance);
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
    if (position3d != null) {
      json['position3d'] = position3d;
    }
    if (reserveSpace != null) {
      json['reserveSpace'] = reserveSpace;
    }
    if (rotation != null) {
      json['rotation'] = rotation;
    }
    if (skew3d != null) {
      json['skew3d'] = skew3d;
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

/// (Highcharts, Highstock, Highmaps, Gantt) CSS styles for the label. Use `lineClamp` to control wrapping of category labels. Use `textOverflow: 'none'` to prevent ellipsis (dots).
class HCYAxisLabelsStyleOptions implements HCOption {
  const HCYAxisLabelsStyleOptions({
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
class HCYAxisLabelsSymbolOptions implements HCOption {
  const HCYAxisLabelsSymbolOptions({
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

/// (Highcharts) Relevant only for pictorial series. The `stackShadow` forms the background of stacked points. Requires `series.stacking` to be defined.
class HCYAxisOptions implements HCOption {
  const HCYAxisOptions({
    this.accessibility,
    this.alignTicks,
    this.allowDecimals,
    this.alternateGridColor,
    this.angle,
    this.borderColor,
    this.borderWidth,
    this.breaks,
    this.categories,
    this.ceiling,
    this.className,
    this.color,
    this.crosshair,
    this.crossing,
    this.dateTimeLabelFormats,
    this.enabled,
    this.endOnTick,
    this.events,
    this.floor,
    this.grid,
    this.gridLineColor,
    this.gridLineDashStyle,
    this.gridLineInterpolation,
    this.gridLineWidth,
    this.gridZIndex,
    this.height,
    this.id,
    this.labels,
    this.left,
    this.lineColor,
    this.lineWidth,
    this.linkedTo,
    this.margin,
    this.max,
    this.maxColor,
    this.maxLength,
    this.maxPadding,
    this.maxRange,
    this.maxZoom,
    this.min,
    this.minColor,
    this.minLength,
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
    this.minRange,
    this.minTickInterval,
    this.offset,
    this.opposite,
    this.pane,
    this.panningEnabled,
    this.plotBands,
    this.plotLines,
    this.range,
    this.resize,
    this.reversed,
    this.reversedStacks,
    this.scrollbar,
    this.showEmpty,
    this.showFirstLabel,
    this.showLastLabel,
    this.softMax,
    this.softMin,
    this.stackLabels,
    this.stackShadow,
    this.startOfWeek,
    this.startOnTick,
    this.staticScale,
    this.stops,
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
    this.tooltipValueFormat,
    this.top,
    this.type,
    this.uniqueNames,
    this.units,
    this.visible,
    this.width,
    this.zIndex,
    this.zoomEnabled,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Accessibility options for an axis. Requires the accessibility module.
  final HCAxisAccessibilityOptionsObject? accessibility;

  /// (Highcharts, Highstock, Gantt) When using multiple axis, the ticks of two or more opposite axes will automatically be aligned by adding ticks to the axis or axes with the least ticks, as if `tickAmount` were specified.
  final bool? alignTicks;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to allow decimals in this axis' ticks. When counting integers, like persons or hits on a web page, decimals should be avoided in the labels. By default, decimals are allowed on small scale axes.
  final bool? allowDecimals;

  /// (Highcharts, Highstock, Highmaps, Gantt) When using an alternate grid color, a band is painted across the plot area between every other grid line.
  final dynamic alternateGridColor;

  /// (Highcharts) In a polar chart, this is the angle of the Y axis in degrees, where 0 is up and 90 is right. The angle determines the position of the axis line and the labels, though the coordinate system is unaffected. Since v8.0.0 this option is also applicable for X axis (inverted polar).
  final num? angle;

  /// (Highcharts) The color of the `stackShadow` border.
  final dynamic borderColor;

  /// (Highcharts) The width of the `stackShadow` border.
  final num? borderWidth;

  /// (Highcharts, Highstock, Gantt) An array defining breaks in the axis, the sections defined will be left out and all the points shifted closer to each other.
  final List<HCYAxisBreaksOptions>? breaks;

  /// (Highcharts, Gantt) If categories are present for the xAxis, names are used instead of numbers for that axis.
  final List<String>? categories;

  /// (Highcharts, Highstock, Gantt) The highest allowed value for automatically computed axis extremes.
  final num? ceiling;

  /// (Highcharts, Highstock, Highmaps, Gantt) A class name that opens for styling the axis by CSS, especially in Highcharts styled mode. The class name is applied to group elements for the grid, axis elements and labels.
  final String? className;

  /// (Highcharts) The color of the `stackShadow`.
  final dynamic color;

  /// (Highcharts, Highstock, Highmaps, Gantt) Configure a crosshair that follows either the mouse pointer or the hovered point.
  final dynamic crosshair;

  /// (Highcharts, Highstock, Highmaps, Gantt) The value on a perpendicular axis where this axis should cross. This is typically used on mathematical plots where the axes cross at 0. When `crossing` is set, space will not be reserved at the sides of the chart for axis labels and title, so those may be cli
  final num? crossing;

  /// (Highcharts, Highstock, Gantt) For a datetime axis, the scale will automatically adjust to the appropriate unit. This member gives the default representations used for each unit. For easier data interpretation, `hour`, `day`, `month` and `year` units can be used and formatted as boundary tick values
  final HCAxisDateTimeLabelFormatsOptions? dateTimeLabelFormats;

  /// (Highcharts) Enable or disable `stackShadow`.
  final bool? enabled;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to force the axis to end on a tick. Use this option with the `maxPadding` option to control the axis end.
  final bool? endOnTick;

  /// (Highcharts, Highstock, Highmaps, Gantt) Event handlers for the axis.
  final HCYAxisEventsOptions? events;

  /// (Highcharts, Highstock, Gantt) The lowest allowed value for automatically computed axis extremes.
  final num? floor;

  /// (Gantt) Set grid options for the axis labels. Requires Highcharts Gantt.
  final HCYAxisGridOptions? grid;

  /// (Highcharts, Highstock, Highmaps, Gantt) Color of the grid lines extending the ticks across the plot area.
  final dynamic gridLineColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) The dash or dot style of the grid lines. For possible values, see this demonstration.
  final String? gridLineDashStyle;

  /// (Highcharts) Polar charts only. Whether the grid lines should draw as a polygon with straight lines between categories, or as circles. Can be either `circle` or `polygon`. Since v8.0.0 this option is also applicable for X axis (inverted polar).
  final String? gridLineInterpolation;

  /// (Highcharts, Highstock, Highmaps, Gantt) The width of the grid lines extending the ticks across the plot area. Defaults to 1 on the Y axis and 0 on the X axis, except for 3d charts and gauges.
  final num? gridLineWidth;

  /// (Highcharts, Highstock, Gantt) The Z index of the grid lines.
  final num? gridZIndex;

  /// (Highcharts, Highstock) The height of the Y axis. If it's a number, it is interpreted as pixels.
  final dynamic height;

  /// (Highcharts, Highstock, Highmaps, Gantt) An id for the axis. This can be used after render time to get a pointer to the axis object through `chart.get()`.
  final String? id;

  /// (Highcharts, Highstock, Highmaps, Gantt) The axis labels show the number or category for each tick.
  final HCYAxisLabelsOptions? labels;

  /// (Highcharts, Highstock) The left position as the horizontal axis. If it's a number, it is interpreted as pixel position relative to the chart.
  final dynamic left;

  /// (Highcharts, Highstock, Highmaps, Gantt) The color of the line marking the axis itself.
  final dynamic lineColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) The width of the line marking the axis itself.
  final num? lineWidth;

  /// (Highcharts, Highstock, Gantt) Index of another axis that this axis is linked to. When an axis is linked to a master axis, it will take the same extremes as the master, but as assigned by min or max or by setExtremes. It can be used to show additional info, or to ease reading the chart by duplicatin
  final num? linkedTo;

  /// (Highcharts, Highstock, Highmaps, Gantt) If there are multiple axes on the same side of the chart, the pixel margin between the axes. Defaults to 0 on vertical axes, 15 on horizontal axes.
  final num? margin;

  /// (Highcharts, Highstock, Highmaps, Gantt) The maximum value of the axis. If `undefined`, the max value is automatically calculated.
  final dynamic max;

  /// (Highcharts) Solid gauge only. Unless stops are set, the color to represent the maximum value of the Y axis.
  final dynamic maxColor;

  /// (Highstock) Maximal size of a resizable axis. Could be set as a percent of plot area or pixel size.
  final dynamic maxLength;

  /// (Highcharts, Highstock, Gantt) Padding of the max value relative to the length of the axis. A padding of 0.05 will make a 100px axis 5px longer. This is useful when you don't want the highest data value to appear on the edge of the plot area. When the axis' `max` option is set or a max extreme is se
  final num? maxPadding;

  /// (Highstock, Gantt) Maximum range which can be set using the navigator's handles. Opposite of xAxis.minRange.
  final num? maxRange;

  /// (Highcharts, Highstock) Deprecated. Use `minRange` instead.
  final num? maxZoom;

  /// (Highcharts, Highstock, Highmaps, Gantt) The minimum value of the axis. If `undefined`, the min value is automatically calculated.
  final dynamic min;

  /// (Highcharts) Solid gauge only. Unless stops are set, the color to represent the minimum value of the Y axis.
  final dynamic minColor;

  /// (Highstock) Minimal size of a resizable axis. Could be set as a percent of plot area or pixel size.
  final dynamic minLength;

  /// (Highcharts, Highstock, Highmaps, Gantt) Color of the minor, secondary grid lines.
  final dynamic minorGridLineColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) The dash or dot style of the minor grid lines. For possible values, see this demonstration.
  final String? minorGridLineDashStyle;

  /// (Highcharts, Highstock, Highmaps, Gantt) Width of the minor, secondary grid lines.
  final num? minorGridLineWidth;

  /// (Highcharts, Highstock, Highmaps, Gantt) Color for the minor tick marks.
  final dynamic minorTickColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) Specific tick interval in axis units for the minor ticks. On a linear axis, if `"auto"`, the minor tick interval is calculated as a fifth of the tickInterval. If `undefined`, minor ticks are not shown.
  final dynamic minorTickInterval;

  /// (Highcharts, Highstock, Highmaps, Gantt) The pixel length of the minor tick marks.
  final num? minorTickLength;

  /// (Highcharts, Highstock, Highmaps, Gantt) The position of the minor tick marks relative to the axis line. Can be one of `inside` and `outside`.
  final String? minorTickPosition;

  /// (Highcharts, Highstock, Highmaps, Gantt) Enable or disable minor ticks. The interval between the minor ticks can be controlled either by the minorTicksPerMajor setting, or as an absolute minorTickInterval value.
  final bool? minorTicks;

  /// (Highcharts, Highstock, Highmaps, Gantt) The number of minor ticks per major tick. Works for `linear`, `logarithmic` and `datetime` axes.
  final num? minorTicksPerMajor;

  /// (Highcharts, Highstock, Highmaps, Gantt) The pixel width of the minor tick mark.
  final num? minorTickWidth;

  /// (Highcharts, Highstock, Gantt) Padding of the min value relative to the length of the axis. A padding of 0.05 will make a 100px axis 5px longer. This is useful when you don't want the lowest data value to appear on the edge of the plot area. When the axis' `min` option is set or a max extreme is set
  final num? minPadding;

  /// (Highcharts, Highstock, Highmaps, Gantt) The minimum range to display on this axis. The entire axis will not be allowed to span over a smaller interval than this. For example, for a datetime axis the main unit is milliseconds. If minRange is set to 3600000, you can't zoom in more than to one hour.
  final num? minRange;

  /// (Highcharts, Highstock, Highmaps, Gantt) The minimum tick interval allowed in axis values. For example on zooming in on an axis with daily data, this can be used to prevent the axis from showing hours. Defaults to the closest distance between two points on the axis.
  final num? minTickInterval;

  /// (Highcharts, Highstock, Highmaps, Gantt) The distance in pixels from the plot area to the axis line. A positive offset moves the axis with its line, labels and ticks away from the plot area. This is typically used when two or more axes are displayed on the same side of the plot. With multiple axes t
  final num? offset;

  /// (Highstock, Highcharts, Gantt) Whether to display the axis on the opposite side of the normal. The normal is on the left side for vertical axes and bottom for horizontal, so the opposite sides will be right and top respectively. This is typically used with dual or multiple axes.
  final bool? opposite;

  /// (Highcharts) Refers to the index in the panes array. Used for circular gauges and polar charts. When the option is not set then first pane will be used.
  final num? pane;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to pan axis. If `chart.panning` is enabled, the option allows to disable panning on an individual axis.
  final bool? panningEnabled;

  /// (Highcharts, Highstock, Gantt) An array of colored bands stretching across the plot area marking an interval on the axis.
  final List<HCYAxisPlotBandsOptions>? plotBands;

  /// (Highcharts, Highstock, Gantt) An array of lines stretching across the plot area, marking a specific value on one of the axes.
  final List<HCYAxisPlotLinesOptions>? plotLines;

  /// (Highstock) The zoomed range to display when only defining one or none of `min` or `max`. For example, to show the latest month, a range of one month can be set.
  final num? range;

  /// (Highstock) Options for axis resizing. It adds a thick line between panes which the user can drag in order to resize the panes.
  final HCYAxisResizeOptions? resize;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to reverse the axis so that the highest number is closest to the origin.
  final bool? reversed;

  /// (Highcharts, Highstock) If `true`, the first series in a stack will be drawn on top in a positive, non-reversed Y axis. If `false`, the first series is in the base of the stack.
  final bool? reversedStacks;

  /// (Highstock) An optional scrollbar to display on the Y axis in response to limiting the minimum an maximum of the axis values.
  final HCYAxisScrollbarOptions? scrollbar;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to show the axis line and title when the axis has no data.
  final bool? showEmpty;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to show the first tick label.
  final bool? showFirstLabel;

  /// (Highcharts, Highstock, Gantt) Whether to show the last tick label.
  final bool? showLastLabel;

  /// (Highcharts, Highstock, Gantt) A soft maximum for the axis. If the series data maximum is less than this, the axis will stay at this maximum, but if the series data maximum is higher, the axis will flex to show all data.
  final num? softMax;

  /// (Highcharts, Highstock, Gantt) A soft minimum for the axis. If the series data minimum is greater than this, the axis will stay at this minimum, but if the series data minimum is lower, the axis will flex to show all data.
  final num? softMin;

  /// (Highcharts) The stack labels show the total value for each bar in a stacked column or bar chart. The label will be placed on top of positive columns and below negative columns. In case of an inverted column chart or a bar chart the label is placed to the right of positive bars and to the left of ne
  final HCYAxisStackLabelsOptions? stackLabels;

  /// (Highcharts) Relevant only for pictorial series. The `stackShadow` forms the background of stacked points. Requires `series.stacking` to be defined.
  final HCYAxisOptions? stackShadow;

  /// (Highcharts, Highstock, Gantt) For datetime axes, this decides where to put the tick between weeks. 0 = Sunday, 1 = Monday.
  final num? startOfWeek;

  /// (Highcharts, Highstock, Gantt) Whether to force the axis to start on a tick. Use this option with the `maxPadding` option to control the axis start.
  final bool? startOnTick;

  /// (Highcharts, Highstock, Gantt) For vertical axes only. Setting the static scale ensures that each tick unit is translated into a fixed pixel height. For example, setting the static scale to 24 results in each Y axis category taking up 24 pixels, and the height of the chart adjusts. Adding or removin
  final num? staticScale;

  /// (Highcharts) Solid gauge series only. Color stops for the solid gauge. Use this in cases where a linear gradient between a `minColor` and `maxColor` is not sufficient. The stops is an array of tuples, where the first item is a float between 0 and 1 assigning the relative position in the gradient, an
  final List<dynamic>? stops;

  /// (Highcharts, Highstock, Gantt) The amount of ticks to draw on the axis. This opens up for aligning the ticks of multiple charts or panes within a chart. This option overrides the `tickPixelInterval` option.
  final num? tickAmount;

  /// (Highcharts, Highstock, Highmaps, Gantt) Color for the main tick marks.
  final dynamic tickColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) The interval of the tick marks in axis units. When `undefined`, the tick interval is computed to approximately follow the tickPixelInterval on linear and datetime axes. On categorized axes, a `undefined` tickInterval will default to 1, one category. Note that
  final num? tickInterval;

  /// (Highcharts, Highstock, Highmaps, Gantt) The pixel length of the main tick marks.
  final num? tickLength;

  /// (Highcharts, Gantt) For categorized axes only. If `on` the tick mark is placed in the center of the category, if `between` the tick mark is placed between categories. The default is `between` if the `tickInterval` is 1, else `on`. In order to render tick marks on a category axis it is necessary to p
  final String? tickmarkPlacement;

  /// (Highcharts, Highstock, Highmaps, Gantt) If tickInterval is `null` this option sets the approximate pixel interval of the tick marks. Not applicable to categorized axis.
  final num? tickPixelInterval;

  /// (Highcharts, Highstock, Highmaps, Gantt) The position of the major tick marks relative to the axis line. Can be one of `inside` and `outside`.
  final String? tickPosition;

  /// (Highcharts, Highstock, Highmaps, Gantt) An array defining where the ticks are laid out on the axis. This overrides the default behavior of tickPixelInterval and tickInterval.
  final List<num>? tickPositions;

  /// (Highcharts, Highstock, Gantt) The pixel width of the major tick marks.
  final num? tickWidth;

  /// (Highcharts, Highstock, Highmaps, Gantt) The axis title, showing next to the axis line.
  final HCYAxisTitleOptions? title;

  /// (Highcharts) Parallel coordinates only. Format that will be used for point.y and available in tooltip.pointFormat as `{point.formattedValue}`. If not set, `{point.formattedValue}` will use other options, in this order:
  final String? tooltipValueFormat;

  /// (Highcharts, Highstock) The top position of the Y axis. If it's a number, it is interpreted as pixel position relative to the chart.
  final dynamic top;

  /// (Highcharts, Gantt) The type of axis. Can be one of `linear`, `logarithmic`, `datetime`, `category` or `treegrid`. Defaults to `treegrid` for Gantt charts, `linear` for other chart types.
  final String? type;

  /// (Highcharts, Gantt) Applies only when the axis `type` is `category`. When `uniqueNames` is true, points are placed on the X axis according to their names. If the same point name is repeated in the same or another series, the point is placed on the same X position as other points of the same name. Wh
  final bool? uniqueNames;

  /// (Highcharts, Highstock, Gantt) Datetime axis only. An array determining what time intervals the ticks are allowed to fall on. Each array item is an array where the first value is the time unit and the second value another array of allowed multiples.
  final List<dynamic>? units;

  /// (Highcharts, Highstock, Gantt) Whether axis, including axis title, line, ticks and labels, should be visible.
  final bool? visible;

  /// (Highcharts, Highstock) The width as the horizontal axis. If it's a number, it is interpreted as pixels.
  final dynamic width;

  /// (Highcharts, Highstock, Highmaps, Gantt) The Z index for the axis group.
  final num? zIndex;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to zoom axis. If `chart.zoomType` is set, the option allows to disable zooming on an individual axis.
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
    if (angle != null) {
      json['angle'] = angle;
    }
    if (borderColor != null) {
      json['borderColor'] = hcJsonValue(borderColor);
    }
    if (borderWidth != null) {
      json['borderWidth'] = borderWidth;
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
    if (color != null) {
      json['color'] = hcJsonValue(color);
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
    if (enabled != null) {
      json['enabled'] = enabled;
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
    if (gridLineInterpolation != null) {
      json['gridLineInterpolation'] = gridLineInterpolation;
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
    if (linkedTo != null) {
      json['linkedTo'] = linkedTo;
    }
    if (margin != null) {
      json['margin'] = margin;
    }
    if (max != null) {
      json['max'] = hcJsonValue(max);
    }
    if (maxColor != null) {
      json['maxColor'] = hcJsonValue(maxColor);
    }
    if (maxLength != null) {
      json['maxLength'] = hcJsonValue(maxLength);
    }
    if (maxPadding != null) {
      json['maxPadding'] = maxPadding;
    }
    if (maxRange != null) {
      json['maxRange'] = maxRange;
    }
    if (maxZoom != null) {
      json['maxZoom'] = maxZoom;
    }
    if (min != null) {
      json['min'] = hcJsonValue(min);
    }
    if (minColor != null) {
      json['minColor'] = hcJsonValue(minColor);
    }
    if (minLength != null) {
      json['minLength'] = hcJsonValue(minLength);
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
    if (minRange != null) {
      json['minRange'] = minRange;
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
    if (pane != null) {
      json['pane'] = pane;
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
    if (range != null) {
      json['range'] = range;
    }
    if (resize != null) {
      json['resize'] = resize!.toJson();
    }
    if (reversed != null) {
      json['reversed'] = reversed;
    }
    if (reversedStacks != null) {
      json['reversedStacks'] = reversedStacks;
    }
    if (scrollbar != null) {
      json['scrollbar'] = scrollbar!.toJson();
    }
    if (showEmpty != null) {
      json['showEmpty'] = showEmpty;
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
    if (stackLabels != null) {
      json['stackLabels'] = stackLabels!.toJson();
    }
    if (stackShadow != null) {
      json['stackShadow'] = stackShadow!.toJson();
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
    if (stops != null) {
      json['stops'] = stops!.map((e) => hcJsonValue(e)).toList();
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
    if (tooltipValueFormat != null) {
      json['tooltipValueFormat'] = tooltipValueFormat;
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
class HCYAxisPlotBandsEventsOptions implements HCOption {
  const HCYAxisPlotBandsEventsOptions();

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    return json;
  }
}

/// (Highcharts, Highstock, Gantt) Text labels for the plot bands
class HCYAxisPlotBandsLabelOptions implements HCOption {
  const HCYAxisPlotBandsLabelOptions({
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
class HCYAxisPlotBandsOptions implements HCOption {
  const HCYAxisPlotBandsOptions({
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
  final HCYAxisPlotBandsEventsOptions? events;

  /// (Highcharts, Highstock, Gantt) The start position of the plot band in axis units.
  final dynamic from;

  /// (Highcharts, Highstock, Gantt) An id used for identifying the plot band in Axis.removePlotBand.
  final String? id;

  /// (Highcharts) In a gauge chart, this option determines the inner radius of the plot band that stretches along the perimeter. It can be given as a percentage string, like `"100%"`, or as a pixel number, like `100`. By default, the inner radius is controlled by the thickness option.
  final dynamic innerRadius;

  /// (Highcharts, Highstock, Gantt) Text labels for the plot bands
  final HCYAxisPlotBandsLabelOptions? label;

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
class HCYAxisPlotLinesEventsOptions implements HCOption {
  const HCYAxisPlotLinesEventsOptions();

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    return json;
  }
}

/// (Highcharts, Highstock, Gantt) Text labels for the plot lines
class HCYAxisPlotLinesLabelOptions implements HCOption {
  const HCYAxisPlotLinesLabelOptions({
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

class HCYAxisPlotLinesLabelsOptions implements HCOption {
  const HCYAxisPlotLinesLabelsOptions({
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
class HCYAxisPlotLinesOptions implements HCOption {
  const HCYAxisPlotLinesOptions({
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
  final HCYAxisPlotLinesEventsOptions? events;

  /// (Highcharts, Highstock, Gantt) An id used for identifying the plot line in Axis.removePlotLine.
  final String? id;

  /// (Highcharts, Highstock, Gantt) Text labels for the plot lines
  final HCYAxisPlotLinesLabelOptions? label;

  final HCYAxisPlotLinesLabelsOptions? labels;

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

/// (Highstock) Contains two arrays of axes that are controlled by control line of the axis.
class HCYAxisResizeControlledAxisOptions implements HCOption {
  const HCYAxisResizeControlledAxisOptions({
    this.next,
    this.prev,
  });

  /// (Highstock) Array of axes that should move out of the way of resizing being done for the current axis. If not set, the next axis will be used.
  final List<dynamic>? next;

  /// (Highstock) Array of axes that should move with the current axis while resizing.
  final List<dynamic>? prev;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (next != null) {
      json['next'] = next!.map((e) => hcJsonValue(e)).toList();
    }
    if (prev != null) {
      json['prev'] = prev!.map((e) => hcJsonValue(e)).toList();
    }
    return json;
  }
}

/// (Highstock) Options for axis resizing. It adds a thick line between panes which the user can drag in order to resize the panes.
class HCYAxisResizeOptions implements HCOption {
  const HCYAxisResizeOptions({
    this.controlledAxis,
    this.cursor,
    this.enabled,
    this.lineColor,
    this.lineDashStyle,
    this.lineWidth,
    this.x,
    this.y,
  });

  /// (Highstock) Contains two arrays of axes that are controlled by control line of the axis.
  final HCYAxisResizeControlledAxisOptions? controlledAxis;

  /// (Highstock) Cursor style for the control line.
  final String? cursor;

  /// (Highstock) Enable or disable resize by drag for the axis.
  final bool? enabled;

  /// (Highstock) Color of the control line.
  final String? lineColor;

  /// (Highstock) Dash style of the control line.
  final String? lineDashStyle;

  /// (Highstock) Width of the control line.
  final num? lineWidth;

  /// (Highstock) Horizontal offset of the control line.
  final num? x;

  /// (Highstock) Vertical offset of the control line.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (controlledAxis != null) {
      json['controlledAxis'] = controlledAxis!.toJson();
    }
    if (cursor != null) {
      json['cursor'] = cursor;
    }
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    if (lineColor != null) {
      json['lineColor'] = lineColor;
    }
    if (lineDashStyle != null) {
      json['lineDashStyle'] = lineDashStyle;
    }
    if (lineWidth != null) {
      json['lineWidth'] = lineWidth;
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

/// (Highstock) An optional scrollbar to display on the Y axis in response to limiting the minimum an maximum of the axis values.
class HCYAxisScrollbarOptions implements HCOption {
  const HCYAxisScrollbarOptions({
    this.barBackgroundColor,
    this.barBorderColor,
    this.barBorderRadius,
    this.barBorderWidth,
    this.buttonArrowColor,
    this.buttonBackgroundColor,
    this.buttonBorderColor,
    this.buttonBorderRadius,
    this.buttonBorderWidth,
    this.buttonsEnabled,
    this.enabled,
    this.liveRedraw,
    this.margin,
    this.minWidth,
    this.opposite,
    this.rifleColor,
    this.showFull,
    this.size,
    this.trackBackgroundColor,
    this.trackBorderColor,
    this.trackBorderRadius,
    this.trackBorderWidth,
    this.zIndex,
  });

  /// (Highstock) The background color of the scrollbar itself.
  final dynamic barBackgroundColor;

  /// (Highstock) The color of the scrollbar's border.
  final dynamic barBorderColor;

  /// (Highstock) The border rounding radius of the bar.
  final num? barBorderRadius;

  /// (Highstock) The width of the bar's border.
  final num? barBorderWidth;

  /// (Highstock) The color of the small arrow inside the scrollbar buttons.
  final dynamic buttonArrowColor;

  /// (Highstock) The color of scrollbar buttons.
  final dynamic buttonBackgroundColor;

  /// (Highstock) The color of the border of the scrollbar buttons.
  final dynamic buttonBorderColor;

  /// (Highstock) The corner radius of the scrollbar buttons.
  final num? buttonBorderRadius;

  /// (Highstock) The border width of the scrollbar buttons.
  final num? buttonBorderWidth;

  /// (Highstock) Enable or disable the buttons at the end of the scrollbar.
  final bool? buttonsEnabled;

  /// (Highstock) Enable the scrollbar on the Y axis.
  final bool? enabled;

  /// (Highstock) Whether to redraw the main chart as the scrollbar or the navigator zoomed window is moved. Defaults to `true` for modern browsers and `false` for legacy IE browsers as well as mobile devices. This option works regardless of whether the scrollbar is enabled or not.
  final bool? liveRedraw;

  /// (Highstock) Pixel margin between the scrollbar and the axis elements.
  final num? margin;

  /// (Highstock) The minimum width of the scrollbar.
  final num? minWidth;

  /// (Highstock) Defines the position of the scrollbar. By default, it is positioned on the opposite of the main axis (right side of the chart). However, in the case of RTL languages could be set to `false` which positions the scrollbar on the left.
  final bool? opposite;

  /// (Highstock) The color of the small rifles in the middle of the scrollbar.
  final dynamic rifleColor;

  /// (Highstock) Whether to show the scrollbar when it is fully zoomed out at max range. Setting it to `false` on the Y axis makes the scrollbar stay hidden until the user zooms in, like common in browsers.
  final bool? showFull;

  /// (Highstock) The width of a vertical scrollbar or height of a horizontal scrollbar. Defaults to 20 on touch devices.
  final num? size;

  /// (Highstock) The color of the track background.
  final dynamic trackBackgroundColor;

  /// (Highstock) The color of the border of the scrollbar track.
  final dynamic trackBorderColor;

  /// (Highstock) The corner radius of the border of the scrollbar track.
  final num? trackBorderRadius;

  /// (Highstock) The width of the border of the scrollbar track.
  final num? trackBorderWidth;

  /// (Highstock) Z index of the scrollbar elements.
  final num? zIndex;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (barBackgroundColor != null) {
      json['barBackgroundColor'] = hcJsonValue(barBackgroundColor);
    }
    if (barBorderColor != null) {
      json['barBorderColor'] = hcJsonValue(barBorderColor);
    }
    if (barBorderRadius != null) {
      json['barBorderRadius'] = barBorderRadius;
    }
    if (barBorderWidth != null) {
      json['barBorderWidth'] = barBorderWidth;
    }
    if (buttonArrowColor != null) {
      json['buttonArrowColor'] = hcJsonValue(buttonArrowColor);
    }
    if (buttonBackgroundColor != null) {
      json['buttonBackgroundColor'] = hcJsonValue(buttonBackgroundColor);
    }
    if (buttonBorderColor != null) {
      json['buttonBorderColor'] = hcJsonValue(buttonBorderColor);
    }
    if (buttonBorderRadius != null) {
      json['buttonBorderRadius'] = buttonBorderRadius;
    }
    if (buttonBorderWidth != null) {
      json['buttonBorderWidth'] = buttonBorderWidth;
    }
    if (buttonsEnabled != null) {
      json['buttonsEnabled'] = buttonsEnabled;
    }
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    if (liveRedraw != null) {
      json['liveRedraw'] = liveRedraw;
    }
    if (margin != null) {
      json['margin'] = margin;
    }
    if (minWidth != null) {
      json['minWidth'] = minWidth;
    }
    if (opposite != null) {
      json['opposite'] = opposite;
    }
    if (rifleColor != null) {
      json['rifleColor'] = hcJsonValue(rifleColor);
    }
    if (showFull != null) {
      json['showFull'] = showFull;
    }
    if (size != null) {
      json['size'] = size;
    }
    if (trackBackgroundColor != null) {
      json['trackBackgroundColor'] = hcJsonValue(trackBackgroundColor);
    }
    if (trackBorderColor != null) {
      json['trackBorderColor'] = hcJsonValue(trackBorderColor);
    }
    if (trackBorderRadius != null) {
      json['trackBorderRadius'] = trackBorderRadius;
    }
    if (trackBorderWidth != null) {
      json['trackBorderWidth'] = trackBorderWidth;
    }
    if (zIndex != null) {
      json['zIndex'] = zIndex;
    }
    return json;
  }
}

/// (Highcharts) Enable or disable the initial animation when a series is displayed for the `stackLabels`. The animation can also be set as a configuration object. Please note that this option only applies to the initial animation. For other animations, see chart.animation and the animation parameter un
class HCYAxisStackLabelsAnimationOptions implements HCOption {
  const HCYAxisStackLabelsAnimationOptions({
    this.defer,
  });

  /// (Highcharts) The animation delay time in milliseconds. Set to `0` renders stackLabel immediately. As `undefined` inherits defer time from the series.animation.defer.
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

/// (Highcharts) The stack labels show the total value for each bar in a stacked column or bar chart. The label will be placed on top of positive columns and below negative columns. In case of an inverted column chart or a bar chart the label is placed to the right of positive bars and to the left of ne
class HCYAxisStackLabelsOptions implements HCOption {
  const HCYAxisStackLabelsOptions({
    this.align,
    this.allowOverlap,
    this.animation,
    this.backgroundColor,
    this.borderColor,
    this.borderRadius,
    this.borderWidth,
    this.crop,
    this.enabled,
    this.format,
    this.overflow,
    this.rotation,
    this.style,
    this.textAlign,
    this.useHTML,
    this.verticalAlign,
    this.x,
    this.y,
  });

  /// (Highcharts) Defines the horizontal alignment of the stack total label. Can be one of `"left"`, `"center"` or `"right"`. The default value is calculated at runtime and depends on orientation and whether the stack is positive or negative.
  final String? align;

  /// (Highcharts) Allow the stack labels to overlap.
  final bool? allowOverlap;

  /// (Highcharts) Enable or disable the initial animation when a series is displayed for the `stackLabels`. The animation can also be set as a configuration object. Please note that this option only applies to the initial animation. For other animations, see chart.animation and the animation parameter un
  final dynamic animation;

  /// (Highcharts) The background color or gradient for the stack label.
  final dynamic backgroundColor;

  /// (Highcharts) The border color for the stack label. Defaults to `undefined`.
  final dynamic borderColor;

  /// (Highcharts) The border radius in pixels for the stack label.
  final num? borderRadius;

  /// (Highcharts) The border width in pixels for the stack label.
  final num? borderWidth;

  /// (Highcharts) Whether to hide stack labels that are outside the plot area. By default, the stack label is moved inside the plot area according to the overflow option.
  final bool? crop;

  /// (Highcharts) Enable or disable the stack total labels.
  final bool? enabled;

  /// (Highcharts, Highstock) A format string for the data label. Available variables are the same as for `formatter`.
  final String? format;

  /// (Highcharts) How to handle stack total labels that flow outside the plot area. The default is set to `"justify"`, which aligns them inside the plot area. For columns and bars, this means it will be moved inside the bar. To display stack labels outside the plot area, set `crop` to `false` and `overfl
  final String? overflow;

  /// (Highcharts) Rotation of the labels in degrees.
  final num? rotation;

  /// (Highcharts) CSS styles for the label.
  final dynamic style;

  /// (Highcharts) The text alignment for the label. While `align` determines where the texts anchor point is placed with regards to the stack, `textAlign` determines how the text is aligned against its anchor point. Possible values are `"left"`, `"center"` and `"right"`. The default value is calculated a
  final String? textAlign;

  /// (Highcharts, Highstock) Whether to use HTML to render the labels.
  final bool? useHTML;

  /// (Highcharts) Defines the vertical alignment of the stack total label. Can be one of `"top"`, `"middle"` or `"bottom"`. The default value is calculated at runtime and depends on orientation and whether the stack is positive or negative.
  final String? verticalAlign;

  /// (Highcharts) The x position offset of the label relative to the left of the stacked bar. The default value is calculated at runtime and depends on orientation and whether the stack is positive or negative.
  final num? x;

  /// (Highcharts) The y position offset of the label relative to the tick position on the axis. The default value is calculated at runtime and depends on orientation and whether the stack is positive or negative.
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
    if (crop != null) {
      json['crop'] = crop;
    }
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    if (format != null) {
      json['format'] = format;
    }
    if (overflow != null) {
      json['overflow'] = overflow;
    }
    if (rotation != null) {
      json['rotation'] = rotation;
    }
    if (style != null) {
      json['style'] = hcJsonValue(style);
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

/// (Highcharts) CSS styles for the label.
class HCYAxisStackLabelsStyleOptions implements HCOption {
  const HCYAxisStackLabelsStyleOptions({
    this.color,
    this.fontSize,
    this.fontWeight,
    this.textOutline,
  });

  /// (Highcharts) *
  final dynamic color;

  final dynamic fontSize;

  final String? fontWeight;

  final num? textOutline;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (color != null) {
      json['color'] = hcJsonValue(color);
    }
    if (fontSize != null) {
      json['fontSize'] = hcJsonValue(fontSize);
    }
    if (fontWeight != null) {
      json['fontWeight'] = fontWeight;
    }
    if (textOutline != null) {
      json['textOutline'] = textOutline;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) The axis title, showing next to the axis line.
class HCYAxisTitleOptions implements HCOption {
  const HCYAxisTitleOptions({
    this.align,
    this.enabled,
    this.margin,
    this.offset,
    this.position3d,
    this.reserveSpace,
    this.rotation,
    this.skew3d,
    this.style,
    this.text,
    this.textAlign,
    this.useHTML,
    this.x,
    this.y,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Alignment of the title relative to the axis values. Possible values are "low", "middle" or "high".
  final String? align;

  /// (Highcharts) Deprecated. Set the `text` to `undefined` to disable the title.
  final bool? enabled;

  /// (Highcharts, Highstock, Highmaps, Gantt) The pixel distance between the axis labels and the title. Positive values are outside the axis line, negative are inside.
  final num? margin;

  /// (Highcharts, Highstock, Highmaps, Gantt) The distance from the plot area to the axis line. A positive offset moves the axis with its line, labels and ticks away from the plot area. With multiple axes the offset is dynamically adjusted to avoid collision, this can be overridden by setting offset expl
  final dynamic offset;

  /// (Highcharts) Defines how the title is repositioned according to the 3D chart orientation.
  final String? position3d;

  /// (Highcharts, Highstock, Gantt) Whether to reserve space for the title when laying out the axis.
  final bool? reserveSpace;

  /// (Highcharts, Highstock, Highmaps, Gantt) The rotation of the text in degrees. 0 is horizontal, 270 is vertical reading from bottom to top. Defaults to 0 for horizontal axes, 270 for left-side axes and 90 for right-side axes.
  final num? rotation;

  /// (Highcharts) If enabled, the axis title will skewed to follow the perspective.
  final bool? skew3d;

  /// (Highcharts, Highstock, Highmaps, Gantt) CSS styles for the title. If the title text is longer than the axis length, it will wrap to multiple lines by default. This can be customized by setting the `lineClamp` property, by setting a specific `width` or by setting `whiteSpace: 'nowrap'`.
  final dynamic style;

  /// (Highcharts, Highstock, Gantt) The actual text of the axis title. Horizontal texts can contain HTML, but rotated texts are painted using vector techniques and must be clean text. The Y axis title is disabled by setting the `text` option to `undefined`. The default value is overridden by the `lang.yA
  final String? text;

  /// (Highcharts, Highstock, Highmaps, Gantt) Alignment of the text, can be `"left"`, `"right"` or `"center"`. Default alignment depends on the title.align:
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
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    if (margin != null) {
      json['margin'] = margin;
    }
    if (offset != null) {
      json['offset'] = hcJsonValue(offset);
    }
    if (position3d != null) {
      json['position3d'] = position3d;
    }
    if (reserveSpace != null) {
      json['reserveSpace'] = reserveSpace;
    }
    if (rotation != null) {
      json['rotation'] = rotation;
    }
    if (skew3d != null) {
      json['skew3d'] = skew3d;
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

/// (Highcharts, Highstock, Highmaps, Gantt) CSS styles for the title. If the title text is longer than the axis length, it will wrap to multiple lines by default. This can be customized by setting the `lineClamp` property, by setting a specific `width` or by setting `whiteSpace: 'nowrap'`.
class HCYAxisTitleStyleOptions implements HCOption {
  const HCYAxisTitleStyleOptions({
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

/// (Highcharts) Event handlers for the axis.
class HCZAxisEventsOptions implements HCOption {
  const HCZAxisEventsOptions();

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    return json;
  }
}

/// (Highcharts) The axis labels show the number or category for each tick.
class HCZAxisLabelsOptions implements HCOption {
  const HCZAxisLabelsOptions({
    this.align,
    this.allowOverlap,
    this.autoRotation,
    this.autoRotationLimit,
    this.distance,
    this.enabled,
    this.format,
    this.maxStaggerLines,
    this.overflow,
    this.padding,
    this.position3d,
    this.reserveSpace,
    this.rotation,
    this.skew3d,
    this.staggerLines,
    this.step,
    this.style,
    this.useHTML,
    this.x,
    this.y,
    this.zIndex,
  });

  /// (Highcharts) What part of the string the given position is anchored to. If `left`, the left side of the string is at the axis position. Can be one of `"left"`, `"center"` or `"right"`. Defaults to an intelligent guess based on which side of the chart the axis is on and the rotation of the label.
  final String? align;

  /// (Highcharts) Whether to allow the axis labels to overlap. When false, overlapping labels are hidden.
  final bool? allowOverlap;

  /// (Highcharts, Highstock, Gantt) For horizontal axes, the allowed degrees of label rotation to prevent overlapping labels. If there is enough space, labels are not rotated. As the chart gets narrower, it will start rotating the labels -45 degrees, then remove every second label and try again with rota
  final List<num>? autoRotation;

  /// (Highcharts, Gantt) When each category width is more than this many pixels, we don't apply auto rotation. Instead, we lay out the axis label with word wrap. A lower limit makes sense when the label contains multiple short words that don't extend the available horizontal space for each label.
  final num? autoRotationLimit;

  /// (Highcharts, Gantt) The label's pixel distance from the perimeter of the plot area. On cartesian charts, this is overridden if the `labels.y` setting is set.
  final num? distance;

  /// (Highcharts) Enable or disable the axis labels.
  final bool? enabled;

  /// (Highcharts) A format string for the axis label. The context is available as format string variables. For example, you can use `{text}` to insert the default formatted text. The recommended way of adding units for the label is using `text`, for example `{text} km`.
  final String? format;

  /// (Highcharts) Horizontal axis only. When `staggerLines` is not set, `maxStaggerLines` defines how many lines the axis is allowed to add to automatically avoid overlapping X labels. Set to `1` to disable overlap detection.
  final num? maxStaggerLines;

  /// (Highcharts) How to handle overflowing labels on horizontal axis. If set to `"allow"`, it will not be aligned at all. By default it `"justify"` labels inside the chart area. If there is room to move it, it will be aligned to the edge, else it will be removed.
  final String? overflow;

  /// (Highcharts, Gantt) The pixel padding for axis labels, to ensure white space between them. Defaults to 4 for horizontal axes, 1 for vertical.
  final num? padding;

  /// (Highcharts) Defines how the labels are be repositioned according to the 3D chart orientation.
  final String? position3d;

  /// (Highcharts, Highstock, Gantt) Whether to reserve space for the labels. By default, space is reserved for the labels in these cases:
  final bool? reserveSpace;

  /// (Highcharts) Rotation of the labels in degrees. When `undefined`, the `autoRotation` option takes precedence.
  final num? rotation;

  /// (Highcharts) If enabled, the axis labels will skewed to follow the perspective.
  final bool? skew3d;

  /// (Highcharts) Horizontal axes only. The number of lines to spread the labels over to make room or tighter labels. 0 disables staggering.
  final num? staggerLines;

  /// (Highcharts) To show only every _n_'th label on the axis, set the step to _n_. Setting the step to 2 shows every other label.
  final num? step;

  /// (Highcharts) CSS styles for the label. Use `lineClamp` to control wrapping of category labels. Use `textOverflow: 'none'` to prevent ellipsis (dots).
  final dynamic style;

  /// (Highcharts) Whether to use HTML to render the labels.
  final bool? useHTML;

  /// (Highcharts) The x position offset of all labels relative to the tick positions on the axis. Overrides the `labels.distance` option.
  final num? x;

  /// (Highcharts) The y position offset of all labels relative to the tick positions on the axis. Overrides the `labels.distance` option.
  final num? y;

  /// (Highcharts) The Z index for the axis labels.
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
    if (maxStaggerLines != null) {
      json['maxStaggerLines'] = maxStaggerLines;
    }
    if (overflow != null) {
      json['overflow'] = overflow;
    }
    if (padding != null) {
      json['padding'] = padding;
    }
    if (position3d != null) {
      json['position3d'] = position3d;
    }
    if (reserveSpace != null) {
      json['reserveSpace'] = reserveSpace;
    }
    if (rotation != null) {
      json['rotation'] = rotation;
    }
    if (skew3d != null) {
      json['skew3d'] = skew3d;
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

/// (Highcharts) CSS styles for the label. Use `lineClamp` to control wrapping of category labels. Use `textOverflow: 'none'` to prevent ellipsis (dots).
class HCZAxisLabelsStyleOptions implements HCOption {
  const HCZAxisLabelsStyleOptions({
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

/// (Highcharts) The Z axis or depth axis for 3D plots.
class HCZAxisOptions implements HCOption {
  const HCZAxisOptions({
    this.accessibility,
    this.alignTicks,
    this.allowDecimals,
    this.alternateGridColor,
    this.angle,
    this.categories,
    this.ceiling,
    this.className,
    this.crossing,
    this.dateTimeLabelFormats,
    this.endOnTick,
    this.events,
    this.floor,
    this.gridLineColor,
    this.gridLineDashStyle,
    this.gridLineInterpolation,
    this.gridLineWidth,
    this.gridZIndex,
    this.id,
    this.labels,
    this.linkedTo,
    this.margin,
    this.max,
    this.maxPadding,
    this.maxZoom,
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
    this.minRange,
    this.minTickInterval,
    this.offset,
    this.opposite,
    this.pane,
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
    this.units,
    this.visible,
    this.zIndex,
    this.zoomEnabled,
  });

  /// (Highcharts) Accessibility options for an axis. Requires the accessibility module.
  final HCAxisAccessibilityOptionsObject? accessibility;

  /// (Highcharts, Highstock, Gantt) When using multiple axis, the ticks of two or more opposite axes will automatically be aligned by adding ticks to the axis or axes with the least ticks, as if `tickAmount` were specified.
  final bool? alignTicks;

  /// (Highcharts) Whether to allow decimals in this axis' ticks. When counting integers, like persons or hits on a web page, decimals should be avoided in the labels. By default, decimals are allowed on small scale axes.
  final bool? allowDecimals;

  /// (Highcharts) When using an alternate grid color, a band is painted across the plot area between every other grid line.
  final dynamic alternateGridColor;

  /// (Highcharts) In a polar chart, this is the angle of the Y axis in degrees, where 0 is up and 90 is right. The angle determines the position of the axis line and the labels, though the coordinate system is unaffected. Since v8.0.0 this option is also applicable for X axis (inverted polar).
  final num? angle;

  /// (Highcharts, Gantt) If categories are present for the xAxis, names are used instead of numbers for that axis.
  final List<String>? categories;

  /// (Highcharts, Highstock, Gantt) The highest allowed value for automatically computed axis extremes.
  final num? ceiling;

  /// (Highcharts) A class name that opens for styling the axis by CSS, especially in Highcharts styled mode. The class name is applied to group elements for the grid, axis elements and labels.
  final String? className;

  /// (Highcharts) The value on a perpendicular axis where this axis should cross. This is typically used on mathematical plots where the axes cross at 0. When `crossing` is set, space will not be reserved at the sides of the chart for axis labels and title, so those may be clipped. In this case it is bet
  final num? crossing;

  /// (Highcharts, Highstock, Gantt) For a datetime axis, the scale will automatically adjust to the appropriate unit. This member gives the default representations used for each unit. For easier data interpretation, `hour`, `day`, `month` and `year` units can be used and formatted as boundary tick values
  final HCAxisDateTimeLabelFormatsOptions? dateTimeLabelFormats;

  /// (Highcharts) Whether to force the axis to end on a tick. Use this option with the `maxPadding` option to control the axis end.
  final bool? endOnTick;

  /// (Highcharts) Event handlers for the axis.
  final HCZAxisEventsOptions? events;

  /// (Highcharts, Highstock, Gantt) The lowest allowed value for automatically computed axis extremes.
  final num? floor;

  /// (Highcharts) Color of the grid lines extending the ticks across the plot area.
  final dynamic gridLineColor;

  /// (Highcharts) The dash or dot style of the grid lines. For possible values, see this demonstration.
  final String? gridLineDashStyle;

  /// (Highcharts) Polar charts only. Whether the grid lines should draw as a polygon with straight lines between categories, or as circles. Can be either `circle` or `polygon`. Since v8.0.0 this option is also applicable for X axis (inverted polar).
  final String? gridLineInterpolation;

  /// (Highcharts) The width of the grid lines extending the ticks across the plot area. Defaults to 1 on the Y axis and 0 on the X axis, except for 3d charts and gauges.
  final num? gridLineWidth;

  /// (Highcharts, Highstock, Gantt) The Z index of the grid lines.
  final num? gridZIndex;

  /// (Highcharts) An id for the axis. This can be used after render time to get a pointer to the axis object through `chart.get()`.
  final String? id;

  /// (Highcharts) The axis labels show the number or category for each tick.
  final HCZAxisLabelsOptions? labels;

  /// (Highcharts, Highstock, Gantt) Index of another axis that this axis is linked to. When an axis is linked to a master axis, it will take the same extremes as the master, but as assigned by min or max or by setExtremes. It can be used to show additional info, or to ease reading the chart by duplicatin
  final num? linkedTo;

  /// (Highcharts) If there are multiple axes on the same side of the chart, the pixel margin between the axes. Defaults to 0 on vertical axes, 15 on horizontal axes.
  final num? margin;

  /// (Highcharts) The maximum value of the axis. If `undefined`, the max value is automatically calculated.
  final dynamic max;

  /// (Highcharts) Padding of the max value relative to the length of the axis. A padding of 0.05 will make a 100px axis 5px longer. This is useful when you don't want the highest data value to appear on the edge of the plot area. When the axis' `max` option is set or a max extreme is set using `axis.setE
  final num? maxPadding;

  /// (Highcharts, Highstock) Deprecated. Use `minRange` instead.
  final num? maxZoom;

  /// (Highcharts) The minimum value of the axis. If `undefined`, the min value is automatically calculated.
  final dynamic min;

  /// (Highcharts) Color of the minor, secondary grid lines.
  final dynamic minorGridLineColor;

  /// (Highcharts) The dash or dot style of the minor grid lines. For possible values, see this demonstration.
  final String? minorGridLineDashStyle;

  /// (Highcharts) Width of the minor, secondary grid lines.
  final num? minorGridLineWidth;

  /// (Highcharts) Color for the minor tick marks.
  final dynamic minorTickColor;

  /// (Highcharts) Specific tick interval in axis units for the minor ticks. On a linear axis, if `"auto"`, the minor tick interval is calculated as a fifth of the tickInterval. If `undefined`, minor ticks are not shown.
  final dynamic minorTickInterval;

  /// (Highcharts) The pixel length of the minor tick marks.
  final num? minorTickLength;

  /// (Highcharts) The position of the minor tick marks relative to the axis line. Can be one of `inside` and `outside`.
  final String? minorTickPosition;

  /// (Highcharts) Enable or disable minor ticks. The interval between the minor ticks can be controlled either by the minorTicksPerMajor setting, or as an absolute minorTickInterval value.
  final bool? minorTicks;

  /// (Highcharts) The number of minor ticks per major tick. Works for `linear`, `logarithmic` and `datetime` axes.
  final num? minorTicksPerMajor;

  /// (Highcharts) The pixel width of the minor tick mark.
  final num? minorTickWidth;

  /// (Highcharts, Highstock, Gantt) Padding of the min value relative to the length of the axis. A padding of 0.05 will make a 100px axis 5px longer. This is useful when you don't want the lowest data value to appear on the edge of the plot area. When the axis' `min` option is set or a min extreme is set
  final num? minPadding;

  /// (Highcharts) The minimum range to display on this axis. The entire axis will not be allowed to span over a smaller interval than this. For example, for a datetime axis the main unit is milliseconds. If minRange is set to 3600000, you can't zoom in more than to one hour.
  final num? minRange;

  /// (Highcharts) The minimum tick interval allowed in axis values. For example on zooming in on an axis with daily data, this can be used to prevent the axis from showing hours. Defaults to the closest distance between two points on the axis.
  final num? minTickInterval;

  /// (Highcharts) The distance in pixels from the plot area to the axis line. A positive offset moves the axis with its line, labels and ticks away from the plot area. This is typically used when two or more axes are displayed on the same side of the plot. With multiple axes the offset is dynamically adj
  final num? offset;

  /// (Highcharts) Whether to display the axis on the opposite side of the normal. The normal is on the left side for vertical axes and bottom for horizontal, so the opposite sides will be right and top respectively. This is typically used with dual or multiple axes.
  final bool? opposite;

  /// (Highcharts) Refers to the index in the panes array. Used for circular gauges and polar charts. When the option is not set then first pane will be used.
  final num? pane;

  /// (Highcharts) Whether to pan axis. If `chart.panning` is enabled, the option allows to disable panning on an individual axis.
  final bool? panningEnabled;

  /// (Highcharts, Highstock, Gantt) An array of colored bands stretching across the plot area marking an interval on the axis.
  final List<HCZAxisPlotBandsOptions>? plotBands;

  /// (Highcharts, Highstock, Gantt) An array of lines stretching across the plot area, marking a specific value on one of the axes.
  final List<HCZAxisPlotLinesOptions>? plotLines;

  /// (Highcharts) Whether to reverse the axis so that the highest number is closest to the origin. If the chart is inverted, the x axis is reversed by default.
  final bool? reversed;

  /// (Highcharts, Highstock) This option determines how stacks should be ordered within a group. For example reversed xAxis also reverses stacks, so first series comes last in a group. To keep order like for non-reversed xAxis enable this option.
  final bool? reversedStacks;

  /// (Highcharts) Whether to show the first tick label.
  final bool? showFirstLabel;

  /// (Highcharts, Highstock, Gantt) Whether to show the last tick label. Defaults to `true` on cartesian charts, and `false` on polar charts.
  final bool? showLastLabel;

  /// (Highcharts, Highstock, Gantt) A soft maximum for the axis. If the series data maximum is less than this, the axis will stay at this maximum, but if the series data maximum is higher, the axis will flex to show all data.
  final num? softMax;

  /// (Highcharts, Highstock, Gantt) A soft minimum for the axis. If the series data minimum is greater than this, the axis will stay at this minimum, but if the series data minimum is lower, the axis will flex to show all data.
  final num? softMin;

  /// (Highcharts, Highstock, Gantt) For datetime axes, this decides where to put the tick between weeks. 0 = Sunday, 1 = Monday.
  final num? startOfWeek;

  /// (Highcharts) Whether to force the axis to start on a tick. Use this option with the `minPadding` option to control the axis start.
  final bool? startOnTick;

  /// (Highcharts, Highstock, Gantt) For vertical axes only. Setting the static scale ensures that each tick unit is translated into a fixed pixel height. For example, setting the static scale to 24 results in each Y axis category taking up 24 pixels, and the height of the chart adjusts. Adding or removin
  final num? staticScale;

  /// (Highcharts, Highstock, Gantt) The amount of ticks to draw on the axis. This opens up for aligning the ticks of multiple charts or panes within a chart. This option overrides the `tickPixelInterval` option.
  final num? tickAmount;

  /// (Highcharts) Color for the main tick marks.
  final dynamic tickColor;

  /// (Highcharts) The interval of the tick marks in axis units. When `undefined`, the tick interval is computed to approximately follow the tickPixelInterval on linear and datetime axes. On categorized axes, a `undefined` tickInterval will default to 1, one category. Note that datetime axes are based on
  final num? tickInterval;

  /// (Highcharts) The pixel length of the main tick marks.
  final num? tickLength;

  /// (Highcharts, Gantt) For categorized axes only. If `on` the tick mark is placed in the center of the category, if `between` the tick mark is placed between categories. The default is `between` if the `tickInterval` is 1, else `on`. In order to render tick marks on a category axis it is necessary to p
  final String? tickmarkPlacement;

  /// (Highcharts) If tickInterval is `null` this option sets the approximate pixel interval of the tick marks. Not applicable to categorized axis.
  final num? tickPixelInterval;

  /// (Highcharts) The position of the major tick marks relative to the axis line. Can be one of `inside` and `outside`.
  final String? tickPosition;

  /// (Highcharts) An array defining where the ticks are laid out on the axis. This overrides the default behavior of tickPixelInterval and tickInterval.
  final List<num>? tickPositions;

  /// (Highcharts) The pixel width of the major tick marks. Defaults to 0 on category axes, otherwise 1.
  final num? tickWidth;

  /// (Highcharts) The axis title, showing next to the axis line.
  final HCZAxisTitleOptions? title;

  /// (Highcharts, Gantt) The type of axis. Can be one of `linear`, `logarithmic`, `datetime` or `category`. In a datetime axis, the numbers are given in milliseconds, and tick marks are placed on appropriate values like full hours or days. In a category axis, the point names of the chart's series are use
  final String? type;

  /// (Highcharts, Gantt) Applies only when the axis `type` is `category`. When `uniqueNames` is true, points are placed on the X axis according to their names. If the same point name is repeated in the same or another series, the point is placed on the same X position as other points of the same name. Wh
  final bool? uniqueNames;

  /// (Highcharts, Highstock, Gantt) Datetime axis only. An array determining what time intervals the ticks are allowed to fall on. Each array item is an array where the first value is the time unit and the second value another array of allowed multiples.
  final List<dynamic>? units;

  /// (Highcharts, Highstock, Gantt) Whether axis, including axis title, line, ticks and labels, should be visible.
  final bool? visible;

  /// (Highcharts) The Z index for the axis group.
  final num? zIndex;

  /// (Highcharts) Whether to zoom axis. If `chart.zoomType` is set, the option allows to disable zooming on an individual axis.
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
    if (angle != null) {
      json['angle'] = angle;
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
    if (gridLineColor != null) {
      json['gridLineColor'] = hcJsonValue(gridLineColor);
    }
    if (gridLineDashStyle != null) {
      json['gridLineDashStyle'] = gridLineDashStyle;
    }
    if (gridLineInterpolation != null) {
      json['gridLineInterpolation'] = gridLineInterpolation;
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
    if (linkedTo != null) {
      json['linkedTo'] = linkedTo;
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
    if (maxZoom != null) {
      json['maxZoom'] = maxZoom;
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
    if (minRange != null) {
      json['minRange'] = minRange;
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
    if (pane != null) {
      json['pane'] = pane;
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
    if (units != null) {
      json['units'] = units!.map((e) => hcJsonValue(e)).toList();
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

/// (Highcharts, Highstock, Gantt) An object defining mouse events for the plot band. Supported properties are `click`, `mouseover`, `mouseout`, `mousemove`.
class HCZAxisPlotBandsEventsOptions implements HCOption {
  const HCZAxisPlotBandsEventsOptions();

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    return json;
  }
}

/// (Highcharts, Highstock, Gantt) Text labels for the plot bands
class HCZAxisPlotBandsLabelOptions implements HCOption {
  const HCZAxisPlotBandsLabelOptions({
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
class HCZAxisPlotBandsOptions implements HCOption {
  const HCZAxisPlotBandsOptions({
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
  final HCZAxisPlotBandsEventsOptions? events;

  /// (Highcharts, Highstock, Gantt) The start position of the plot band in axis units.
  final dynamic from;

  /// (Highcharts, Highstock, Gantt) An id used for identifying the plot band in Axis.removePlotBand.
  final String? id;

  /// (Highcharts, Highstock, Gantt) Text labels for the plot bands
  final HCZAxisPlotBandsLabelOptions? label;

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
class HCZAxisPlotLinesEventsOptions implements HCOption {
  const HCZAxisPlotLinesEventsOptions();

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    return json;
  }
}

/// (Highcharts, Highstock, Gantt) Text labels for the plot lines
class HCZAxisPlotLinesLabelOptions implements HCOption {
  const HCZAxisPlotLinesLabelOptions({
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

class HCZAxisPlotLinesLabelsOptions implements HCOption {
  const HCZAxisPlotLinesLabelsOptions({
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
class HCZAxisPlotLinesOptions implements HCOption {
  const HCZAxisPlotLinesOptions({
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
  final HCZAxisPlotLinesEventsOptions? events;

  /// (Highcharts, Highstock, Gantt) An id used for identifying the plot line in Axis.removePlotLine.
  final String? id;

  /// (Highcharts, Highstock, Gantt) Text labels for the plot lines
  final HCZAxisPlotLinesLabelOptions? label;

  final HCZAxisPlotLinesLabelsOptions? labels;

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

/// (Highcharts) The axis title, showing next to the axis line.
class HCZAxisTitleOptions implements HCOption {
  const HCZAxisTitleOptions({
    this.align,
    this.enabled,
    this.margin,
    this.offset,
    this.position3d,
    this.reserveSpace,
    this.rotation,
    this.skew3d,
    this.style,
    this.text,
    this.textAlign,
    this.useHTML,
    this.x,
    this.y,
  });

  /// (Highcharts) Alignment of the title relative to the axis values. Possible values are "low", "middle" or "high".
  final String? align;

  /// (Highcharts) Deprecated. Set the `text` to `undefined` to disable the title.
  final bool? enabled;

  /// (Highcharts) The pixel distance between the axis labels or line and the title. Defaults to 0 for horizontal axes, 10 for vertical
  final num? margin;

  /// (Highcharts) The distance from the plot area to the axis line. A positive offset moves the axis with its line, labels and ticks away from the plot area. With multiple axes the offset is dynamically adjusted to avoid collision, this can be overridden by setting offset explicitly.
  final dynamic offset;

  /// (Highcharts) Defines how the title is repositioned according to the 3D chart orientation.
  final String? position3d;

  /// (Highcharts, Highstock, Gantt) Whether to reserve space for the title when laying out the axis.
  final bool? reserveSpace;

  /// (Highcharts) The rotation of the text in degrees. 0 is horizontal, 270 is vertical reading from bottom to top. Defaults to 0 for horizontal axes, 270 for left-side axes and 90 for right-side axes.
  final num? rotation;

  /// (Highcharts) If enabled, the axis title will skewed to follow the perspective.
  final bool? skew3d;

  /// (Highcharts) CSS styles for the title. If the title text is longer than the axis length, it will wrap to multiple lines by default. This can be customized by setting the `lineClamp` property, by setting a specific `width` or by setting `whiteSpace: 'nowrap'`.
  final dynamic style;

  /// (Highcharts) The actual text of the axis title. It can contain basic HTML tags like `b`, `i` and `span` with style.
  final String? text;

  /// (Highcharts) Alignment of the text, can be `"left"`, `"right"` or `"center"`. Default alignment depends on the title.align:
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
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    if (margin != null) {
      json['margin'] = margin;
    }
    if (offset != null) {
      json['offset'] = hcJsonValue(offset);
    }
    if (position3d != null) {
      json['position3d'] = position3d;
    }
    if (reserveSpace != null) {
      json['reserveSpace'] = reserveSpace;
    }
    if (rotation != null) {
      json['rotation'] = rotation;
    }
    if (skew3d != null) {
      json['skew3d'] = skew3d;
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

/// (Highcharts) CSS styles for the title. If the title text is longer than the axis length, it will wrap to multiple lines by default. This can be customized by setting the `lineClamp` property, by setting a specific `width` or by setting `whiteSpace: 'nowrap'`.
class HCZAxisTitleStyleOptions implements HCOption {
  const HCZAxisTitleStyleOptions({
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
