part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Enable or disable animation of the tooltip.
class HCTooltipAnimationOptions implements HCOption {
  const HCTooltipAnimationOptions({
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
class HCTooltipDateTimeLabelFormatsOptions implements HCOption {
  const HCTooltipDateTimeLabelFormatsOptions({
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

/// (Highcharts, Highstock, Highmaps, Gantt) Options for the tooltip header when tooltip.split is enabled. The header is the box containing the X value in a split tooltip.
class HCTooltipHeaderOptions implements HCOption {
  const HCTooltipHeaderOptions({
    this.backgroundColor,
    this.borderColor,
    this.borderWidth,
    this.distance,
    this.shape,
    this.style,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Background color for the tooltip header when tooltip.split is enabled.
  final dynamic backgroundColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) Border color for the tooltip header when tooltip.split is enabled.
  final dynamic borderColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) The width of the border for the tooltip header when tooltip.split is enabled.
  final num? borderWidth;

  /// (Highcharts, Highstock, Highmaps, Gantt) Distance between the plot area and the header (except the chevron) in a split tooltip, in pixels. The default value makes the header text align with the axis labels.
  final num? distance;

  /// (Highcharts, Highstock, Highmaps, Gantt) The name of a symbol to use for the border around the tooltip header. Applies only when tooltip.split is enabled.
  final String? shape;

  /// (Highcharts, Highstock, Highmaps, Gantt) CSS styles for the tooltip header. The default is `{ fontSize: '1em' }`, ensuring that the header text is the same size as the axis labels.
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

/// (Highcharts, Highstock, Highmaps, Gantt) Options for the tooltip that appears when the user hovers over a series or point.
class HCTooltipOptions implements HCOption {
  const HCTooltipOptions({
    this.animation,
    this.backgroundColor,
    this.borderColor,
    this.borderRadius,
    this.borderWidth,
    this.changeDecimals,
    this.className,
    this.clusterFormat,
    this.crosshairs,
    this.dateTimeLabelFormats,
    this.distance,
    this.enabled,
    this.fixed,
    this.followPointer,
    this.followTouchMove,
    this.footerFormat,
    this.format,
    this.header,
    this.headerFormat,
    this.headerShape,
    this.hideDelay,
    this.nullFormat,
    this.outside,
    this.padding,
    this.pointFormat,
    this.position,
    this.shadow,
    this.shape,
    this.shared,
    this.showDelay,
    this.snap,
    this.split,
    this.stickOnContact,
    this.style,
    this.useHTML,
    this.valueDecimals,
    this.valuePrefix,
    this.valueSuffix,
    this.xDateFormat,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Enable or disable animation of the tooltip.
  final dynamic animation;

  /// (Highcharts, Highstock, Highmaps, Gantt) The background color or gradient for the tooltip.
  final dynamic backgroundColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) The color of the tooltip border. When `undefined` or `null`, the border takes the color of the corresponding series or point.
  final dynamic borderColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) The radius of the rounded border corners.
  final num? borderRadius;

  /// (Highcharts, Highstock, Highmaps, Gantt) The pixel width of the tooltip border. Defaults to 1, but with a `borderColor` to match the background in light mode, and a visible lighter border in dark mode.
  final num? borderWidth;

  /// (Highstock) How many decimals to show for the `point.change` or the `point.cumulativeSum` value when the `series.compare` or the `series.cumulative` option is set. This is overridable in each series' tooltip options object.
  final num? changeDecimals;

  /// (Highcharts, Highstock, Highmaps, Gantt) A CSS class name to apply to the tooltip, allowing unique CSS styling for each chart.
  final String? className;

  /// (Highcharts, Highstock, Highmaps, Gantt) The HTML of the cluster point's in the tooltip. Works only with marker-clusters module and analogously to pointFormat.
  final String? clusterFormat;

  /// (Highcharts, Highstock, Highmaps, Gantt) Since 4.1, the crosshair definitions are moved to the Axis object in order for a better separation from the tooltip. See xAxis.crosshair.
  final dynamic crosshairs;

  /// (Highcharts, Highstock, Gantt) For series on datetime axes, the date format in the tooltip's header will by default be guessed based on the closest data points. This member gives the default string representations used for each unit. For an overview of the string or object configuration, see dateFor
  final dynamic dateTimeLabelFormats;

  /// (Highcharts, Highstock, Highmaps, Gantt) Distance from point to tooltip in pixels.
  final num? distance;

  /// (Highcharts, Highstock, Highmaps, Gantt) Enable or disable the tooltip.
  final bool? enabled;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether the tooltip should be fixed to one position in the chart, or located next to the point or mouse. When the tooltip is fixed, the position can be further specified with the tooltip.position options set.
  final bool? fixed;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether the tooltip should follow the mouse as it moves across columns, pie slices and other point types with an extent. By default it behaves this way for pie, polygon, map, sankey and wordcloud series by override in the `plotOptions` for those series types.
  final bool? followPointer;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether the tooltip should update as the finger moves on a touch device. If this is `true` and chart.panning is set,`followTouchMove` will take over one-finger touches, so the user needs to use two fingers for zooming and panning.
  final bool? followTouchMove;

  /// (Highcharts, Highstock, Highmaps, Gantt) A string to append to the tooltip format.
  final String? footerFormat;

  /// (Highcharts, Highstock, Highmaps, Gantt) A format string for the whole shared tooltip. When format strings are a requirement, it is usually more convenient to use `headerFormat`, `pointFormat` and `footerFormat`, but the `format` option allows combining them into one setting.
  final String? format;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for the tooltip header when tooltip.split is enabled. The header is the box containing the X value in a split tooltip.
  final HCTooltipHeaderOptions? header;

  /// (Highcharts, Highstock, Highmaps, Gantt) The HTML of the tooltip header line. The context is the Point class. Variables are enclosed in curly brackets. Examples of common variables to include are `x`, `y`, `series.name` and `series.color` and other properties on the same form. The `point.key` variab
  final String? headerFormat;

  /// (Highcharts, Highstock, Highmaps, Gantt) The name of a symbol to use for the border around the tooltip header. Applies only when tooltip.split is enabled.
  final String? headerShape;

  /// (Highcharts, Highstock, Highmaps, Gantt) The number of milliseconds to wait until the tooltip is hidden when mouse out from a point or chart.
  final num? hideDelay;

  /// (Highcharts, Highstock, Highmaps, Gantt) The HTML of the null point's line in the tooltip. Works analogously to pointFormat.
  final String? nullFormat;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to allow the tooltip to render outside the chart's SVG element box. By default (`false`), the tooltip is rendered within the chart's SVG element, which results in the tooltip being aligned inside the chart area. For small charts, this may result in cl
  final bool? outside;

  /// (Highcharts, Highstock, Highmaps, Gantt) Padding inside the tooltip, in pixels.
  final num? padding;

  /// (Highcharts, Highstock, Highmaps, Gantt) The HTML of the point's line in the tooltip. The context is the Point class. Variables are enclosed in curly brackets. Examples of common variables to include are `x`, `y`, `series.name` and `series.color` and other properties on the same form. Furthermore, `
  final String? pointFormat;

  /// (Highcharts, Highstock, Highmaps, Gantt) Positioning options for fixed tooltip, taking effect only when tooltip.fixed is `true`.
  final HCTooltipPositionOptions? position;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to apply a drop shadow to the tooltip. Defaults to true, unless the tooltip is fixed.
  final dynamic shadow;

  /// (Highcharts, Highstock, Highmaps, Gantt) The name of a symbol to use for the border around the tooltip. Can be one of: `"callout"`, `"circle"` or `"rect"`. When tooltip.split option is enabled, shape is applied to all boxes except header, which is controlled by tooltip.headerShape.
  final String? shape;

  /// (Highcharts, Highstock) Shows information in the tooltip for all points with the same X value. When the tooltip is shared, the entire plot area will capture mouse movement or touch events. Tooltip texts for series types with ordered data (not pie, scatter, flags etc) will be shown in a single bubble
  final bool? shared;

  /// (Highcharts, Highstock, Highmaps, Gantt) The number of milliseconds to wait until the tooltip is shown when mouse over a point. Works on initial hover.
  final num? showDelay;

  /// (Highcharts, Highstock) Proximity snap for graphs or single points. It defaults to 10 for mouse-powered devices and 25 for touch devices.
  final num? snap;

  /// (Highcharts, Highstock) Shows tooltip for all points with the same X value. Splits the tooltip into one label per series, with the header close to the axis. This is recommended over shared tooltips for charts with multiple line series, generally making them easier to read. This option takes preceden
  final bool? split;

  /// (Highcharts, Highstock, Highmaps, Gantt) Prevents the tooltip from switching or closing, when touched or pointed.
  final bool? stickOnContact;

  /// (Highcharts, Highstock, Highmaps, Gantt) CSS styles for the tooltip. The tooltip can also be styled through the CSS class `.highcharts-tooltip`.
  final dynamic style;

  /// (Highcharts, Highstock, Highmaps, Gantt) Use HTML to render the contents of the tooltip instead of SVG. Using HTML allows advanced formatting like tables and images in the tooltip. It is also recommended for rtl languages as it works around rtl bugs in early Firefox.
  final bool? useHTML;

  /// (Highcharts, Highstock, Highmaps, Gantt) How many decimals to show in each series' y value. This is overridable in each series' tooltip options object. The default is to preserve all decimals.
  final num? valueDecimals;

  /// (Highcharts, Highstock, Highmaps, Gantt) A string to prepend to each series' y value. Overridable in each series' tooltip options object.
  final String? valuePrefix;

  /// (Highcharts, Highstock, Highmaps, Gantt) A string to append to each series' y value. Overridable in each series' tooltip options object.
  final String? valueSuffix;

  /// (Highcharts, Highstock, Gantt) The format for the date in the tooltip header if the X axis is a datetime axis. The default is a best guess based on the smallest distance between points in the chart.
  final dynamic xDateFormat;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
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
    if (changeDecimals != null) {
      json['changeDecimals'] = changeDecimals;
    }
    if (className != null) {
      json['className'] = className;
    }
    if (clusterFormat != null) {
      json['clusterFormat'] = clusterFormat;
    }
    if (crosshairs != null) {
      json['crosshairs'] = hcJsonValue(crosshairs);
    }
    if (dateTimeLabelFormats != null) {
      json['dateTimeLabelFormats'] = hcJsonValue(dateTimeLabelFormats);
    }
    if (distance != null) {
      json['distance'] = distance;
    }
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    if (fixed != null) {
      json['fixed'] = fixed;
    }
    if (followPointer != null) {
      json['followPointer'] = followPointer;
    }
    if (followTouchMove != null) {
      json['followTouchMove'] = followTouchMove;
    }
    if (footerFormat != null) {
      json['footerFormat'] = footerFormat;
    }
    if (format != null) {
      json['format'] = format;
    }
    if (header != null) {
      json['header'] = header!.toJson();
    }
    if (headerFormat != null) {
      json['headerFormat'] = headerFormat;
    }
    if (headerShape != null) {
      json['headerShape'] = headerShape;
    }
    if (hideDelay != null) {
      json['hideDelay'] = hideDelay;
    }
    if (nullFormat != null) {
      json['nullFormat'] = nullFormat;
    }
    if (outside != null) {
      json['outside'] = outside;
    }
    if (padding != null) {
      json['padding'] = padding;
    }
    if (pointFormat != null) {
      json['pointFormat'] = pointFormat;
    }
    if (position != null) {
      json['position'] = position!.toJson();
    }
    if (shadow != null) {
      json['shadow'] = hcJsonValue(shadow);
    }
    if (shape != null) {
      json['shape'] = shape;
    }
    if (shared != null) {
      json['shared'] = shared;
    }
    if (showDelay != null) {
      json['showDelay'] = showDelay;
    }
    if (snap != null) {
      json['snap'] = snap;
    }
    if (split != null) {
      json['split'] = split;
    }
    if (stickOnContact != null) {
      json['stickOnContact'] = stickOnContact;
    }
    if (style != null) {
      json['style'] = hcJsonValue(style);
    }
    if (useHTML != null) {
      json['useHTML'] = useHTML;
    }
    if (valueDecimals != null) {
      json['valueDecimals'] = valueDecimals;
    }
    if (valuePrefix != null) {
      json['valuePrefix'] = valuePrefix;
    }
    if (valueSuffix != null) {
      json['valueSuffix'] = valueSuffix;
    }
    if (xDateFormat != null) {
      json['xDateFormat'] = hcJsonValue(xDateFormat);
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Positioning options for fixed tooltip, taking effect only when tooltip.fixed is `true`.
class HCTooltipPositionOptions implements HCOption {
  const HCTooltipPositionOptions({
    this.align,
    this.relativeTo,
    this.verticalAlign,
    this.x,
    this.y,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) The horizontal alignment of the fixed tooltip.
  final String? align;

  /// (Highcharts, Highstock, Highmaps, Gantt) What the fixed tooltip alignment should be relative to.
  final String? relativeTo;

  /// (Highcharts, Highstock, Highmaps, Gantt) The vertical alignment of the fixed tooltip.
  final String? verticalAlign;

  /// (Highcharts, Highstock, Highmaps, Gantt) X pixel offset from the given position. Can be used to shy away from axis lines, grid lines etc to avoid the tooltip overlapping other elements.
  final num? x;

  /// (Highcharts, Highstock, Highmaps, Gantt) Y pixel offset from the given position. Can be used to shy away from axis lines, grid lines etc to avoid the tooltip overlapping other elements.
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

/// (Highcharts, Highstock, Highmaps, Gantt) CSS styles for the tooltip. The tooltip can also be styled through the CSS class `.highcharts-tooltip`.
class HCTooltipStyleOptions implements HCOption {
  const HCTooltipStyleOptions({
    this.color,
    this.cursor,
    this.fontSize,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) *
  final dynamic color;

  final String? cursor;

  /// (Highcharts, Highstock, Highmaps, Gantt) *
  final dynamic fontSize;

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
      json['fontSize'] = hcJsonValue(fontSize);
    }
    return json;
  }
}
