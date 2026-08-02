part of 'hc_options.dart';

/// Serialized form of an SVG/HTML definition, including children.
class HCASTNode implements HCOption {
  const HCASTNode({
    this.attributes,
    this.children,
    this.tagName,
    this.textContent,
  });

  final HCSVGAttributes? attributes;

  final List<HCASTNode>? children;

  final String? tagName;

  final String? textContent;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (attributes != null) {
      json['attributes'] = attributes!.toJson();
    }
    if (children != null) {
      json['children'] = children!.map((e) => e.toJson()).toList();
    }
    if (tagName != null) {
      json['tagName'] = tagName;
    }
    if (textContent != null) {
      json['textContent'] = textContent;
    }
    return json;
  }
}

/// Options to align the element relative to the chart or another box.
class HCAlignObject implements HCOption {
  const HCAlignObject({
    this.align,
    this.alignByTranslate,
    this.verticalAlign,
    this.x,
    this.y,
  });

  /// Horizontal alignment. Can be one of `left`, `center` and `right`.
  final String? align;

  /// Use the `transform` attribute with translateX and translateY custom attributes to align this elements rather than `x` and `y` attributes.
  final bool? alignByTranslate;

  /// Vertical alignment. Can be one of `top`, `middle` and `bottom`.
  final String? verticalAlign;

  /// Horizontal pixel offset from alignment.
  final num? x;

  /// Vertical pixel offset from alignment.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (align != null) {
      json['align'] = align;
    }
    if (alignByTranslate != null) {
      json['alignByTranslate'] = alignByTranslate;
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

/// An animation configuration. Animation configurations can also be defined as booleans, where `false` turns off animation and `true` defaults to a duration of 500ms and defer of 0ms.
class HCAnimationOptionsObject implements HCOption {
  const HCAnimationOptionsObject({
    this.complete,
    this.defer,
    this.duration,
    this.easing,
    this.step,
  });

  /// A callback function to execute when the animation finishes.
  final dynamic complete;

  /// The animation defer in milliseconds.
  final num? defer;

  /// The animation duration in milliseconds.
  final num? duration;

  /// The name of an easing function as defined on the `Math` object.
  final dynamic easing;

  /// A callback function to execute on each step of each attribute or CSS property that's being animated. The first argument contains information about the animation and progress.
  final dynamic step;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (complete != null) {
      json['complete'] = hcJsonValue(complete);
    }
    if (defer != null) {
      json['defer'] = defer;
    }
    if (duration != null) {
      json['duration'] = duration;
    }
    if (easing != null) {
      json['easing'] = hcJsonValue(easing);
    }
    if (step != null) {
      json['step'] = hcJsonValue(step);
    }
    return json;
  }
}

/// (Highcharts, Highstock) Debugging options for boost. Useful for benchmarking, and general timing.
class HCBoostDebugOptions implements HCOption {
  const HCBoostDebugOptions({
    this.showSkipSummary,
    this.timeBufferCopy,
    this.timeKDTree,
    this.timeRendering,
    this.timeSeriesProcessing,
    this.timeSetup,
  });

  /// (Highcharts, Highstock) Show the number of points skipped through culling.
  final bool? showSkipSummary;

  /// (Highcharts, Highstock) Time the WebGL to SVG buffer copy
  final bool? timeBufferCopy;

  /// (Highcharts, Highstock) Time the building of the k-d tree.
  final bool? timeKDTree;

  /// (Highcharts, Highstock) Time the series rendering.
  final bool? timeRendering;

  /// (Highcharts, Highstock) Time the series processing.
  final bool? timeSeriesProcessing;

  /// (Highcharts, Highstock) Time the WebGL setup.
  final bool? timeSetup;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (showSkipSummary != null) {
      json['showSkipSummary'] = showSkipSummary;
    }
    if (timeBufferCopy != null) {
      json['timeBufferCopy'] = timeBufferCopy;
    }
    if (timeKDTree != null) {
      json['timeKDTree'] = timeKDTree;
    }
    if (timeRendering != null) {
      json['timeRendering'] = timeRendering;
    }
    if (timeSeriesProcessing != null) {
      json['timeSeriesProcessing'] = timeSeriesProcessing;
    }
    if (timeSetup != null) {
      json['timeSetup'] = timeSetup;
    }
    return json;
  }
}

/// (Highcharts, Highstock) Options for the Boost module. The Boost module allows certain series types to be rendered by WebGL instead of the default SVG. This allows hundreds of thousands of data points to be rendered in milliseconds. In addition to the WebGL rendering it saves time by skipping process
class HCBoostOptions implements HCOption {
  const HCBoostOptions({
    this.allowForce,
    this.chunkSize,
    this.debug,
    this.enabled,
    this.pixelRatio,
    this.seriesThreshold,
    this.useGPUTranslations,
    this.usePreallocated,
  });

  /// (Highcharts, Highstock) The chart will be boosted, if one of the series crosses its threshold and all the series in the chart can be boosted.
  final bool? allowForce;

  /// (Highcharts, Highstock) The number of points processed per frame when building the k-d tree for boosted series. Lower values improve responsiveness but increase the time it takes to build the tree.
  final num? chunkSize;

  /// (Highcharts, Highstock) Debugging options for boost. Useful for benchmarking, and general timing.
  final HCBoostDebugOptions? debug;

  /// (Highcharts, Highstock) Enable or disable boost on a chart.
  final bool? enabled;

  /// (Highcharts, Highstock) The pixel ratio for the WebGL content. If 0, the `window.devicePixelRatio` is used. This ensures sharp graphics on high DPI displays like Apple's Retina, as well as when a page is zoomed.
  final num? pixelRatio;

  /// (Highcharts, Highstock) Set the series threshold for when the boost should kick in globally.
  final num? seriesThreshold;

  /// (Highcharts, Highstock) Enable or disable GPU translations. GPU translations are faster than doing the translation in JavaScript.
  final bool? useGPUTranslations;

  /// (Highcharts, Highstock) Enable or disable pre-allocation of vertex buffers.
  final bool? usePreallocated;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (allowForce != null) {
      json['allowForce'] = allowForce;
    }
    if (chunkSize != null) {
      json['chunkSize'] = chunkSize;
    }
    if (debug != null) {
      json['debug'] = debug!.toJson();
    }
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    if (pixelRatio != null) {
      json['pixelRatio'] = pixelRatio;
    }
    if (seriesThreshold != null) {
      json['seriesThreshold'] = seriesThreshold;
    }
    if (useGPUTranslations != null) {
      json['useGPUTranslations'] = useGPUTranslations;
    }
    if (usePreallocated != null) {
      json['usePreallocated'] = usePreallocated;
    }
    return json;
  }
}

/// Detailed options for border radius.
class HCBorderRadiusOptionsObject implements HCOption {
  const HCBorderRadiusOptionsObject({
    this.radius,
    this.scope,
    this.where,
  });

  /// The border radius. A number signifies pixels. A percentage string, like for example `50%`, signifies a relative size. For columns this is relative to the column width, for pies it is relative to the radius and the inner radius.
  final dynamic radius;

  /// The scope of the rounding for column charts or plot bands. In a stacked column chart, the value `point` means each single point will get rounded corners. The value `stack` means the rounding will apply to the full stack, so that only points close to the top or bottom will receive rounding.
  final String? scope;

  /// For column charts, where in the point or stack to apply rounding. The `end` value means only those corners at the point value will be rounded, leaving the corners at the base or threshold unrounded. This is the most intuitive behavior. The `all` value means also the base will be rounded.
  final String? where;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (radius != null) {
      json['radius'] = hcJsonValue(radius);
    }
    if (scope != null) {
      json['scope'] = scope;
    }
    if (where != null) {
      json['where'] = where;
    }
    return json;
  }
}

/// Options for aligning breadcrumbs group.
class HCBreadcrumbsAlignOptions implements HCOption {
  const HCBreadcrumbsAlignOptions({
    this.align,
    this.verticalAlign,
    this.x,
    this.y,
  });

  /// Align of a Breadcrumb group.
  final String? align;

  /// Vertical align of a Breadcrumb group.
  final String? verticalAlign;

  /// X offset of a Breadcrumbs group.
  final num? x;

  /// Y offset of a Breadcrumbs group.
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

/// A style object with camel case property names to define visual appearance of a SVG element or HTML element. The properties can be whatever styles are supported on the given SVG or HTML element.
class HCCSSObject implements HCOption {
  const HCCSSObject({
    this.background,
    this.backgroundColor,
    this.border,
    this.borderRadius,
    this.color,
    this.cursor,
    this.fontFamily,
    this.fontSize,
    this.fontWeight,
    this.height,
    this.lineClamp,
    this.lineWidth,
    this.opacity,
    this.padding,
    this.pointerEvents,
    this.position,
    this.textAlign,
    this.textDecoration,
    this.textOutline,
    this.textOverflow,
    this.top,
    this.transition,
    this.whiteSpace,
    this.width,
  });

  /// Background style for the element.
  final String? background;

  /// Background color of the element.
  final String? backgroundColor;

  /// Border style for the element.
  final String? border;

  /// Radius of the element border.
  final String? borderRadius;

  /// Color used in the element. The 'contrast' option is a Highcharts custom property that results in black or white, depending on the background of the element.
  final String? color;

  /// Style of the mouse cursor when resting over the element.
  final String? cursor;

  /// Font family of the element text. Multiple values have to be in decreasing preference order and separated by comma.
  final String? fontFamily;

  /// Font size of the element text.
  final dynamic fontSize;

  /// Font weight of the element text.
  final String? fontWeight;

  /// Height of the element.
  final num? height;

  /// The maximum number of lines. If lines are cropped away, an ellipsis will be added.
  final num? lineClamp;

  /// Width of the element border.
  final num? lineWidth;

  /// Opacity of the element.
  final num? opacity;

  /// Space around the element content.
  final String? padding;

  /// Behavior of the element when the mouse cursor rests over it.
  final String? pointerEvents;

  /// Positioning of the element.
  final String? position;

  /// Alignment of the element text.
  final String? textAlign;

  /// Additional decoration of the element text.
  final String? textDecoration;

  /// Outline style of the element text.
  final String? textOutline;

  /// Line break style of the element text. Highcharts SVG elements support `ellipsis` when a `width` is set.
  final String? textOverflow;

  /// Top spacing of the element relative to the parent element.
  final String? top;

  /// Animated transition of selected element properties.
  final String? transition;

  /// Line break style of the element text.
  final String? whiteSpace;

  /// Width of the element.
  final num? width;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (background != null) {
      json['background'] = background;
    }
    if (backgroundColor != null) {
      json['backgroundColor'] = backgroundColor;
    }
    if (border != null) {
      json['border'] = border;
    }
    if (borderRadius != null) {
      json['borderRadius'] = borderRadius;
    }
    if (color != null) {
      json['color'] = color;
    }
    if (cursor != null) {
      json['cursor'] = cursor;
    }
    if (fontFamily != null) {
      json['fontFamily'] = fontFamily;
    }
    if (fontSize != null) {
      json['fontSize'] = hcJsonValue(fontSize);
    }
    if (fontWeight != null) {
      json['fontWeight'] = fontWeight;
    }
    if (height != null) {
      json['height'] = height;
    }
    if (lineClamp != null) {
      json['lineClamp'] = lineClamp;
    }
    if (lineWidth != null) {
      json['lineWidth'] = lineWidth;
    }
    if (opacity != null) {
      json['opacity'] = opacity;
    }
    if (padding != null) {
      json['padding'] = padding;
    }
    if (pointerEvents != null) {
      json['pointerEvents'] = pointerEvents;
    }
    if (position != null) {
      json['position'] = position;
    }
    if (textAlign != null) {
      json['textAlign'] = textAlign;
    }
    if (textDecoration != null) {
      json['textDecoration'] = textDecoration;
    }
    if (textOutline != null) {
      json['textOutline'] = textOutline;
    }
    if (textOverflow != null) {
      json['textOverflow'] = textOverflow;
    }
    if (top != null) {
      json['top'] = top;
    }
    if (transition != null) {
      json['transition'] = transition;
    }
    if (whiteSpace != null) {
      json['whiteSpace'] = whiteSpace;
    }
    if (width != null) {
      json['width'] = width;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) The chart's caption, which will render below the chart and will be part of exported charts. The caption can be updated after chart initialization through the `Chart.update` or `Chart.caption.update` methods.
class HCCaptionOptions implements HCOption {
  const HCCaptionOptions({
    this.align,
    this.floating,
    this.margin,
    this.style,
    this.text,
    this.useHTML,
    this.verticalAlign,
    this.x,
    this.y,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) The horizontal alignment of the caption. Can be one of "left", "center" and "right".
  final String? align;

  /// (Highcharts, Highstock, Highmaps, Gantt) When the caption is floating, the plot area will not move to make space for it.
  final bool? floating;

  /// (Highcharts, Highstock, Highmaps, Gantt) The margin between the caption and the plot area.
  final num? margin;

  /// (Highcharts, Highstock, Highmaps, Gantt) CSS styles for the caption.
  final dynamic style;

  /// (Highcharts, Highstock, Highmaps, Gantt) The caption text of the chart.
  final String? text;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to use HTML to render the text.
  final bool? useHTML;

  /// (Highcharts, Highstock, Highmaps, Gantt) The vertical alignment of the caption. Can be one of `"top"`, `"middle"` and `"bottom"`. When middle, the caption behaves as floating.
  final String? verticalAlign;

  /// (Highcharts, Highstock, Highmaps, Gantt) The x position of the caption relative to the alignment within `chart.spacingLeft` and `chart.spacingRight`.
  final num? x;

  /// (Highcharts, Highstock, Highmaps, Gantt) The y position of the caption relative to the alignment within `chart.spacingTop` and `chart.spacingBottom`.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (align != null) {
      json['align'] = align;
    }
    if (floating != null) {
      json['floating'] = floating;
    }
    if (margin != null) {
      json['margin'] = margin;
    }
    if (style != null) {
      json['style'] = hcJsonValue(style);
    }
    if (text != null) {
      json['text'] = text;
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

/// (Highcharts, Highstock, Highmaps, Gantt) CSS styles for the caption.
class HCCaptionStyleOptions implements HCOption {
  const HCCaptionStyleOptions({
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

/// (Gantt) Show an indicator on the axis for the current date and time. Can be a boolean or a configuration object similar to xAxis.plotLines.
class HCCurrentDateIndicatorOptions implements HCOption {
  const HCCurrentDateIndicatorOptions({
    this.color,
    this.dashStyle,
    this.events,
    this.id,
    this.label,
    this.labels,
    this.width,
    this.zIndex,
  });

  /// (Gantt) The color of the line.
  final String? color;

  /// (Gantt) The dashing or dot style for the plot line. For possible values see this overview.
  final String? dashStyle;

  /// (Gantt) An object defining mouse events for the plot line. Supported properties are `click`, `mouseover`, `mouseout`, `mousemove`.
  final dynamic events;

  /// (Gantt) An id used for identifying the plot line in Axis.removePlotLine.
  final String? id;

  /// (Gantt) Text labels for the plot lines
  final dynamic label;

  final dynamic labels;

  /// (Gantt) The width or thickness of the plot line.
  final num? width;

  /// (Gantt) The z index of the plot line within the chart.
  final num? zIndex;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (color != null) {
      json['color'] = color;
    }
    if (dashStyle != null) {
      json['dashStyle'] = dashStyle;
    }
    if (events != null) {
      json['events'] = hcJsonValue(events);
    }
    if (id != null) {
      json['id'] = id;
    }
    if (label != null) {
      json['label'] = hcJsonValue(label);
    }
    if (labels != null) {
      json['labels'] = hcJsonValue(labels);
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

/// Options for formatting dates and times using the Intl.DateTimeFormat API, and extended with some custom options for Highcharts.
class HCDateTimeFormatOptions implements HCOption {
  const HCDateTimeFormatOptions({
    this.day,
    this.era,
    this.formatMatcher,
    this.fractionalSecondDigits,
    this.hour,
    this.hour12,
    this.localeMatcher,
    this.minute,
    this.month,
    this.prefix,
    this.second,
    this.suffix,
    this.timeZone,
    this.timeZoneName,
    this.weekday,
    this.year,
  });

  /// The representation of the day.
  final String? day;

  /// The representation of the era.
  final String? era;

  /// The format matching algorithm to use.
  final String? formatMatcher;

  /// The number of fractional digits to use. 3 means milliseconds.
  final dynamic fractionalSecondDigits;

  /// The representation of the hour.
  final String? hour;

  /// Whether to use 12-hour time (as opposed to 24-hour time).
  final String? hour12;

  /// The locale matching algorithm to use.
  final String? localeMatcher;

  /// The representation of the minute.
  final String? minute;

  /// The representation of the month. "narrow", "short", "long".
  final String? month;

  /// A prefix for the time string. Custom Highcharts option.
  final String? prefix;

  /// The representation of the second.
  final String? second;

  /// A suffix for the time string. Custom Highcharts option.
  final String? suffix;

  /// The time zone to use. The default is the browser's default time zone.
  final String? timeZone;

  /// The representation of the time zone name.
  final String? timeZoneName;

  /// The representation of the weekday.
  final String? weekday;

  /// The representation of the year.
  final String? year;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (day != null) {
      json['day'] = day;
    }
    if (era != null) {
      json['era'] = era;
    }
    if (formatMatcher != null) {
      json['formatMatcher'] = formatMatcher;
    }
    if (fractionalSecondDigits != null) {
      json['fractionalSecondDigits'] = hcJsonValue(fractionalSecondDigits);
    }
    if (hour != null) {
      json['hour'] = hour;
    }
    if (hour12 != null) {
      json['hour12'] = hour12;
    }
    if (localeMatcher != null) {
      json['localeMatcher'] = localeMatcher;
    }
    if (minute != null) {
      json['minute'] = minute;
    }
    if (month != null) {
      json['month'] = month;
    }
    if (prefix != null) {
      json['prefix'] = prefix;
    }
    if (second != null) {
      json['second'] = second;
    }
    if (suffix != null) {
      json['suffix'] = suffix;
    }
    if (timeZone != null) {
      json['timeZone'] = timeZone;
    }
    if (timeZoneName != null) {
      json['timeZoneName'] = timeZoneName;
    }
    if (weekday != null) {
      json['weekday'] = weekday;
    }
    if (year != null) {
      json['year'] = year;
    }
    return json;
  }
}

/// Generic dictionary in TypeScript notation. Use the native `AnyRecord` instead.
class HCDictionary implements HCOption {
  const HCDictionary();

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    return json;
  }
}

/// (Highcharts, Highstock, Gantt) Style options for the guide box default state.
class HCDragDropGuideBoxOptionsObject implements HCOption {
  const HCDragDropGuideBoxOptionsObject({
    this.className,
    this.color,
    this.cursor,
    this.lineColor,
    this.lineWidth,
    this.zIndex,
  });

  /// (Highcharts, Highstock, Gantt) CSS class name of the guide box in this state. Defaults to `highcharts-drag-box-default`.
  final String? className;

  /// (Highcharts, Highstock, Gantt) Guide box fill color.
  final dynamic color;

  /// (Highcharts, Highstock, Gantt) Guide box cursor.
  final String? cursor;

  /// (Highcharts, Highstock, Gantt) Color of the border around the guide box.
  final String? lineColor;

  /// (Highcharts, Highstock, Gantt) Width of the line around the guide box.
  final num? lineWidth;

  /// (Highcharts, Highstock, Gantt) Guide box zIndex.
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
    if (cursor != null) {
      json['cursor'] = cursor;
    }
    if (lineColor != null) {
      json['lineColor'] = lineColor;
    }
    if (lineWidth != null) {
      json['lineWidth'] = lineWidth;
    }
    if (zIndex != null) {
      json['zIndex'] = zIndex;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Gantt) Options for the drag handles available in column series.
class HCDragDropHandleOptionsObject implements HCOption {
  const HCDragDropHandleOptionsObject({
    this.className,
    this.color,
    this.cursor,
    this.lineColor,
    this.lineWidth,
    this.pathFormatter,
    this.zIndex,
  });

  /// (Highcharts, Highstock, Gantt) The class name of the drag handles. Defaults to `highcharts-drag-handle`.
  final String? className;

  /// (Highcharts, Highstock, Gantt) The fill color of the drag handles.
  final dynamic color;

  /// (Highcharts, Highstock, Gantt) The mouse cursor to use for the drag handles. By default this is intelligently switching between `ew-resize` and `ns-resize` depending on the direction the point is being dragged.
  final String? cursor;

  /// (Highcharts, Highstock, Gantt) The line color of the drag handles.
  final String? lineColor;

  /// (Highcharts, Highstock, Gantt) The line width for the drag handles.
  final num? lineWidth;

  /// (Highcharts, Highstock, Gantt) Function to define the SVG path to use for the drag handles. Takes the point as argument. Should return an SVG path in array format. The SVG path is automatically positioned on the point.
  final dynamic pathFormatter;

  /// (Highcharts, Highstock, Gantt) The z index for the drag handles.
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
    if (cursor != null) {
      json['cursor'] = cursor;
    }
    if (lineColor != null) {
      json['lineColor'] = lineColor;
    }
    if (lineWidth != null) {
      json['lineWidth'] = lineWidth;
    }
    if (pathFormatter != null) {
      json['pathFormatter'] = hcJsonValue(pathFormatter);
    }
    if (zIndex != null) {
      json['zIndex'] = zIndex;
    }
    return json;
  }
}

/// (Gantt) Data for a Gantt series.
class HCGanttPointOptionsObject implements HCOption {
  const HCGanttPointOptionsObject({
    this.accessibility,
    this.collapsed,
    this.color,
    this.colorIndex,
    this.completed,
    this.custom,
    this.dependency,
    this.dragDrop,
    this.end,
    this.id,
    this.labelrank,
    this.milestone,
    this.name,
    this.parent,
    this.partialFill,
    this.start,
    this.y,
  });

  /// (Gantt) Accessibility options for a data point.
  final HCPointAccessibilityOptionsObject? accessibility;

  /// (Gantt) Whether the grid node belonging to this point should start as collapsed. Used in axes of type treegrid.
  final bool? collapsed;

  /// (Highcharts, Highstock, Gantt) Individual color for the point. By default the color is pulled from the global `colors` array.
  final dynamic color;

  /// (Highcharts, Gantt) A specific color index to use for the point, so its graphic representations are given the class name `highcharts-color-{n}`. In styled mode this will change the color of the graphic. In non-styled mode, the color is set by the `fill` attribute, so the change in class name won't h
  final num? colorIndex;

  /// (Gantt) Progress indicator, how much of the task completed. When set as a number, works as `{ amount: number }`.
  final dynamic completed;

  /// (Gantt) A reserved subspace to store options and values for customized functionality. Here you can add additional data for your own event callbacks and formatter callbacks.
  final HCDictionary? custom;

  /// (Gantt) The ID of the point (task) that this point depends on in Gantt charts. Aliases connect. Can also be an object, specifying further connecting options between the points. Multiple connections can be specified by providing an array.
  final dynamic dependency;

  /// (Gantt) Point specific options for the draggable-points module. Overrides options on `series.dragDrop`.
  final HCSeriesLineDataDragDropOptions? dragDrop;

  /// (Gantt) The end time of a task. May be a timestamp or a date string.
  final dynamic end;

  /// (Highcharts, Highstock, Gantt) An id for the point. This can be used after render time to get a pointer to the point object through `chart.get()`.
  final String? id;

  /// (Gantt) The rank for all this point's data labels in case of collision. If two data labels are about to overlap, only the one with the highest `labelrank` will be drawn.
  final num? labelrank;

  /// (Gantt) Whether this point is a milestone. If so, only the `start` option is handled, while `end` is ignored.
  final bool? milestone;

  /// (Gantt) The name of a task. If a `treegrid` y-axis is used (default in Gantt charts), this will be picked up automatically, and used to calculate the y-value.
  final String? name;

  /// (Gantt) The ID of the parent point (task) of this point in Gantt charts.
  final String? parent;

  /// (Highcharts, Highstock, Gantt) A partial fill for each point, typically used to visualize how much of a task is performed. The partial fill object can be set either on series or point level.
  final HCXrangePointPartialFillOptionsObject? partialFill;

  /// (Gantt) The start time of a task. May be a timestamp or a date string.
  final dynamic start;

  /// (Gantt) The Y value of a task.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (accessibility != null) {
      json['accessibility'] = accessibility!.toJson();
    }
    if (collapsed != null) {
      json['collapsed'] = collapsed;
    }
    if (color != null) {
      json['color'] = hcJsonValue(color);
    }
    if (colorIndex != null) {
      json['colorIndex'] = colorIndex;
    }
    if (completed != null) {
      json['completed'] = hcJsonValue(completed);
    }
    if (custom != null) {
      json['custom'] = custom!.toJson();
    }
    if (dependency != null) {
      json['dependency'] = hcJsonValue(dependency);
    }
    if (dragDrop != null) {
      json['dragDrop'] = dragDrop!.toJson();
    }
    if (end != null) {
      json['end'] = hcJsonValue(end);
    }
    if (id != null) {
      json['id'] = id;
    }
    if (labelrank != null) {
      json['labelrank'] = labelrank;
    }
    if (milestone != null) {
      json['milestone'] = milestone;
    }
    if (name != null) {
      json['name'] = name;
    }
    if (parent != null) {
      json['parent'] = parent;
    }
    if (partialFill != null) {
      json['partialFill'] = partialFill!.toJson();
    }
    if (start != null) {
      json['start'] = hcJsonValue(start);
    }
    if (y != null) {
      json['y'] = y;
    }
    return json;
  }
}

/// Represents the loose structure of a geographic JSON file.
class HCGeoJSON implements HCOption {
  const HCGeoJSON({
    this.copyright,
    this.copyrightShort,
    this.crs,
    this.features,
    this.title,
    this.type,
    this.version,
  });

  /// Full copyright note of the geographic data.
  final String? copyright;

  /// Short copyright note of the geographic data suitable for watermarks.
  final String? copyrightShort;

  /// Additional meta information based on the coordinate reference system.
  final HCDictionary? crs;

  /// Data sets of geographic features.
  final List<HCGeoJSONFeature>? features;

  /// Title of the geographic data.
  final String? title;

  /// Type of the geographic data. Type of an optimized map collection is `FeatureCollection`.
  final String? type;

  /// Version of the geographic data.
  final String? version;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (copyright != null) {
      json['copyright'] = copyright;
    }
    if (copyrightShort != null) {
      json['copyrightShort'] = copyrightShort;
    }
    if (crs != null) {
      json['crs'] = crs!.toJson();
    }
    if (features != null) {
      json['features'] = features!.map((e) => e.toJson()).toList();
    }
    if (title != null) {
      json['title'] = title;
    }
    if (type != null) {
      json['type'] = type;
    }
    if (version != null) {
      json['version'] = version;
    }
    return json;
  }
}

/// Data set of a geographic feature.
class HCGeoJSONFeature implements HCOption {
  const HCGeoJSONFeature({
    this.type,
  });

  /// Data type of the geographic feature.
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

/// Gradient options instead of a solid color.
class HCGradientColorObject implements HCOption {
  const HCGradientColorObject({
    this.linearGradient,
    this.radialGradient,
    this.stops,
  });

  /// Holds an object that defines the start position and the end position relative to the shape.
  final HCLinearGradientColorObject? linearGradient;

  /// Holds an object that defines the center position and the radius.
  final HCRadialGradientColorObject? radialGradient;

  /// The first item in each tuple is the position in the gradient, where 0 is the start of the gradient and 1 is the end of the gradient. Multiple stops can be applied. The second item is the color for each stop. This color can also be given in the rgba format.
  final List<HCGradientColorStopObject>? stops;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (linearGradient != null) {
      json['linearGradient'] = linearGradient!.toJson();
    }
    if (radialGradient != null) {
      json['radialGradient'] = radialGradient!.toJson();
    }
    if (stops != null) {
      json['stops'] = stops!.map((e) => e.toJson()).toList();
    }
    return json;
  }
}

/// Color stop tuple.
class HCGradientColorStopObject implements HCOption {
  const HCGradientColorStopObject({
    this.color,
  });

  final dynamic color;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (color != null) {
      json['color'] = hcJsonValue(color);
    }
    return json;
  }
}

/// Detailed options for interpolation object.
class HCInterpolationOptionsObject implements HCOption {
  const HCInterpolationOptionsObject({
    this.blur,
    this.enabled,
  });

  /// Represents how much blur should be added to the interpolated image. Works best in the range of 0-1, all higher values would need a lot more performance of the machine to calculate more detailed interpolation.
  final num? blur;

  /// Enable or disable the interpolation.
  final bool? enabled;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (blur != null) {
      json['blur'] = blur;
    }
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    return json;
  }
}

/// Containing the position of a box that should be avoided by labels.
class HCLabelIntersectBoxObject implements HCOption {
  const HCLabelIntersectBoxObject({
    this.bottom,
    this.left,
    this.right,
    this.top,
  });

  final num? bottom;

  final num? left;

  final num? right;

  final num? top;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (bottom != null) {
      json['bottom'] = bottom;
    }
    if (left != null) {
      json['left'] = left;
    }
    if (right != null) {
      json['right'] = right;
    }
    if (top != null) {
      json['top'] = top;
    }
    return json;
  }
}

/// Defines the start position and the end position for a gradient relative to the shape. Start position (x1, y1) and end position (x2, y2) are relative to the shape, where 0 means top/left and 1 is bottom/right.
class HCLinearGradientColorObject implements HCOption {
  const HCLinearGradientColorObject({
    this.x1,
    this.x2,
    this.y1,
    this.y2,
  });

  /// Start horizontal position of the gradient. Float ranges 0-1.
  final num? x1;

  /// End horizontal position of the gradient. Float ranges 0-1.
  final num? x2;

  /// Start vertical position of the gradient. Float ranges 0-1.
  final num? y1;

  /// End vertical position of the gradient. Float ranges 0-1.
  final num? y2;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (x1 != null) {
      json['x1'] = x1;
    }
    if (x2 != null) {
      json['x2'] = x2;
    }
    if (y1 != null) {
      json['y1'] = y1;
    }
    if (y2 != null) {
      json['y2'] = y2;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) The loading options control the appearance of the loading screen that covers the plot area on chart operations. This screen only appears after an explicit call to `chart.showLoading()`. It is a utility for developers to communicate to the end user that someth
class HCLoadingOptions implements HCOption {
  const HCLoadingOptions({
    this.hideDuration,
    this.labelStyle,
    this.showDuration,
    this.style,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) The duration in milliseconds of the fade out effect.
  final num? hideDuration;

  /// (Highcharts, Highstock, Highmaps, Gantt) CSS styles for the loading label `span`.
  final HCCSSObject? labelStyle;

  /// (Highcharts, Highstock, Highmaps, Gantt) The duration in milliseconds of the fade in effect.
  final num? showDuration;

  /// (Highcharts, Highstock, Highmaps, Gantt) CSS styles for the loading screen that covers the plot area.
  final HCCSSObject? style;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (hideDuration != null) {
      json['hideDuration'] = hideDuration;
    }
    if (labelStyle != null) {
      json['labelStyle'] = labelStyle!.toJson();
    }
    if (showDuration != null) {
      json['showDuration'] = showDuration;
    }
    if (style != null) {
      json['style'] = style!.toJson();
    }
    return json;
  }
}

/// (Highcharts, Highstock, Gantt) Options for displaying a message like "No data to display". This feature requires the file no-data-to-display.js to be loaded in the page. The actual text to display is set in the lang.noData option.
class HCNoDataOptions implements HCOption {
  const HCNoDataOptions({
    this.attr,
    this.position,
    this.style,
    this.useHTML,
  });

  /// (Highcharts, Highstock, Gantt) An object of additional SVG attributes for the no-data label.
  final HCSVGAttributes? attr;

  /// (Highcharts, Highstock, Gantt) The position of the no-data label, relative to the plot area.
  final dynamic position;

  /// (Highcharts, Highstock, Gantt) CSS styles for the no-data label.
  final HCCSSObject? style;

  /// (Highcharts, Highstock, Gantt) Whether to insert the label as HTML, or as pseudo-HTML rendered with SVG.
  final bool? useHTML;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (attr != null) {
      json['attr'] = attr!.toJson();
    }
    if (position != null) {
      json['position'] = hcJsonValue(position);
    }
    if (style != null) {
      json['style'] = style!.toJson();
    }
    if (useHTML != null) {
      json['useHTML'] = useHTML;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Gantt) The position of the no-data label, relative to the plot area.
class HCNoDataPositionOptions implements HCOption {
  const HCNoDataPositionOptions({
    this.align,
    this.verticalAlign,
    this.x,
    this.y,
  });

  /// (Highcharts, Highstock, Gantt) Horizontal alignment of the label.
  final String? align;

  /// (Highcharts, Highstock, Gantt) Vertical alignment of the label.
  final String? verticalAlign;

  /// (Highcharts, Highstock, Gantt) Horizontal offset of the label, in pixels.
  final num? x;

  /// (Highcharts, Highstock, Gantt) Vertical offset of the label, in pixels.
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

class HCOptions implements HCOption {
  const HCOptions({
    this.accessibility,
    this.annotations,
    this.boost,
    this.caption,
    this.chart,
    this.colorAxis,
    this.colors,
    this.connectors,
    this.credits,
    this.data,
    this.dataTable,
    this.defs,
    this.drilldown,
    this.exporting,
    this.global,
    this.lang,
    this.legend,
    this.loading,
    this.mapNavigation,
    this.mapView,
    this.navigation,
    this.navigator,
    this.noData,
    this.palette,
    this.pane,
    this.plotOptions,
    this.rangeSelector,
    this.responsive,
    this.scrollbar,
    this.series,
    this.sonification,
    this.stockTools,
    this.subtitle,
    this.time,
    this.title,
    this.tooltip,
    this.xAxis,
    this.yAxis,
    this.zAxis,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for configuring accessibility for the chart. Requires the accessibility module to be loaded. For a description of the module and information on its features, see Highcharts Accessibility.
  final HCAccessibilityOptions? accessibility;

  /// (Highcharts, Highstock, Highmaps, Gantt) A collection of annotations to add to the chart. The basic annotation allows adding custom labels or shapes. The items can be tied to points, axis coordinates or chart pixel coordinates.
  final List<HCAnnotationsOptions>? annotations;

  /// (Highcharts, Highstock) Options for the Boost module. The Boost module allows certain series types to be rendered by WebGL instead of the default SVG. This allows hundreds of thousands of data points to be rendered in milliseconds. In addition to the WebGL rendering it saves time by skipping process
  final HCBoostOptions? boost;

  /// (Highcharts, Highstock, Highmaps, Gantt) The chart's caption, which will render below the chart and will be part of exported charts. The caption can be updated after chart initialization through the `Chart.update` or `Chart.caption.update` methods.
  final HCCaptionOptions? caption;

  /// (Highcharts, Highstock, Highmaps, Gantt) General options for the chart.
  final HCChartOptions? chart;

  /// (Highcharts, Highstock, Highmaps) A color axis for series. Visually, the color axis will appear as a gradient or as separate items inside the legend, depending on whether the axis is scalar or based on data classes.
  final dynamic colorAxis;

  /// (Highcharts, Highstock, Highmaps, Gantt) An array containing the default colors for the chart's series. When all colors are used, new colors are pulled from the start again.
  final List<dynamic>? colors;

  /// (Gantt) The Pathfinder module allows you to define connections between any two points, represented as lines - optionally with markers for the start and/or end points. Multiple algorithms are available for calculating how the connecting lines are drawn.
  final HCConnectorsOptions? connectors;

  /// (Highcharts, Highstock, Highmaps, Gantt) Highcharts by default puts a credits label in the lower right corner of the chart. This can be changed using these options.
  final HCCreditsOptions? credits;

  /// (Highcharts, Highstock, Highmaps, Gantt) The Data module provides a simplified interface for adding data to a chart from sources like CVS, HTML tables or grid views. See also the tutorial article on the Data module.
  final HCDataOptions? data;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for one or many chart-level data tables. The `dataTable` option, or its array members, can be either configuration objects or instances of the `DataTable` class. If a `DataTable` instance is passed, it will be used directly. If a configuration object
  final dynamic dataTable;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for configuring markers for annotations.
  final dynamic defs;

  /// (Highcharts, Highmaps) Options for drill down, the concept of inspecting increasingly high resolution data through clicking on chart items like columns or pie slices.
  final HCDrilldownOptions? drilldown;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for the exporting module. For an overview on the matter, see the docs and read our Fair Usage Policy.
  final HCExportingOptions? exporting;

  /// (Highcharts, Highstock, Highmaps, Gantt) Global options that don't apply to each chart. These options must be set using the `Highcharts.setOptions` method. (see online documentation for example)
  final HCGlobalOptions? global;

  /// (Highcharts, Highstock, Highmaps, Gantt) An object containing language-related strings and settings. A typical setup uses `Highcharts.setOptions` to make the options apply to all charts in the same page. (see online documentation for example)
  final HCLangOptions? lang;

  /// (Highcharts, Highstock, Highmaps, Gantt) The legend is a box containing a symbol and name for each series item or point item in the chart. Each series (or points in case of pie charts) is represented by a symbol and its name in the legend.
  final HCLegendOptions? legend;

  /// (Highcharts, Highstock, Highmaps, Gantt) The loading options control the appearance of the loading screen that covers the plot area on chart operations. This screen only appears after an explicit call to `chart.showLoading()`. It is a utility for developers to communicate to the end user that someth
  final HCLoadingOptions? loading;

  /// (Highmaps) The `mapNavigation` option handles buttons for navigation in addition to `mousewheel` and `doubleclick` handlers for map zooming.
  final HCMapNavigationOptions? mapNavigation;

  /// (Highmaps) The `mapView` options control the initial view of the chart, and how projection is set up for raw geoJSON maps (beta as of v9.3).
  final HCMapViewOptions? mapView;

  /// (Highcharts, Highstock, Highmaps, Gantt) A collection of options for buttons and menus appearing in the exporting module or in Stock Tools.
  final HCNavigationOptions? navigation;

  /// (Highstock, Gantt) The navigator is a small series below the main series, displaying a view of the entire data set. It provides tools to zoom in and out on parts of the data as well as panning across the dataset.
  final HCNavigatorOptions? navigator;

  /// (Highcharts, Highstock, Gantt) Options for displaying a message like "No data to display". This feature requires the file no-data-to-display.js to be loaded in the page. The actual text to display is set in the lang.noData option.
  final HCNoDataOptions? noData;

  /// (Highcharts, Highstock, Highmaps, Gantt) The palette object specifies colors for the charts and how to apply them.
  final HCPaletteOptions? palette;

  /// (Highcharts) The pane serves as a container for axes and backgrounds for circular gauges and polar charts.
  final dynamic pane;

  /// (Highcharts, Highstock, Highmaps, Gantt) The plotOptions is a wrapper object for config objects for each series type. The config objects for each series can also be overridden for each series item as given in the series array.
  final HCPlotOptions? plotOptions;

  /// (Highstock, Gantt) The range selector is a tool for selecting ranges to display within the chart. It provides buttons to select preconfigured ranges in the chart, like 1 day, 1 week, 1 month etc. It also provides input boxes where min and max dates can be manually input.
  final HCRangeSelectorOptions? rangeSelector;

  /// (Highcharts, Highstock, Highmaps, Gantt) Allows setting a set of rules to apply for different screen or chart sizes. Each rule specifies additional chart options.
  final HCResponsiveOptions? responsive;

  /// (Highstock, Gantt) The scrollbar is a means of panning over the X axis of a stock chart. Scrollbars can also be applied to other types of axes.
  final HCScrollbarOptions? scrollbar;

  /// (Highcharts, Highstock, Highmaps, Gantt) Series options for specific data and the data itself. In TypeScript you have to cast the series options to specific series types, to get all possible options for a series. (see online documentation for example)
  final List<dynamic>? series;

  final HCSonificationOptions? sonification;

  /// (Highstock) Configure the stockTools gui strings in the chart. Requires the [stockTools module]() to be loaded. For a description of the module and information on its features, see [Highcharts StockTools]().
  final HCStockToolsOptions? stockTools;

  /// (Highcharts, Highstock, Highmaps, Gantt) The chart's subtitle. This can be used both to display a subtitle below the main title, and to display random text anywhere in the chart. The subtitle can be updated after chart initialization through the `Chart.setTitle` method.
  final HCSubtitleOptions? subtitle;

  /// (Highcharts, Highstock, Highmaps, Gantt) Time options that can apply globally or to individual charts. These settings affect how `datetime` axes are laid out, how tooltips are formatted, how series pointIntervalUnit works and how the Highcharts Stock range selector handles time.
  final HCTimeOptions? time;

  /// (Highcharts, Highstock, Highmaps, Gantt) The chart's main title.
  final HCTitleOptions? title;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for the tooltip that appears when the user hovers over a series or point.
  final HCTooltipOptions? tooltip;

  /// (Highcharts, Highstock, Highmaps, Gantt) The X axis or category axis. Normally this is the horizontal axis, though if the chart is inverted this is the vertical axis. In case of multiple axes, the xAxis node is an array of configuration objects.
  final dynamic xAxis;

  /// (Highcharts, Highstock, Highmaps, Gantt) The Y axis or value axis. Normally this is the vertical axis, though if the chart is inverted this is the horizontal axis. In case of multiple axes, the yAxis node is an array of configuration objects.
  final dynamic yAxis;

  /// (Highcharts) The Z axis or depth axis for 3D plots.
  final dynamic zAxis;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (accessibility != null) {
      json['accessibility'] = accessibility!.toJson();
    }
    if (annotations != null) {
      json['annotations'] = annotations!.map((e) => e.toJson()).toList();
    }
    if (boost != null) {
      json['boost'] = boost!.toJson();
    }
    if (caption != null) {
      json['caption'] = caption!.toJson();
    }
    if (chart != null) {
      json['chart'] = chart!.toJson();
    }
    if (colorAxis != null) {
      json['colorAxis'] = hcJsonValue(colorAxis);
    }
    if (colors != null) {
      json['colors'] = colors!.map((e) => hcJsonValue(e)).toList();
    }
    if (connectors != null) {
      json['connectors'] = connectors!.toJson();
    }
    if (credits != null) {
      json['credits'] = credits!.toJson();
    }
    if (data != null) {
      json['data'] = data!.toJson();
    }
    if (dataTable != null) {
      json['dataTable'] = hcJsonValue(dataTable);
    }
    if (defs != null) {
      json['defs'] = hcJsonValue(defs);
    }
    if (drilldown != null) {
      json['drilldown'] = drilldown!.toJson();
    }
    if (exporting != null) {
      json['exporting'] = exporting!.toJson();
    }
    if (global != null) {
      json['global'] = global!.toJson();
    }
    if (lang != null) {
      json['lang'] = lang!.toJson();
    }
    if (legend != null) {
      json['legend'] = legend!.toJson();
    }
    if (loading != null) {
      json['loading'] = loading!.toJson();
    }
    if (mapNavigation != null) {
      json['mapNavigation'] = mapNavigation!.toJson();
    }
    if (mapView != null) {
      json['mapView'] = mapView!.toJson();
    }
    if (navigation != null) {
      json['navigation'] = navigation!.toJson();
    }
    if (navigator != null) {
      json['navigator'] = navigator!.toJson();
    }
    if (noData != null) {
      json['noData'] = noData!.toJson();
    }
    if (palette != null) {
      json['palette'] = palette!.toJson();
    }
    if (pane != null) {
      json['pane'] = hcJsonValue(pane);
    }
    if (plotOptions != null) {
      json['plotOptions'] = plotOptions!.toJson();
    }
    if (rangeSelector != null) {
      json['rangeSelector'] = rangeSelector!.toJson();
    }
    if (responsive != null) {
      json['responsive'] = responsive!.toJson();
    }
    if (scrollbar != null) {
      json['scrollbar'] = scrollbar!.toJson();
    }
    if (series != null) {
      json['series'] = series!.map((e) => hcJsonValue(e)).toList();
    }
    if (sonification != null) {
      json['sonification'] = sonification!.toJson();
    }
    if (stockTools != null) {
      json['stockTools'] = stockTools!.toJson();
    }
    if (subtitle != null) {
      json['subtitle'] = subtitle!.toJson();
    }
    if (time != null) {
      json['time'] = time!.toJson();
    }
    if (title != null) {
      json['title'] = title!.toJson();
    }
    if (tooltip != null) {
      json['tooltip'] = tooltip!.toJson();
    }
    if (xAxis != null) {
      json['xAxis'] = hcJsonValue(xAxis);
    }
    if (yAxis != null) {
      json['yAxis'] = hcJsonValue(yAxis);
    }
    if (zAxis != null) {
      json['zAxis'] = hcJsonValue(zAxis);
    }
    return json;
  }
}

/// (Highcharts) A background item or an array of such for the pane. When used in `Highcharts.setOptions` for theming, the background must be a single item.
class HCPaneBackgroundOptions implements HCOption {
  const HCPaneBackgroundOptions({
    this.backgroundColor,
    this.borderColor,
    this.borderRadius,
    this.borderWidth,
    this.className,
    this.innerRadius,
    this.outerRadius,
    this.shape,
  });

  /// (Highcharts) The background color or gradient for the pane.
  final dynamic backgroundColor;

  /// (Highcharts) The pane background border color.
  final dynamic borderColor;

  /// (Highcharts) The specific border radius of the pane background when the shape is `arc`. Can be a number (pixels) or a percentage string. Defaults to the value of `pane.borderRadius`.
  final dynamic borderRadius;

  /// (Highcharts) The pixel border width of the pane background.
  final num? borderWidth;

  /// (Highcharts) An additional class name to apply to the pane background.
  final String? className;

  /// (Highcharts) The inner radius of the pane background. Can be either numeric (pixels) or a percentage string. Defaults to match the `pane.innerSize`.
  final dynamic innerRadius;

  /// (Highcharts) The outer radius of the circular pane background. Can be either numeric (pixels) or a percentage string.
  final dynamic outerRadius;

  /// (Highcharts) The shape of the pane background. When `solid`, the background is circular. When `arc`, the background extends only from the min to the max of the value axis.
  final String? shape;

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
      json['borderRadius'] = hcJsonValue(borderRadius);
    }
    if (borderWidth != null) {
      json['borderWidth'] = borderWidth;
    }
    if (className != null) {
      json['className'] = className;
    }
    if (innerRadius != null) {
      json['innerRadius'] = hcJsonValue(innerRadius);
    }
    if (outerRadius != null) {
      json['outerRadius'] = hcJsonValue(outerRadius);
    }
    if (shape != null) {
      json['shape'] = shape;
    }
    return json;
  }
}

/// (Highcharts) The pane serves as a container for axes and backgrounds for circular gauges and polar charts.
class HCPaneOptions implements HCOption {
  const HCPaneOptions({
    this.background,
    this.borderRadius,
    this.center,
    this.endAngle,
    this.innerSize,
    this.margin,
    this.size,
    this.startAngle,
    this.thickness,
  });

  /// (Highcharts) A background item or an array of such for the pane. When used in `Highcharts.setOptions` for theming, the background must be a single item.
  final dynamic background;

  /// (Highcharts) The border radius of the elements of the pane. This affects the pane background, plot bands and solid gauges, unless they have specific border radius settings.
  final dynamic borderRadius;

  /// (Highcharts) The center of a polar chart or angular gauge, given as an array of [x, y] positions. Positions can be given as integers that transform to pixels, or as percentages of the plot area size.
  final List<dynamic>? center;

  /// (Highcharts) The end angle of the polar X axis or gauge value axis, given in degrees where 0 is north. Defaults to startAngle
  final num? endAngle;

  /// (Highcharts) The inner size of the pane, either as a number defining pixels, or a percentage defining a percentage of the pane's size. Defaults to 0 on polar charts, 80% on gauges.
  final dynamic innerSize;

  /// (Highcharts) The margin between the pane and the plot area when auto-fitting the pane. This does not apply when an explicit `pane.size` is set. An array sets individual margins for the sides in the order [top, right, bottom, left].
  final dynamic margin;

  /// (Highcharts) The size of the pane, either as a number defining pixels, or a percentage defining a percentage of the available plot area (the smallest of the plot height or plot width).
  final dynamic size;

  /// (Highcharts) The start angle of the polar X axis or gauge axis, given in degrees where 0 is north. Defaults to 0 for polar charts, -135 for gauges.
  final num? startAngle;

  /// (Highcharts) The thickness of the pane in terms of pixels. This applies to the pane background, plot bands and solid gauges. Use this for a fixed width pane across different sizes, where `size` and `innerSize` are not practical.
  final num? thickness;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (background != null) {
      json['background'] = hcJsonValue(background);
    }
    if (borderRadius != null) {
      json['borderRadius'] = hcJsonValue(borderRadius);
    }
    if (center != null) {
      json['center'] = center!.map((e) => hcJsonValue(e)).toList();
    }
    if (endAngle != null) {
      json['endAngle'] = endAngle;
    }
    if (innerSize != null) {
      json['innerSize'] = hcJsonValue(innerSize);
    }
    if (margin != null) {
      json['margin'] = hcJsonValue(margin);
    }
    if (size != null) {
      json['size'] = hcJsonValue(size);
    }
    if (startAngle != null) {
      json['startAngle'] = startAngle;
    }
    if (thickness != null) {
      json['thickness'] = thickness;
    }
    return json;
  }
}

/// Holds a pattern definition.
class HCPatternObject implements HCOption {
  const HCPatternObject({
    this.animation,
    this.pattern,
    this.patternIndex,
  });

  /// Animation options for the image pattern loading.
  final dynamic animation;

  /// Pattern options
  final HCPatternOptionsObject? pattern;

  /// Optionally an index referencing which pattern to use. Highcharts adds 10 default patterns to the `Highcharts.patterns` array. Additional pattern definitions can be pushed to this array if desired. This option is an index into this array.
  final num? patternIndex;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (animation != null) {
      json['animation'] = hcJsonValue(animation);
    }
    if (pattern != null) {
      json['pattern'] = pattern!.toJson();
    }
    if (patternIndex != null) {
      json['patternIndex'] = patternIndex;
    }
    return json;
  }
}

/// Pattern options
class HCPatternOptionsObject implements HCOption {
  const HCPatternOptionsObject({
    this.anchorToPoint,
    this.aspectRatio,
    this.backgroundColor,
    this.color,
    this.height,
    this.id,
    this.image,
    this.opacity,
    this.path,
    this.patternTransform,
    this.width,
    this.x,
    this.y,
  });

  /// When true, the pattern is anchored to each individual point rather than using a global pattern grid. This ensures consistent pattern rendering across points of different sizes and improves accessibility for narrow columns. Defaults to false for backward compatibility.
  final bool? anchorToPoint;

  /// For automatically calculated width and height on images, it is possible to set an aspect ratio. The image will be zoomed to fill the bounding box, maintaining the aspect ratio defined.
  final num? aspectRatio;

  /// Background color for the pattern if a `path` is set (not images).
  final String? backgroundColor;

  /// Pattern color, used as default path stroke.
  final String? color;

  /// Analogous to pattern.width.
  final num? height;

  /// ID to assign to the pattern. This is automatically computed if not added, and identical patterns are reused. To refer to an existing pattern for a Highcharts color, use `color: "url(#pattern-id)"`.
  final String? id;

  /// URL to an image to use as the pattern.
  final String? image;

  /// Opacity of the pattern as a float value from 0 to 1.
  final num? opacity;

  /// Either an SVG path as string, or an object. As an object, supply the path string in the `path.d` property. Other supported properties are standard SVG attributes like `path.stroke` and `path.fill`. If a path is supplied for the pattern, the `image` property is ignored.
  final dynamic path;

  /// SVG `patternTransform` to apply to the entire pattern.
  final String? patternTransform;

  /// Width of the pattern. For images this is automatically set to the width of the element bounding box if not supplied. For non-image patterns the default is 32px. Note that automatic resizing of image patterns to fill a bounding box dynamically is only supported for patterns with an automatically calc
  final num? width;

  /// Horizontal offset of the pattern.
  final num? x;

  /// Vertical offset of the pattern.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (anchorToPoint != null) {
      json['anchorToPoint'] = anchorToPoint;
    }
    if (aspectRatio != null) {
      json['aspectRatio'] = aspectRatio;
    }
    if (backgroundColor != null) {
      json['backgroundColor'] = backgroundColor;
    }
    if (color != null) {
      json['color'] = color;
    }
    if (height != null) {
      json['height'] = height;
    }
    if (id != null) {
      json['id'] = id;
    }
    if (image != null) {
      json['image'] = image;
    }
    if (opacity != null) {
      json['opacity'] = opacity;
    }
    if (path != null) {
      json['path'] = hcJsonValue(path);
    }
    if (patternTransform != null) {
      json['patternTransform'] = patternTransform;
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

/// Defines the center position and the radius for a gradient.
class HCRadialGradientColorObject implements HCOption {
  const HCRadialGradientColorObject({
    this.cx,
    this.cy,
    this.r,
  });

  /// Center horizontal position relative to the shape. Float ranges 0-1.
  final num? cx;

  /// Center vertical position relative to the shape. Float ranges 0-1.
  final num? cy;

  /// Radius relative to the shape. Float ranges 0-1.
  final num? r;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (cx != null) {
      json['cx'] = cx;
    }
    if (cy != null) {
      json['cy'] = cy;
    }
    if (r != null) {
      json['r'] = r;
    }
    return json;
  }
}

/// An object of key-value pairs for SVG attributes. Attributes in Highcharts elements for the most parts correspond to SVG, but some are specific to Highcharts, like `zIndex`, `rotation`, `rotationOriginX`, `rotationOriginY`, `translateX`, `translateY`, `scaleX` and `scaleY`. SVG attributes containing
class HCSVGAttributes implements HCOption {
  const HCSVGAttributes({
    this.d,
    this.dx,
    this.dy,
    this.fill,
    this.inverted,
    this.matrix,
    this.rotation,
    this.rotationOriginX,
    this.rotationOriginY,
    this.scaleX,
    this.scaleY,
    this.stroke,
    this.style,
    this.translateX,
    this.translateY,
    this.zIndex,
  });

  final dynamic d;

  final num? dx;

  final num? dy;

  final dynamic fill;

  final bool? inverted;

  final List<num>? matrix;

  final num? rotation;

  final num? rotationOriginX;

  final num? rotationOriginY;

  final num? scaleX;

  final num? scaleY;

  final dynamic stroke;

  final dynamic style;

  final num? translateX;

  final num? translateY;

  final num? zIndex;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (d != null) {
      json['d'] = hcJsonValue(d);
    }
    if (dx != null) {
      json['dx'] = dx;
    }
    if (dy != null) {
      json['dy'] = dy;
    }
    if (fill != null) {
      json['fill'] = hcJsonValue(fill);
    }
    if (inverted != null) {
      json['inverted'] = inverted;
    }
    if (matrix != null) {
      json['matrix'] = matrix;
    }
    if (rotation != null) {
      json['rotation'] = rotation;
    }
    if (rotationOriginX != null) {
      json['rotationOriginX'] = rotationOriginX;
    }
    if (rotationOriginY != null) {
      json['rotationOriginY'] = rotationOriginY;
    }
    if (scaleX != null) {
      json['scaleX'] = scaleX;
    }
    if (scaleY != null) {
      json['scaleY'] = scaleY;
    }
    if (stroke != null) {
      json['stroke'] = hcJsonValue(stroke);
    }
    if (style != null) {
      json['style'] = hcJsonValue(style);
    }
    if (translateX != null) {
      json['translateX'] = translateX;
    }
    if (translateY != null) {
      json['translateY'] = translateY;
    }
    if (zIndex != null) {
      json['zIndex'] = zIndex;
    }
    return json;
  }
}

/// (Highstock, Gantt) The scrollbar is a means of panning over the X axis of a stock chart. Scrollbars can also be applied to other types of axes.
class HCScrollbarOptions implements HCOption {
  const HCScrollbarOptions({
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
    this.rifleColor,
    this.showFull,
    this.trackBackgroundColor,
    this.trackBorderColor,
    this.trackBorderRadius,
    this.trackBorderWidth,
    this.zIndex,
  });

  /// (Highstock, Gantt) The background color of the scrollbar itself.
  final dynamic barBackgroundColor;

  /// (Highstock, Gantt) The color of the scrollbar's border.
  final dynamic barBorderColor;

  /// (Highstock, Gantt) The border rounding radius of the bar.
  final num? barBorderRadius;

  /// (Highstock, Gantt) The width of the bar's border.
  final num? barBorderWidth;

  /// (Highstock, Gantt) The color of the small arrow inside the scrollbar buttons.
  final dynamic buttonArrowColor;

  /// (Highstock, Gantt) The color of scrollbar buttons.
  final dynamic buttonBackgroundColor;

  /// (Highstock, Gantt) The color of the border of the scrollbar buttons.
  final dynamic buttonBorderColor;

  /// (Highstock, Gantt) The corner radius of the scrollbar buttons.
  final num? buttonBorderRadius;

  /// (Highstock, Gantt) The border width of the scrollbar buttons.
  final num? buttonBorderWidth;

  /// (Highstock, Gantt) Enable or disable the buttons at the end of the scrollbar.
  final bool? buttonsEnabled;

  /// (Highstock, Gantt) Enable or disable the scrollbar.
  final bool? enabled;

  /// (Highstock, Gantt) The height of the scrollbar. If `buttonsEnabled` is true , the height also applies to the width of the scroll arrows so that they are always squares.
  final num? height;

  /// (Highstock, Gantt) Whether to redraw the main chart as the scrollbar or the navigator zoomed window is moved. Defaults to `true` for modern browsers and `false` for legacy IE browsers as well as mobile devices. This option works regardless of whether the scrollbar is enabled or not.
  final bool? liveRedraw;

  /// (Highstock, Gantt) The margin between the scrollbar and its axis when the scrollbar is applied directly to an axis, or the navigator in case that is enabled. Defaults to 10 for axis, 3 for navigator.
  final num? margin;

  /// (Highstock, Gantt) The minimum width of the scrollbar.
  final num? minWidth;

  /// (Highstock, Gantt) The color of the small rifles in the middle of the scrollbar.
  final dynamic rifleColor;

  /// (Highstock, Gantt) Whether to show or hide the scrollbar when the scrolled content is zoomed out to it full extent.
  final bool? showFull;

  /// (Highstock, Gantt) The color of the track background.
  final dynamic trackBackgroundColor;

  /// (Highstock, Gantt) The color of the border of the scrollbar track.
  final dynamic trackBorderColor;

  /// (Highstock, Gantt) The corner radius of the border of the scrollbar track.
  final num? trackBorderRadius;

  /// (Highstock, Gantt) The width of the border of the scrollbar track.
  final num? trackBorderWidth;

  /// (Highstock, Gantt) The z index of the scrollbar group.
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

/// The shadow options.
class HCShadowOptionsObject implements HCOption {
  const HCShadowOptionsObject({
    this.color,
    this.offsetX,
    this.offsetY,
    this.opacity,
    this.width,
  });

  /// The shadow color.
  final String? color;

  /// The horizontal offset from the element.
  final num? offsetX;

  /// The vertical offset from the element.
  final num? offsetY;

  /// The shadow opacity.
  final num? opacity;

  /// The shadow width or distance from the element.
  final num? width;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (color != null) {
      json['color'] = color;
    }
    if (offsetX != null) {
      json['offsetX'] = offsetX;
    }
    if (offsetY != null) {
      json['offsetY'] = offsetY;
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

/// (Highcharts, Highstock, Highmaps, Gantt) The chart's subtitle. This can be used both to display a subtitle below the main title, and to display random text anywhere in the chart. The subtitle can be updated after chart initialization through the `Chart.setTitle` method.
class HCSubtitleOptions implements HCOption {
  const HCSubtitleOptions({
    this.align,
    this.floating,
    this.style,
    this.text,
    this.useHTML,
    this.verticalAlign,
    this.x,
    this.y,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) The horizontal alignment of the subtitle. Can be one of "left", "center" and "right". Since v12, it defaults to `undefined`, meaning the actual alignment is inherited from the alignment of the main title.
  final String? align;

  /// (Highcharts, Highstock, Highmaps, Gantt) When the subtitle is floating, the plot area will not move to make space for it.
  final bool? floating;

  /// (Highcharts, Highstock, Highmaps, Gantt) CSS styles for the title.
  final dynamic style;

  /// (Highcharts, Highstock, Highmaps, Gantt) The subtitle of the chart.
  final String? text;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to use HTML to render the text.
  final bool? useHTML;

  /// (Highcharts, Highstock, Highmaps, Gantt) The vertical alignment of the title. Can be one of `"top"`, `"middle"` and `"bottom"`. When middle, the subtitle behaves as floating.
  final String? verticalAlign;

  /// (Highcharts, Highstock, Highmaps, Gantt) The x position of the subtitle relative to the alignment within `chart.spacingLeft` and `chart.spacingRight`.
  final num? x;

  /// (Highcharts, Highstock, Highmaps, Gantt) The y position of the subtitle relative to the alignment within `chart.spacingTop` and `chart.spacingBottom`. By default the subtitle is laid out below the title unless the title is floating.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (align != null) {
      json['align'] = align;
    }
    if (floating != null) {
      json['floating'] = floating;
    }
    if (style != null) {
      json['style'] = hcJsonValue(style);
    }
    if (text != null) {
      json['text'] = text;
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

/// (Highcharts, Highstock, Highmaps, Gantt) CSS styles for the title.
class HCSubtitleStyleOptions implements HCOption {
  const HCSubtitleStyleOptions({
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

/// (Highcharts, Highstock, Highmaps, Gantt) Time options that can apply globally or to individual charts. These settings affect how `datetime` axes are laid out, how tooltips are formatted, how series pointIntervalUnit works and how the Highcharts Stock range selector handles time.
class HCTimeOptions implements HCOption {
  const HCTimeOptions({
    this.date,
    this.timezone,
    this.timezoneOffset,
    this.useUTC,
  });

  /// (Highcharts, Highstock, Gantt) A custom `Date` class for advanced date handling. For example, JDate can be hooked in to handle Jalali dates.
  final dynamic date;

  /// (Highcharts, Highstock, Gantt) A named time zone. Supported time zone names rely on the browser implementations, as described in the mdn docs. If the given time zone is not recognized by the browser, Highcharts provides a warning and falls back to returning a 0 offset, corresponding to the UTC time
  final String? timezone;

  /// (Highcharts, Highstock, Gantt) The timezone offset in minutes. Positive values are west, negative values are east of UTC, as in the ECMAScript getTimezoneOffset method. Use this to display UTC based data in a predefined time zone.
  final num? timezoneOffset;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to use UTC time for axis scaling, tickmark placement and time display in `Highcharts.dateFormat`. Advantages of using UTC is that the time displays equally regardless of the user agent's time zone settings. Local time can be used when the data is load
  final String? useUTC;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (date != null) {
      json['Date'] = hcJsonValue(date);
    }
    if (timezone != null) {
      json['timezone'] = timezone;
    }
    if (timezoneOffset != null) {
      json['timezoneOffset'] = timezoneOffset;
    }
    if (useUTC != null) {
      json['useUTC'] = useUTC;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Options for the series data labels, appearing next to each data point.
class HCTimelineDataLabelsOptionsObject implements HCOption {
  const HCTimelineDataLabelsOptionsObject({
    this.align,
    this.alignTo,
    this.allowOverlap,
    this.alternate,
    this.animation,
    this.backgroundColor,
    this.borderColor,
    this.borderRadius,
    this.borderWidth,
    this.className,
    this.color,
    this.connectorColor,
    this.connectorWidth,
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
    this.width,
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

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to position data labels alternately. For example, if distance is set equal to `100`, then data labels will be positioned alternately (on both sides of the point) at a distance of 100px.
  final bool? alternate;

  /// (Highcharts, Highstock, Highmaps, Gantt) Enable or disable the initial animation when a series is displayed for the `dataLabels`. The animation can also be set as a configuration object. Please note that this option only applies to the initial animation.
  final dynamic animation;

  /// (Highcharts, Highstock, Highmaps, Gantt) The background color or gradient for the data label. In addition to regular colors, there are two special setting for this option:
  final String? backgroundColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) The border color for the data label. Setting it to `auto` will use the point's color. Defaults to `undefined`.
  final String? borderColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) The border radius in pixels for the data label.
  final num? borderRadius;

  /// (Highcharts, Highstock, Highmaps, Gantt) The border width in pixels for the data label.
  final num? borderWidth;

  /// (Highcharts, Highstock, Highmaps, Gantt) A class name for the data label. Particularly in styled mode, this can be used to give each series' or point's data label unique styling. In addition to this option, a default color class name is added so that we can give the labels a contrast text shadow.
  final String? className;

  /// (Highcharts, Highstock, Highmaps, Gantt) This options is deprecated. Use style.color instead.
  final String? color;

  /// (Highcharts, Highstock, Highmaps, Gantt) The color of the line connecting the data label to the point. The default color is the same as the point's color.
  final dynamic connectorColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) The width of the line connecting the data label to the point.
  final num? connectorWidth;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to hide data labels that are outside the plot area. By default, the data label is moved inside the plot area according to the overflow option.
  final bool? crop;

  /// (Highcharts, Highstock, Gantt) Whether to defer displaying the data labels until the initial series animation has finished. Setting to `false` renders the data label immediately. If set to `true` inherits the defer time set in plotOptions.series.animation.
  final bool? defer;

  /// (Highcharts, Highstock, Gantt) A pixel value defining the distance between the data label and the point. Negative numbers puts the label on top of the point in a non-inverted chart. Defaults to 100 for horizontal and 20 for vertical timeline (`chart.inverted: true`).
  final String? distance;

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
  final num? padding;

  /// (Highcharts, Highstock, Highmaps, Gantt) Aligns data labels relative to points. If `center` alignment is not possible, it defaults to `right`.
  final String? position;

  /// (Highcharts, Highstock, Highmaps, Gantt) Text rotation in degrees. Note that due to a more complex structure, backgrounds, borders and padding will be lost on a rotated data label.
  final num? rotation;

  /// (Highcharts, Highstock, Highmaps, Gantt) Shadow options for the data label.
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

  final num? width;

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
    if (alternate != null) {
      json['alternate'] = alternate;
    }
    if (animation != null) {
      json['animation'] = hcJsonValue(animation);
    }
    if (backgroundColor != null) {
      json['backgroundColor'] = backgroundColor;
    }
    if (borderColor != null) {
      json['borderColor'] = borderColor;
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
      json['color'] = color;
    }
    if (connectorColor != null) {
      json['connectorColor'] = hcJsonValue(connectorColor);
    }
    if (connectorWidth != null) {
      json['connectorWidth'] = connectorWidth;
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
    if (width != null) {
      json['width'] = width;
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

/// (Highcharts, Highstock, Highmaps, Gantt) The chart's main title.
class HCTitleOptions implements HCOption {
  const HCTitleOptions({
    this.align,
    this.floating,
    this.margin,
    this.minScale,
    this.style,
    this.text,
    this.useHTML,
    this.verticalAlign,
    this.x,
    this.y,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) The horizontal alignment of the title. Can be one of "left", "center" and "right".
  final String? align;

  /// (Highcharts, Highstock, Highmaps, Gantt) When the title is floating, the plot area will not move to make space for it.
  final bool? floating;

  /// (Highcharts, Highstock, Highmaps, Gantt) The margin between the title and the plot area, or if a subtitle is present, the margin between the subtitle and the plot area.
  final num? margin;

  /// (Highcharts, Highstock, Highmaps, Gantt) When the title is too wide to fit in the chart, the default behavior is to scale it down to fit, or apply word wrap if it is scaled down to `minScale` and still doesn't fit.
  final num? minScale;

  /// (Highcharts, Highstock, Highmaps, Gantt) CSS styles for the title. Use this for font styling, but use `align`, `x` and `y` for text alignment.
  final dynamic style;

  /// (Highcharts, Highstock, Highmaps, Gantt) The title of the chart. To disable the title, set the `text` to `undefined`.
  final String? text;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to use HTML to render the text.
  final bool? useHTML;

  /// (Highcharts, Highstock, Highmaps, Gantt) The vertical alignment of the title. Can be one of `"top"`, `"middle"` and `"bottom"`. When a value is given, the title behaves as if floating were `true`.
  final String? verticalAlign;

  /// (Highcharts, Highstock, Highmaps, Gantt) The x position of the title relative to the alignment within `chart.spacingLeft` and `chart.spacingRight`.
  final num? x;

  /// (Highcharts, Highstock, Highmaps, Gantt) The y position of the title relative to the alignment within chart.spacingTop and chart.spacingBottom. By default it depends on the font size.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (align != null) {
      json['align'] = align;
    }
    if (floating != null) {
      json['floating'] = floating;
    }
    if (margin != null) {
      json['margin'] = margin;
    }
    if (minScale != null) {
      json['minScale'] = minScale;
    }
    if (style != null) {
      json['style'] = hcJsonValue(style);
    }
    if (text != null) {
      json['text'] = text;
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

/// (Highcharts, Highstock, Highmaps, Gantt) CSS styles for the title. Use this for font styling, but use `align`, `x` and `y` for text alignment.
class HCTitleStyleOptions implements HCOption {
  const HCTitleStyleOptions({
    this.color,
    this.fontWeight,
  });

  final dynamic color;

  final String? fontWeight;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (color != null) {
      json['color'] = hcJsonValue(color);
    }
    if (fontWeight != null) {
      json['fontWeight'] = fontWeight;
    }
    return json;
  }
}
