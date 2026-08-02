part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps) An array of data classes or ranges for the choropleth map. If none given, the color axis is scalar and values are distributed as a gradient between the minimum and maximum colors.
class HCColorAxisDataClassesOptions implements HCOption {
  const HCColorAxisDataClassesOptions({
    this.color,
    this.from,
    this.name,
    this.to,
  });

  /// (Highcharts, Highstock, Highmaps) The color of each data class. If not set, the color is pulled from the global or chart-specific colors array. In styled mode, this option is ignored. Instead, use colors defined in CSS.
  final dynamic color;

  /// (Highcharts, Highstock, Highmaps) The start of the value range that the data class represents, relating to the point value.
  final num? from;

  /// (Highcharts, Highstock, Highmaps) The name of the data class as it appears in the legend. If no name is given, it is automatically created based on the `from` and `to` values. For full programmatic control, legend.labelFormatter can be used. In the formatter, `this.from` and `this.to` can be accesse
  final String? name;

  /// (Highcharts, Highstock, Highmaps) The end of the value range that the data class represents, relating to the point value.
  final num? to;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (color != null) {
      json['color'] = hcJsonValue(color);
    }
    if (from != null) {
      json['from'] = from;
    }
    if (name != null) {
      json['name'] = name;
    }
    if (to != null) {
      json['to'] = to;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps) Event handlers for the axis.
class HCColorAxisEventsOptions implements HCOption {
  const HCColorAxisEventsOptions({
    this.legendItemClick,
  });

  /// (Highcharts, Highstock, Highmaps) Fires when the legend item belonging to the colorAxis is clicked. One parameter, `event`, is passed to the function.
  final dynamic legendItemClick;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (legendItemClick != null) {
      json['legendItemClick'] = hcJsonValue(legendItemClick);
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps) The axis labels show the number for each tick.
class HCColorAxisLabelsOptions implements HCOption {
  const HCColorAxisLabelsOptions({
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

  /// (Highcharts, Highstock, Highmaps) What part of the string the given position is anchored to. If `left`, the left side of the string is at the axis position. Can be one of `"left"`, `"center"` or `"right"`. Defaults to an intelligent guess based on which side of the chart the axis is on and the rotat
  final String? align;

  /// (Highcharts, Highstock, Highmaps) Whether to allow the axis labels to overlap. When false, overlapping labels are hidden.
  final bool? allowOverlap;

  /// (Highcharts, Highstock, Gantt) For horizontal axes, the allowed degrees of label rotation to prevent overlapping labels. If there is enough space, labels are not rotated. As the chart gets narrower, it will start rotating the labels -45 degrees, then remove every second label and try again with rota
  final List<num>? autoRotation;

  /// (Highcharts, Gantt) When each category width is more than this many pixels, we don't apply auto rotation. Instead, we lay out the axis label with word wrap. A lower limit makes sense when the label contains multiple short words that don't extend the available horizontal space for each label.
  final num? autoRotationLimit;

  /// (Highcharts, Gantt) The label's pixel distance from the perimeter of the plot area. On cartesian charts, this is overridden if the `labels.y` setting is set.
  final num? distance;

  /// (Highcharts, Highstock, Highmaps) Enable or disable the axis labels.
  final bool? enabled;

  /// (Highcharts, Highstock, Highmaps) A format string for the axis label. The context is available as format string variables. For example, you can use `{text}` to insert the default formatted text. The recommended way of adding units for the label is using `text`, for example `{text} km`.
  final String? format;

  /// (Highcharts, Highstock, Highmaps) Horizontal axis only. When `staggerLines` is not set, `maxStaggerLines` defines how many lines the axis is allowed to add to automatically avoid overlapping X labels. Set to `1` to disable overlap detection.
  final num? maxStaggerLines;

  /// (Highcharts, Highstock, Highmaps) How to handle overflowing labels on horizontal color axis. If set to `"allow"`, it will not be aligned at all. By default it `"justify"` labels inside the chart area. If there is room to move it, it will be aligned to the edge, else it will be removed.
  final String? overflow;

  /// (Highcharts, Gantt) The pixel padding for axis labels, to ensure white space between them. Defaults to 4 for horizontal axes, 1 for vertical.
  final num? padding;

  /// (Highcharts) Defines how the labels are be repositioned according to the 3D chart orientation.
  final String? position3d;

  /// (Highcharts, Highstock, Gantt) Whether to reserve space for the labels. By default, space is reserved for the labels in these cases:
  final bool? reserveSpace;

  /// (Highcharts, Highstock, Highmaps) Rotation of the labels in degrees. When `undefined`, the `autoRotation` option takes precedence.
  final num? rotation;

  /// (Highcharts) If enabled, the axis labels will skewed to follow the perspective.
  final bool? skew3d;

  /// (Highcharts, Highstock, Highmaps) Horizontal axes only. The number of lines to spread the labels over to make room or tighter labels. 0 disables staggering.
  final num? staggerLines;

  /// (Highcharts, Highstock, Highmaps) To show only every _n_'th label on the axis, set the step to _n_. Setting the step to 2 shows every other label.
  final num? step;

  /// (Highcharts, Highstock, Highmaps) CSS styles for the label. Use `lineClamp` to control wrapping of category labels. Use `textOverflow: 'none'` to prevent ellipsis (dots).
  final dynamic style;

  /// (Highcharts, Highstock, Highmaps) Whether to use HTML to render the labels.
  final bool? useHTML;

  /// (Highcharts, Highstock, Highmaps) The x position offset of all labels relative to the tick positions on the axis. Overrides the `labels.distance` option.
  final num? x;

  /// (Highcharts, Highstock, Highmaps) The y position offset of all labels relative to the tick positions on the axis. Overrides the `labels.distance` option.
  final num? y;

  /// (Highcharts, Highstock, Highmaps) The Z index for the axis labels.
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

/// (Highcharts, Highstock, Highmaps) CSS styles for the label. Use `lineClamp` to control wrapping of category labels. Use `textOverflow: 'none'` to prevent ellipsis (dots).
class HCColorAxisLabelsStyleOptions implements HCOption {
  const HCColorAxisLabelsStyleOptions({
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

/// (Highcharts, Highstock, Highmaps) A color axis for series. Visually, the color axis will appear as a gradient or as separate items inside the legend, depending on whether the axis is scalar or based on data classes.
class HCColorAxisOptions implements HCOption {
  const HCColorAxisOptions({
    this.accessibility,
    this.allowDecimals,
    this.angle,
    this.ceiling,
    this.className,
    this.crossing,
    this.dataClassColor,
    this.dataClasses,
    this.endOnTick,
    this.events,
    this.floor,
    this.gridLineColor,
    this.gridLineDashStyle,
    this.gridLineInterpolation,
    this.gridLineWidth,
    this.gridZIndex,
    this.height,
    this.id,
    this.labels,
    this.layout,
    this.lineColor,
    this.margin,
    this.marker,
    this.max,
    this.maxColor,
    this.maxPadding,
    this.maxRange,
    this.min,
    this.minColor,
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
    this.ordinal,
    this.overscroll,
    this.panningEnabled,
    this.range,
    this.reversed,
    this.showFirstLabel,
    this.showInLegend,
    this.showLastLabel,
    this.softMax,
    this.softMin,
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
    this.type,
    this.uniqueNames,
    this.units,
    this.visible,
    this.width,
    this.zIndex,
  });

  /// (Highcharts, Highstock, Highmaps) Accessibility options for an axis. Requires the accessibility module.
  final HCAxisAccessibilityOptionsObject? accessibility;

  /// (Highcharts, Highstock, Highmaps) Whether to allow decimals on the color axis.
  final bool? allowDecimals;

  /// (Highcharts) In a polar chart, this is the angle of the Y axis in degrees, where 0 is up and 90 is right. The angle determines the position of the axis line and the labels, though the coordinate system is unaffected. Since v8.0.0 this option is also applicable for X axis (inverted polar).
  final num? angle;

  /// (Highcharts, Highstock, Gantt) The highest allowed value for automatically computed axis extremes.
  final num? ceiling;

  /// (Highcharts, Highstock, Highmaps) A class name that opens for styling the axis by CSS, especially in Highcharts styled mode. The class name is applied to group elements for the grid, axis elements and labels.
  final String? className;

  /// (Highcharts, Highstock, Highmaps) The value on a perpendicular axis where this axis should cross. This is typically used on mathematical plots where the axes cross at 0. When `crossing` is set, space will not be reserved at the sides of the chart for axis labels and title, so those may be clipped. I
  final num? crossing;

  /// (Highcharts, Highstock, Highmaps) Determines how to set each data class' color if no individual color is set. The default value, `tween`, computes intermediate colors between `minColor` and `maxColor`. The other possible value, `category`, pulls colors from the global or chart specific colors array.
  final String? dataClassColor;

  /// (Highcharts, Highstock, Highmaps) An array of data classes or ranges for the choropleth map. If none given, the color axis is scalar and values are distributed as a gradient between the minimum and maximum colors.
  final List<HCColorAxisDataClassesOptions>? dataClasses;

  /// (Highcharts, Highstock, Highmaps) Whether to force the axis to end on a tick. Use this option with the maxPadding option to control the axis end.
  final bool? endOnTick;

  /// (Highcharts, Highstock, Highmaps) Event handlers for the axis.
  final HCColorAxisEventsOptions? events;

  /// (Highcharts, Highstock, Gantt) The lowest allowed value for automatically computed axis extremes.
  final num? floor;

  /// (Highcharts, Highstock, Highmaps) Color of the grid lines extending from the axis across the gradient.
  final dynamic gridLineColor;

  /// (Highcharts, Highstock, Highmaps) The dash or dot style of the grid lines. For possible values, see this demonstration.
  final String? gridLineDashStyle;

  /// (Highcharts) Polar charts only. Whether the grid lines should draw as a polygon with straight lines between categories, or as circles. Can be either `circle` or `polygon`. Since v8.0.0 this option is also applicable for X axis (inverted polar).
  final String? gridLineInterpolation;

  /// (Highcharts, Highstock, Highmaps) The width of the grid lines extending from the axis across the gradient of a scalar color axis.
  final num? gridLineWidth;

  /// (Highcharts, Highstock, Gantt) The Z index of the grid lines.
  final num? gridZIndex;

  /// (Highcharts, Highstock, Highmaps) The height of the color axis. If it's a number, it is interpreted as pixels.
  final dynamic height;

  /// (Highcharts, Highstock, Highmaps) An id for the axis. This can be used after render time to get a pointer to the axis object through `chart.get()`.
  final String? id;

  /// (Highcharts, Highstock, Highmaps) The axis labels show the number for each tick.
  final HCColorAxisLabelsOptions? labels;

  /// (Highcharts, Highstock, Highmaps) The layout of the color axis. Can be `'horizontal'` or `'vertical'`. If none given, the color axis has the same layout as the legend.
  final String? layout;

  /// (Highcharts, Highstock, Highmaps) The color of the line marking the axis itself.
  final dynamic lineColor;

  /// (Highcharts, Highstock, Highmaps) If there are multiple axes on the same side of the chart, the pixel margin between the axes. Defaults to 0 on vertical axes, 15 on horizontal axes.
  final num? margin;

  /// (Highcharts, Highstock, Highmaps) The triangular marker on a scalar color axis that points to the value of the hovered area. To disable the marker, set `marker: null`.
  final HCPointMarkerOptionsObject? marker;

  /// (Highcharts, Highstock, Highmaps) The maximum value of the axis in terms of map point values. If `null`, the max value is automatically calculated. If the `endOnTick` option is true, the max value might be rounded up.
  final num? max;

  /// (Highcharts, Highstock, Highmaps) The color to represent the maximum of the color axis. Unless dataClasses or stops are set, the gradient ends at this value.
  final dynamic maxColor;

  /// (Highcharts, Highstock, Highmaps) Padding of the max value relative to the length of the axis. A padding of 0.05 will make a 100px axis 5px longer.
  final num? maxPadding;

  /// (Highstock, Gantt) Maximum range which can be set using the navigator's handles. Opposite of xAxis.minRange.
  final num? maxRange;

  /// (Highcharts, Highstock, Highmaps) The minimum value of the axis in terms of map point values. If `null`, the min value is automatically calculated. If the `startOnTick` option is true, the min value might be rounded down.
  final num? min;

  /// (Highcharts, Highstock, Highmaps) The color to represent the minimum of the color axis. Unless dataClasses or stops are set, the gradient starts at this value.
  final dynamic minColor;

  /// (Highcharts, Highstock, Highmaps) Color of the minor, secondary grid lines.
  final dynamic minorGridLineColor;

  /// (Highcharts, Highstock, Highmaps) The dash or dot style of the minor grid lines. For possible values, see this demonstration.
  final String? minorGridLineDashStyle;

  /// (Highcharts, Highstock, Highmaps) Width of the minor, secondary grid lines.
  final num? minorGridLineWidth;

  /// (Highcharts, Highstock, Highmaps) Color for the minor tick marks.
  final dynamic minorTickColor;

  /// (Highcharts, Highstock, Highmaps) Specific tick interval in axis units for the minor ticks. On a linear axis, if `"auto"`, the minor tick interval is calculated as a fifth of the tickInterval. If `undefined`, minor ticks are not shown.
  final dynamic minorTickInterval;

  /// (Highcharts, Highstock, Highmaps) The pixel length of the minor tick marks.
  final num? minorTickLength;

  /// (Highcharts, Highstock, Highmaps) The position of the minor tick marks relative to the axis line. Can be one of `inside` and `outside`.
  final String? minorTickPosition;

  /// (Highcharts, Highstock, Highmaps) Enable or disable minor ticks. The interval between the minor ticks can be controlled either by the minorTicksPerMajor setting, or as an absolute minorTickInterval value.
  final bool? minorTicks;

  /// (Highcharts, Highstock, Highmaps) The number of minor ticks per major tick. Works for `linear`, `logarithmic` and `datetime` axes.
  final num? minorTicksPerMajor;

  /// (Highcharts, Highstock, Highmaps) The pixel width of the minor tick mark.
  final num? minorTickWidth;

  /// (Highcharts, Highstock, Highmaps) Padding of the min value relative to the length of the axis. A padding of 0.05 will make a 100px axis 5px longer.
  final num? minPadding;

  /// (Highstock) In an ordinal axis, the points are equally spaced in the chart regardless of the actual time or x distance between them. This means that missing data periods (e.g. nights or weekends for a stock chart) will not take up space in the chart. Having `ordinal: false` will show any gaps create
  final bool? ordinal;

  /// (Highstock) Additional range on the right side of the xAxis. Works similar to `xAxis.maxPadding`, but the value is set in terms of axis values, percentage or pixels.
  final dynamic overscroll;

  /// (Highcharts, Highstock, Highmaps) Whether to pan axis. If `chart.panning` is enabled, the option allows to disable panning on an individual axis.
  final bool? panningEnabled;

  /// (Highstock) The zoomed range to display when only defining one or none of `min` or `max`. For example, to show the latest month, a range of one month can be set.
  final num? range;

  /// (Highcharts, Highstock, Highmaps) Whether to reverse the axis so that the highest number is closest to the origin. Defaults to `false`.
  final bool? reversed;

  /// (Highcharts, Highstock, Highmaps) Whether to show the first tick label.
  final bool? showFirstLabel;

  /// (Highcharts, Highstock, Highmaps) Whether to display the colorAxis in the legend.
  final bool? showInLegend;

  /// (Highcharts, Highstock, Gantt) Whether to show the last tick label. Defaults to `true` on cartesian charts, and `false` on polar charts.
  final bool? showLastLabel;

  /// (Highcharts, Highstock, Gantt) A soft maximum for the axis. If the series data maximum is less than this, the axis will stay at this maximum, but if the series data maximum is higher, the axis will flex to show all data.
  final num? softMax;

  /// (Highcharts, Highstock, Gantt) A soft minimum for the axis. If the series data minimum is greater than this, the axis will stay at this minimum, but if the series data minimum is lower, the axis will flex to show all data.
  final num? softMin;

  /// (Highcharts, Highstock, Gantt) For datetime axes, this decides where to put the tick between weeks. 0 = Sunday, 1 = Monday.
  final num? startOfWeek;

  /// (Highcharts, Highstock, Highmaps) Whether to force the axis to start on a tick. Use this option with the `maxPadding` option to control the axis start.
  final bool? startOnTick;

  /// (Highcharts, Highstock, Gantt) For vertical axes only. Setting the static scale ensures that each tick unit is translated into a fixed pixel height. For example, setting the static scale to 24 results in each Y axis category taking up 24 pixels, and the height of the chart adjusts. Adding or removin
  final num? staticScale;

  /// (Highcharts, Highstock, Highmaps) Color stops for the gradient of a scalar color axis. Use this in cases where a linear gradient between a `minColor` and `maxColor` is not sufficient. The stops is an array of tuples, where the first item is a float between 0 and 1 assigning the relative position in
  final List<dynamic>? stops;

  /// (Highcharts, Highstock, Gantt) The amount of ticks to draw on the axis. This opens up for aligning the ticks of multiple charts or panes within a chart. This option overrides the `tickPixelInterval` option.
  final num? tickAmount;

  /// (Highcharts, Highstock, Highmaps) Color for the main tick marks.
  final dynamic tickColor;

  /// (Highcharts, Highstock, Highmaps) The interval of the tick marks in axis units. When `null`, the tick interval is computed to approximately follow the `tickPixelInterval`.
  final num? tickInterval;

  /// (Highcharts, Highstock, Highmaps) The pixel length of the main tick marks on the color axis.
  final num? tickLength;

  /// (Highcharts, Gantt) For categorized axes only. If `on` the tick mark is placed in the center of the category, if `between` the tick mark is placed between categories. The default is `between` if the `tickInterval` is 1, else `on`. In order to render tick marks on a category axis it is necessary to p
  final String? tickmarkPlacement;

  /// (Highcharts, Highstock, Highmaps) If tickInterval is `null` this option sets the approximate pixel interval of the tick marks.
  final num? tickPixelInterval;

  /// (Highcharts, Highstock, Highmaps) The position of the major tick marks relative to the axis line. Can be one of `inside` and `outside`.
  final String? tickPosition;

  /// (Highcharts, Highstock, Highmaps) An array defining where the ticks are laid out on the axis. This overrides the default behavior of tickPixelInterval and tickInterval.
  final List<num>? tickPositions;

  /// (Highcharts, Highstock, Highmaps) The pixel width of the major tick marks. Defaults to 0 on category axes, otherwise 1.
  final num? tickWidth;

  /// (Highcharts, Highstock, Highmaps) The color axis title. Displayed alongside the color axis. When the legend is vertical the title is rotated accordingly.
  final dynamic title;

  /// (Highcharts, Highstock, Highmaps) The type of interpolation to use for the color axis. Can be `linear` or `logarithmic`.
  final String? type;

  /// (Highcharts, Gantt) Applies only when the axis `type` is `category`. When `uniqueNames` is true, points are placed on the X axis according to their names. If the same point name is repeated in the same or another series, the point is placed on the same X position as other points of the same name. Wh
  final bool? uniqueNames;

  /// (Highcharts, Highstock, Gantt) Datetime axis only. An array determining what time intervals the ticks are allowed to fall on. Each array item is an array where the first value is the time unit and the second value another array of allowed multiples.
  final List<dynamic>? units;

  /// (Highcharts, Highstock, Gantt) Whether axis, including axis title, line, ticks and labels, should be visible.
  final bool? visible;

  /// (Highcharts, Highstock, Highmaps) The width of the color axis. If it's a number, it is interpreted as pixels.
  final dynamic width;

  /// (Highcharts, Highstock, Highmaps) The Z index for the axis group.
  final num? zIndex;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (accessibility != null) {
      json['accessibility'] = accessibility!.toJson();
    }
    if (allowDecimals != null) {
      json['allowDecimals'] = allowDecimals;
    }
    if (angle != null) {
      json['angle'] = angle;
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
    if (dataClassColor != null) {
      json['dataClassColor'] = dataClassColor;
    }
    if (dataClasses != null) {
      json['dataClasses'] = dataClasses!.map((e) => e.toJson()).toList();
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
    if (height != null) {
      json['height'] = hcJsonValue(height);
    }
    if (id != null) {
      json['id'] = id;
    }
    if (labels != null) {
      json['labels'] = labels!.toJson();
    }
    if (layout != null) {
      json['layout'] = layout;
    }
    if (lineColor != null) {
      json['lineColor'] = hcJsonValue(lineColor);
    }
    if (margin != null) {
      json['margin'] = margin;
    }
    if (marker != null) {
      json['marker'] = marker!.toJson();
    }
    if (max != null) {
      json['max'] = max;
    }
    if (maxColor != null) {
      json['maxColor'] = hcJsonValue(maxColor);
    }
    if (maxPadding != null) {
      json['maxPadding'] = maxPadding;
    }
    if (maxRange != null) {
      json['maxRange'] = maxRange;
    }
    if (min != null) {
      json['min'] = min;
    }
    if (minColor != null) {
      json['minColor'] = hcJsonValue(minColor);
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
    if (ordinal != null) {
      json['ordinal'] = ordinal;
    }
    if (overscroll != null) {
      json['overscroll'] = hcJsonValue(overscroll);
    }
    if (panningEnabled != null) {
      json['panningEnabled'] = panningEnabled;
    }
    if (range != null) {
      json['range'] = range;
    }
    if (reversed != null) {
      json['reversed'] = reversed;
    }
    if (showFirstLabel != null) {
      json['showFirstLabel'] = showFirstLabel;
    }
    if (showInLegend != null) {
      json['showInLegend'] = showInLegend;
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
      json['title'] = hcJsonValue(title);
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
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps) The color axis title. Displayed alongside the color axis. When the legend is vertical the title is rotated accordingly.
class HCColorAxisTitleOptions implements HCOption {
  const HCColorAxisTitleOptions({
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

  /// (Highcharts, Highstock, Highmaps) Alignment of the title relative to the axis values. Possible values are "low", "middle" or "high".
  final String? align;

  /// (Highcharts) Deprecated. Set the `text` to `undefined` to disable the title.
  final bool? enabled;

  /// (Highcharts, Highstock, Highmaps) The pixel distance between the axis labels or line and the title. Defaults to 0 for horizontal axes, 10 for vertical
  final num? margin;

  /// (Highcharts, Highstock, Highmaps) The distance from the plot area to the axis line. A positive offset moves the axis with its line, labels and ticks away from the plot area. With multiple axes the offset is dynamically adjusted to avoid collision, this can be overridden by setting offset explicitly.
  final dynamic offset;

  /// (Highcharts) Defines how the title is repositioned according to the 3D chart orientation.
  final String? position3d;

  /// (Highcharts, Highstock, Gantt) Whether to reserve space for the title when laying out the axis.
  final bool? reserveSpace;

  /// (Highcharts, Highstock, Highmaps) The rotation of the text in degrees. 0 is horizontal, 270 is vertical reading from bottom to top. Defaults to 0 for horizontal axes, 270 for left-side axes and 90 for right-side axes.
  final num? rotation;

  /// (Highcharts) If enabled, the axis title will skewed to follow the perspective.
  final bool? skew3d;

  /// (Highcharts, Highstock, Highmaps) CSS styles for the title. If the title text is longer than the axis length, it will wrap to multiple lines by default. This can be customized by setting the `lineClamp` property, by setting a specific `width` or by setting `whiteSpace: 'nowrap'`.
  final dynamic style;

  /// (Highcharts, Highstock, Highmaps) The actual text of the axis title. It can contain basic HTML tags like `b`, `i` and `span` with style.
  final String? text;

  /// (Highcharts, Highstock, Highmaps) Alignment of the text, can be `"left"`, `"right"` or `"center"`. Default alignment depends on the title.align:
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

/// (Highcharts, Highstock, Highmaps) CSS styles for the title. If the title text is longer than the axis length, it will wrap to multiple lines by default. This can be customized by setting the `lineClamp` property, by setting a specific `width` or by setting `whiteSpace: 'nowrap'`.
class HCColorAxisTitleStyleOptions implements HCOption {
  const HCColorAxisTitleStyleOptions({
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
