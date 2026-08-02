part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Event listeners for the chart.
class HCChartEventsOptions implements HCOption {
  const HCChartEventsOptions();

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) General options for the chart.
class HCChartOptions implements HCOption {
  const HCChartOptions({
    this.alignThresholds,
    this.alignTicks,
    this.allowMutatingData,
    this.animation,
    this.axisLayoutRuns,
    this.backgroundColor,
    this.borderColor,
    this.borderRadius,
    this.borderWidth,
    this.className,
    this.colorCount,
    this.displayErrors,
    this.events,
    this.height,
    this.ignoreHiddenSeries,
    this.inverted,
    this.map,
    this.mapTransforms,
    this.margin,
    this.marginBottom,
    this.marginLeft,
    this.marginRight,
    this.marginTop,
    this.options3d,
    this.panKey,
    this.panning,
    this.parallelAxes,
    this.parallelCoordinates,
    this.pinchType,
    this.plotBackgroundColor,
    this.plotBackgroundImage,
    this.plotBorderColor,
    this.plotBorderRadius,
    this.plotBorderWidth,
    this.plotShadow,
    this.polar,
    this.proj4,
    this.reflow,
    this.renderTo,
    this.resetZoomButton,
    this.scrollablePlotArea,
    this.selectionMarkerFill,
    this.seriesGroupShadow,
    this.shadow,
    this.showAxes,
    this.spacing,
    this.spacingBottom,
    this.spacingLeft,
    this.spacingRight,
    this.spacingTop,
    this.style,
    this.styledMode,
    this.type,
    this.width,
    this.zoomBySingleTouch,
    this.zooming,
    this.zoomKey,
    this.zoomType,
  });

  /// (Highcharts, Highstock, Gantt) When using multiple axes, align the thresholds. When this is true, other ticks will also be aligned.
  final bool? alignThresholds;

  /// (Highcharts, Highstock, Gantt) When using multiple axes, the ticks of two or more opposite axes will automatically be aligned by adding ticks to the axis or axes with the least ticks, as if `tickAmount` were specified.
  final bool? alignTicks;

  /// (Highcharts, Highstock, Highmaps, Gantt) By default, (because of memory and performance reasons) the chart does not copy the data but keeps it as a reference. In some cases, this might result in mutating the original data source. In order to prevent that, set that property to false. Please note that
  final bool? allowMutatingData;

  /// (Highcharts, Highstock, Highmaps, Gantt) Set the overall animation for all chart updating. Animation can be disabled throughout the chart by setting it to false here. It can be overridden for each individual API method as a function parameter. The only animation not affected by this option is the in
  final dynamic animation;

  /// (Highcharts, Highstock, Highmaps, Gantt) When a chart with an x and a y-axis is rendered, we first pre-render the labels of both in order to measure them. Then, if either of the axis labels take up so much space that it significantly affects the length of the other axis, we repeat the process.
  final num? axisLayoutRuns;

  /// (Highcharts, Highstock, Highmaps, Gantt) The background color of the outer chart area.
  final dynamic backgroundColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) The color of the outer chart border.
  final dynamic borderColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) The corner radius of the outer chart border.
  final num? borderRadius;

  /// (Highcharts, Highstock, Highmaps, Gantt) The pixel width of the outer chart border.
  final num? borderWidth;

  /// (Highcharts, Highstock, Highmaps, Gantt) A CSS class name to apply to the charts container `div`, allowing unique CSS styling for each chart.
  final String? className;

  /// (Highcharts, Highstock, Highmaps, Gantt) In styled mode, this sets how many colors the class names should rotate between. With ten colors, series (or points) are given class names like `highcharts-color-0`, `highcharts-color-1` [...] `highcharts-color-9`. The equivalent in non-styled mode is to set
  final num? colorCount;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to display errors on the chart. When `false`, the errors will be shown only in the console.
  final bool? displayErrors;

  /// (Highcharts, Highstock, Highmaps, Gantt) Event listeners for the chart.
  final HCChartEventsOptions? events;

  /// (Highcharts, Highstock, Highmaps, Gantt) An explicit height for the chart. If a _number_, the height is given in pixels. If given a _percentage string_ (for example `'56%'`), the height is given as the percentage of the actual chart width. This allows for preserving the aspect ratio across responsiv
  final dynamic height;

  /// (Highcharts, Highstock, Gantt) If true, the axes will scale to the remaining visible series once one series is hidden. If false, hiding and showing a series will not affect the axes or the other series. For stacks, once one series within the stack is hidden, the rest of the stack will close in aroun
  final bool? ignoreHiddenSeries;

  /// (Highcharts, Highstock, Gantt) Whether to invert the axes so that the x axis is vertical and y axis is horizontal. When `true`, the x axis is reversed by default.
  final bool? inverted;

  /// (Highmaps) Default `mapData` for all series, in terms of a GeoJSON or TopoJSON object. If set to a string, it functions as an index into the `Highcharts.maps` array.
  final dynamic map;

  /// (Highmaps) Set lat/lon transformation definitions for the chart. If not defined, these are extracted from the map data.
  final dynamic mapTransforms;

  /// (Highcharts, Highstock, Highmaps, Gantt) The margin between the outer edge of the chart and the plot area. The numbers in the array designate top, right, bottom and left respectively. Use the options `marginTop`, `marginRight`, `marginBottom` and `marginLeft` for shorthand setting of one option.
  final dynamic margin;

  /// (Highcharts, Highstock, Highmaps, Gantt) The margin between the bottom outer edge of the chart and the plot area. Use this to set a fixed pixel value for the margin as opposed to the default dynamic margin. See also `spacingBottom`.
  final num? marginBottom;

  /// (Highcharts, Highstock, Highmaps, Gantt) The margin between the left outer edge of the chart and the plot area. Use this to set a fixed pixel value for the margin as opposed to the default dynamic margin. See also `spacingLeft`.
  final num? marginLeft;

  /// (Highcharts, Highstock, Highmaps, Gantt) The margin between the right outer edge of the chart and the plot area. Use this to set a fixed pixel value for the margin as opposed to the default dynamic margin. See also `spacingRight`.
  final num? marginRight;

  /// (Highcharts, Highstock, Highmaps, Gantt) The margin between the top outer edge of the chart and the plot area. Use this to set a fixed pixel value for the margin as opposed to the default dynamic margin. See also `spacingTop`.
  final num? marginTop;

  /// (Highcharts) Options to render charts in 3 dimensions. This feature requires `highcharts-3d.js`, found in the download package or online at code.highcharts.com/highcharts-3d.js.
  final HCChart3dOptions? options3d;

  /// (Highcharts, Gantt) Allows setting a key to switch between zooming and panning. Can be one of `alt`, `ctrl`, `meta` (the command key on Mac and Windows key on Windows) or `shift`. The keys are mapped directly to the key properties of the click event argument (`event.altKey`, `event.ctrlKey`, `event.
  final String? panKey;

  /// (Highcharts, Highstock, Highmaps, Gantt) Allow panning in a chart. Best used with panKey to combine zooming and panning.
  final HCChartPanningOptions? panning;

  /// (Highcharts) Common options for all yAxes rendered in a parallel coordinates plot. This feature requires `modules/parallel-coordinates.js`.
  final dynamic parallelAxes;

  /// (Highcharts) Flag to render charts as a parallel coordinates plot. In a parallel coordinates plot (||-coords) by default all required yAxes are generated and the legend is disabled. This feature requires `modules/parallel-coordinates.js`.
  final bool? parallelCoordinates;

  /// (Highcharts, Highstock, Gantt) Deprecated. Use chart.zooming.pinchType instead.
  final String? pinchType;

  /// (Highcharts, Highstock, Highmaps, Gantt) The background color or gradient for the plot area. If not set, the plot area will have the background color set to `'none'`.
  final dynamic plotBackgroundColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) The URL for an image to use as the plot background. To set an image as the background for the entire chart, set a CSS background image to the container element. Note that for the image to be applied to exported charts, its URL needs to be accessible by the ex
  final String? plotBackgroundImage;

  /// (Highcharts, Highstock, Highmaps, Gantt) The color of the inner chart or plot area border.
  final dynamic plotBorderColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) The corner radius of the plot area border in pixels. Also applies clip to the plot area background and data inside, like columns in a column series or fill in an area series.
  final num? plotBorderRadius;

  /// (Highcharts, Highstock, Highmaps, Gantt) The pixel width of the plot area border.
  final num? plotBorderWidth;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to apply a drop shadow to the plot area. Requires that plotBackgroundColor be set. The shadow can be an object configuration containing `color`, `offsetX`, `offsetY`, `opacity` and `width`.
  final dynamic plotShadow;

  /// (Highcharts) When true, cartesian charts like line, spline, area and column are transformed into the polar coordinate system. This produces _polar charts_, also known as _radar charts_.
  final bool? polar;

  /// (Highmaps) Allows to manually load the proj4 library from Highcharts options instead of the `window`. In case of loading the library from a `script` tag, this option is not needed, it will be loaded from there by default.
  final dynamic proj4;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to reflow the chart to fit the width of the container div on resizing the window.
  final bool? reflow;

  /// (Highcharts, Highstock, Highmaps, Gantt) The HTML element where the chart will be rendered. If it is a string, the element by that id is used. The HTML element can also be passed by direct reference, or as the first argument of the chart constructor, in which case the option is not needed.
  final dynamic renderTo;

  /// (Highcharts, Highstock, Highmaps, Gantt) Deprecated. Use chart.zooming.resetButton instead.
  final HCChartResetZoomButtonOptions? resetZoomButton;

  /// (Highcharts, Gantt) Options for a scrollable plot area. This feature provides a minimum size for the plot area of the chart. If the size gets smaller than this, typically on mobile devices, a native browser scrollbar is presented. This scrollbar provides smooth scrolling for the contents of the plot
  final HCChartScrollablePlotAreaOptions? scrollablePlotArea;

  /// (Highcharts, Highstock, Highmaps, Gantt) The background color of the marker square when selecting (zooming in on) an area of the chart.
  final dynamic selectionMarkerFill;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to apply a drop shadow to the global series group. This causes all the series to have the same shadow. Contrary to the `series.shadow` option, this prevents items from casting shadows on each other, like for others series in a stack. The shadow can be
  final dynamic seriesGroupShadow;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to apply a drop shadow to the outer chart area. Requires that backgroundColor be set. The shadow can be an object configuration containing `color`, `offsetX`, `offsetY`, `opacity` and `width`.
  final dynamic shadow;

  /// (Highcharts, Gantt) Whether to show the axes initially. This only applies to empty charts where series are added dynamically, as axes are automatically added to cartesian series.
  final bool? showAxes;

  /// (Highcharts, Highstock, Highmaps, Gantt) The distance between the outer edge of the chart and the content, like title or legend, or axis title and labels if present. The numbers in the array designate top, right, bottom and left respectively. Use the options spacingTop, spacingRight, spacingBottom a
  final List<num>? spacing;

  /// (Highcharts, Highstock, Highmaps, Gantt) The space between the bottom edge of the chart and the content (plot area, axis title and labels, title, subtitle or legend in top position).
  final num? spacingBottom;

  /// (Highcharts, Highstock, Highmaps, Gantt) The space between the left edge of the chart and the content (plot area, axis title and labels, title, subtitle or legend in top position).
  final num? spacingLeft;

  /// (Highcharts, Highstock, Highmaps, Gantt) The space between the right edge of the chart and the content (plot area, axis title and labels, title, subtitle or legend in top position).
  final num? spacingRight;

  /// (Highcharts, Highstock, Highmaps, Gantt) The space between the top edge of the chart and the content (plot area, axis title and labels, title, subtitle or legend in top position).
  final num? spacingTop;

  /// (Highcharts, Highstock, Highmaps, Gantt) Additional CSS styles to apply inline to the container `div` and the root SVG.
  final HCCSSObject? style;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to apply styled mode. When in styled mode, no presentational attributes or CSS are applied to the chart SVG. Instead, CSS rules are required to style the chart. The default style sheet is available from `https://code.highcharts.com/css/highcharts.css`
  final bool? styledMode;

  /// (Highcharts, Highstock, Highmaps, Gantt) The default series type for the chart. Can be any of the chart types listed under plotOptions and series or can be a series provided by an additional module.
  final String? type;

  /// (Highcharts, Highstock, Highmaps, Gantt) An explicit width for the chart. By default (when `null`) the width is calculated from the offset width of the containing element.
  final dynamic width;

  /// (Highcharts, Highstock, Gantt) Deprecated. Use chart.zooming.singleTouch instead.
  final bool? zoomBySingleTouch;

  /// (Highcharts, Highstock, Highmaps, Gantt) Chart zooming options.
  final HCChartZoomingOptions? zooming;

  /// (Highcharts, Highstock, Highmaps, Gantt) Deprecated. Use chart.zooming.key instead.
  final String? zoomKey;

  /// (Highcharts, Highstock, Highmaps, Gantt) Deprecated. Use chart.zooming.type instead.
  final String? zoomType;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (alignThresholds != null) {
      json['alignThresholds'] = alignThresholds;
    }
    if (alignTicks != null) {
      json['alignTicks'] = alignTicks;
    }
    if (allowMutatingData != null) {
      json['allowMutatingData'] = allowMutatingData;
    }
    if (animation != null) {
      json['animation'] = hcJsonValue(animation);
    }
    if (axisLayoutRuns != null) {
      json['axisLayoutRuns'] = axisLayoutRuns;
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
    if (colorCount != null) {
      json['colorCount'] = colorCount;
    }
    if (displayErrors != null) {
      json['displayErrors'] = displayErrors;
    }
    if (events != null) {
      json['events'] = events!.toJson();
    }
    if (height != null) {
      json['height'] = hcJsonValue(height);
    }
    if (ignoreHiddenSeries != null) {
      json['ignoreHiddenSeries'] = ignoreHiddenSeries;
    }
    if (inverted != null) {
      json['inverted'] = inverted;
    }
    if (map != null) {
      json['map'] = hcJsonValue(map);
    }
    if (mapTransforms != null) {
      json['mapTransforms'] = hcJsonValue(mapTransforms);
    }
    if (margin != null) {
      json['margin'] = hcJsonValue(margin);
    }
    if (marginBottom != null) {
      json['marginBottom'] = marginBottom;
    }
    if (marginLeft != null) {
      json['marginLeft'] = marginLeft;
    }
    if (marginRight != null) {
      json['marginRight'] = marginRight;
    }
    if (marginTop != null) {
      json['marginTop'] = marginTop;
    }
    if (options3d != null) {
      json['options3d'] = options3d!.toJson();
    }
    if (panKey != null) {
      json['panKey'] = panKey;
    }
    if (panning != null) {
      json['panning'] = panning!.toJson();
    }
    if (parallelAxes != null) {
      json['parallelAxes'] = hcJsonValue(parallelAxes);
    }
    if (parallelCoordinates != null) {
      json['parallelCoordinates'] = parallelCoordinates;
    }
    if (pinchType != null) {
      json['pinchType'] = pinchType;
    }
    if (plotBackgroundColor != null) {
      json['plotBackgroundColor'] = hcJsonValue(plotBackgroundColor);
    }
    if (plotBackgroundImage != null) {
      json['plotBackgroundImage'] = plotBackgroundImage;
    }
    if (plotBorderColor != null) {
      json['plotBorderColor'] = hcJsonValue(plotBorderColor);
    }
    if (plotBorderRadius != null) {
      json['plotBorderRadius'] = plotBorderRadius;
    }
    if (plotBorderWidth != null) {
      json['plotBorderWidth'] = plotBorderWidth;
    }
    if (plotShadow != null) {
      json['plotShadow'] = hcJsonValue(plotShadow);
    }
    if (polar != null) {
      json['polar'] = polar;
    }
    if (proj4 != null) {
      json['proj4'] = hcJsonValue(proj4);
    }
    if (reflow != null) {
      json['reflow'] = reflow;
    }
    if (renderTo != null) {
      json['renderTo'] = hcJsonValue(renderTo);
    }
    if (resetZoomButton != null) {
      json['resetZoomButton'] = resetZoomButton!.toJson();
    }
    if (scrollablePlotArea != null) {
      json['scrollablePlotArea'] = scrollablePlotArea!.toJson();
    }
    if (selectionMarkerFill != null) {
      json['selectionMarkerFill'] = hcJsonValue(selectionMarkerFill);
    }
    if (seriesGroupShadow != null) {
      json['seriesGroupShadow'] = hcJsonValue(seriesGroupShadow);
    }
    if (shadow != null) {
      json['shadow'] = hcJsonValue(shadow);
    }
    if (showAxes != null) {
      json['showAxes'] = showAxes;
    }
    if (spacing != null) {
      json['spacing'] = spacing;
    }
    if (spacingBottom != null) {
      json['spacingBottom'] = spacingBottom;
    }
    if (spacingLeft != null) {
      json['spacingLeft'] = spacingLeft;
    }
    if (spacingRight != null) {
      json['spacingRight'] = spacingRight;
    }
    if (spacingTop != null) {
      json['spacingTop'] = spacingTop;
    }
    if (style != null) {
      json['style'] = style!.toJson();
    }
    if (styledMode != null) {
      json['styledMode'] = styledMode;
    }
    if (type != null) {
      json['type'] = type;
    }
    if (width != null) {
      json['width'] = hcJsonValue(width);
    }
    if (zoomBySingleTouch != null) {
      json['zoomBySingleTouch'] = zoomBySingleTouch;
    }
    if (zooming != null) {
      json['zooming'] = zooming!.toJson();
    }
    if (zoomKey != null) {
      json['zoomKey'] = zoomKey;
    }
    if (zoomType != null) {
      json['zoomType'] = zoomType;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Allow panning in a chart. Best used with panKey to combine zooming and panning.
class HCChartPanningOptions implements HCOption {
  const HCChartPanningOptions({
    this.enabled,
    this.type,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Enable or disable chart panning.
  final bool? enabled;

  /// (Highcharts, Highstock, Gantt) Decides in what dimensions the user can pan the chart. Can be one of `x`, `y`, or `xy`.
  final String? type;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    if (type != null) {
      json['type'] = type;
    }
    return json;
  }
}

/// (Highcharts) Event handlers for the axis.
class HCChartParallelAxesEventsOptions implements HCOption {
  const HCChartParallelAxesEventsOptions();

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    return json;
  }
}

/// (Highcharts) The axis labels show the number or category for each tick.
class HCChartParallelAxesLabelsOptions implements HCOption {
  const HCChartParallelAxesLabelsOptions({
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

  /// (Highcharts) What part of the string the given position is anchored to. Can be one of `"left"`, `"center"` or `"right"`. The exact position also depends on the `labels.x` setting.
  final String? align;

  /// (Highcharts) Whether to allow the axis labels to overlap. When false, overlapping labels are hidden.
  final bool? allowOverlap;

  /// (Highcharts, Highstock, Gantt) For horizontal axes, the allowed degrees of label rotation to prevent overlapping labels. If there is enough space, labels are not rotated. As the chart gets narrower, it will start rotating the labels -45 degrees, then remove every second label and try again with rota
  final List<num>? autoRotation;

  /// (Highcharts, Gantt) When each category width is more than this many pixels, we don't apply auto rotation. Instead, we lay out the axis label with word wrap. A lower limit makes sense when the label contains multiple short words that don't extend the available horizontal space for each label.
  final num? autoRotationLimit;

  /// (Highcharts) The label's pixel distance from the perimeter of the plot area. On cartesian charts, this is overridden if the `labels.y` setting is set.
  final dynamic distance;

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

  /// (Highcharts) The x position offset of all labels relative to the tick positions on the axis. Defaults to -15 for left axis, 15 for right axis.
  final num? x;

  /// (Highcharts) The y position offset of all labels relative to the tick positions on the axis. For polar and radial axis consider the use of the distance option.
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
      json['distance'] = hcJsonValue(distance);
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
class HCChartParallelAxesLabelsStyleOptions implements HCOption {
  const HCChartParallelAxesLabelsStyleOptions({
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

/// (Highcharts) Common options for all yAxes rendered in a parallel coordinates plot. This feature requires `modules/parallel-coordinates.js`.
class HCChartParallelAxesOptions implements HCOption {
  const HCChartParallelAxesOptions({
    this.accessibility,
    this.alignTicks,
    this.allowDecimals,
    this.categories,
    this.ceiling,
    this.className,
    this.crosshair,
    this.crossing,
    this.dateTimeLabelFormats,
    this.endOnTick,
    this.events,
    this.floor,
    this.gridZIndex,
    this.height,
    this.labels,
    this.left,
    this.lineColor,
    this.lineWidth,
    this.linkedTo,
    this.margin,
    this.max,
    this.maxPadding,
    this.min,
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
    this.reversed,
    this.reversedStacks,
    this.showEmpty,
    this.showFirstLabel,
    this.showLastLabel,
    this.softMax,
    this.softMin,
    this.stackShadow,
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

  /// (Highcharts) Accessibility options for an axis. Requires the accessibility module.
  final HCAxisAccessibilityOptionsObject? accessibility;

  /// (Highcharts, Highstock, Gantt) When using multiple axis, the ticks of two or more opposite axes will automatically be aligned by adding ticks to the axis or axes with the least ticks, as if `tickAmount` were specified.
  final bool? alignTicks;

  /// (Highcharts) Whether to allow decimals in this axis' ticks. When counting integers, like persons or hits on a web page, decimals should be avoided in the labels. By default, decimals are allowed on small scale axes.
  final bool? allowDecimals;

  /// (Highcharts, Gantt) If categories are present for the xAxis, names are used instead of numbers for that axis.
  final List<String>? categories;

  /// (Highcharts, Highstock, Gantt) The highest allowed value for automatically computed axis extremes.
  final num? ceiling;

  /// (Highcharts) A class name that opens for styling the axis by CSS, especially in Highcharts styled mode. The class name is applied to group elements for the grid, axis elements and labels.
  final String? className;

  /// (Highcharts) Configure a crosshair that follows either the mouse pointer or the hovered point.
  final dynamic crosshair;

  /// (Highcharts) The value on a perpendicular axis where this axis should cross. This is typically used on mathematical plots where the axes cross at 0. When `crossing` is set, space will not be reserved at the sides of the chart for axis labels and title, so those may be clipped. In this case it is bet
  final num? crossing;

  /// (Highcharts, Highstock, Gantt) For a datetime axis, the scale will automatically adjust to the appropriate unit. This member gives the default representations used for each unit. For easier data interpretation, `hour`, `day`, `month` and `year` units can be used and formatted as boundary tick values
  final HCAxisDateTimeLabelFormatsOptions? dateTimeLabelFormats;

  /// (Highcharts) Whether to force the axis to end on a tick. Use this option with the `maxPadding` option to control the axis end.
  final bool? endOnTick;

  /// (Highcharts) Event handlers for the axis.
  final HCChartParallelAxesEventsOptions? events;

  /// (Highcharts, Highstock, Gantt) The lowest allowed value for automatically computed axis extremes.
  final num? floor;

  /// (Highcharts, Highstock, Gantt) The Z index of the grid lines.
  final num? gridZIndex;

  /// (Highcharts, Highstock) The height of the Y axis. If it's a number, it is interpreted as pixels.
  final dynamic height;

  /// (Highcharts) The axis labels show the number or category for each tick.
  final HCChartParallelAxesLabelsOptions? labels;

  /// (Highcharts, Highstock) The left position as the horizontal axis. If it's a number, it is interpreted as pixel position relative to the chart.
  final dynamic left;

  /// (Highcharts) The color of the line marking the axis itself.
  final dynamic lineColor;

  /// (Highcharts) The width of the line marking the axis itself.
  final num? lineWidth;

  /// (Highcharts, Highstock, Gantt) Index of another axis that this axis is linked to. When an axis is linked to a master axis, it will take the same extremes as the master, but as assigned by min or max or by setExtremes. It can be used to show additional info, or to ease reading the chart by duplicatin
  final num? linkedTo;

  /// (Highcharts) If there are multiple axes on the same side of the chart, the pixel margin between the axes. Defaults to 0 on vertical axes, 15 on horizontal axes.
  final num? margin;

  /// (Highcharts) The maximum value of the axis. If `undefined`, the max value is automatically calculated.
  final dynamic max;

  /// (Highcharts, Highstock, Gantt) Padding of the max value relative to the length of the axis. A padding of 0.05 will make a 100px axis 5px longer. This is useful when you don't want the highest data value to appear on the edge of the plot area. When the axis' `max` option is set or a max extreme is se
  final num? maxPadding;

  /// (Highcharts) The minimum value of the axis. If `undefined`, the min value is automatically calculated.
  final dynamic min;

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

  /// (Highcharts, Highstock, Gantt) Padding of the min value relative to the length of the axis. A padding of 0.05 will make a 100px axis 5px longer. This is useful when you don't want the lowest data value to appear on the edge of the plot area. When the axis' `min` option is set or a max extreme is set
  final num? minPadding;

  /// (Highcharts) The minimum range to display on this axis. The entire axis will not be allowed to span over a smaller interval than this. For example, for a datetime axis the main unit is milliseconds. If minRange is set to 3600000, you can't zoom in more than to one hour.
  final num? minRange;

  /// (Highcharts) The minimum tick interval allowed in axis values. For example on zooming in on an axis with daily data, this can be used to prevent the axis from showing hours. Defaults to the closest distance between two points on the axis.
  final num? minTickInterval;

  /// (Highcharts) The distance in pixels from the plot area to the axis line. A positive offset moves the axis with its line, labels and ticks away from the plot area. This is typically used when two or more axes are displayed on the same side of the plot. With multiple axes the offset is dynamically adj
  final num? offset;

  /// (Highstock, Highcharts, Gantt) Whether to display the axis on the opposite side of the normal. The normal is on the left side for vertical axes and bottom for horizontal, so the opposite sides will be right and top respectively. This is typically used with dual or multiple axes.
  final bool? opposite;

  /// (Highcharts) Refers to the index in the panes array. Used for circular gauges and polar charts. When the option is not set then first pane will be used.
  final num? pane;

  /// (Highcharts) Whether to pan axis. If `chart.panning` is enabled, the option allows to disable panning on an individual axis.
  final bool? panningEnabled;

  /// (Highcharts) Whether to reverse the axis so that the highest number is closest to the origin.
  final bool? reversed;

  /// (Highcharts, Highstock) If `true`, the first series in a stack will be drawn on top in a positive, non-reversed Y axis. If `false`, the first series is in the base of the stack.
  final bool? reversedStacks;

  /// (Highcharts) Whether to show the axis line and title when the axis has no data.
  final bool? showEmpty;

  /// (Highcharts) Whether to show the first tick label.
  final bool? showFirstLabel;

  /// (Highcharts, Highstock, Gantt) Whether to show the last tick label.
  final bool? showLastLabel;

  /// (Highcharts, Highstock, Gantt) A soft maximum for the axis. If the series data maximum is less than this, the axis will stay at this maximum, but if the series data maximum is higher, the axis will flex to show all data.
  final num? softMax;

  /// (Highcharts, Highstock, Gantt) A soft minimum for the axis. If the series data minimum is greater than this, the axis will stay at this minimum, but if the series data minimum is lower, the axis will flex to show all data.
  final num? softMin;

  /// (Highcharts) Relevant only for pictorial series. The `stackShadow` forms the background of stacked points. Requires `series.stacking` to be defined.
  final HCYAxisOptions? stackShadow;

  /// (Highcharts, Highstock, Gantt) For datetime axes, this decides where to put the tick between weeks. 0 = Sunday, 1 = Monday.
  final num? startOfWeek;

  /// (Highcharts, Highstock, Gantt) Whether to force the axis to start on a tick. Use this option with the `maxPadding` option to control the axis start.
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

  /// (Highcharts, Highstock, Gantt) The pixel width of the major tick marks.
  final num? tickWidth;

  /// (Highcharts) Visually the parallel coordinates titles are done through xAxis.categories. All options for `xAxis.labels` applies to parallel coordinates titles. For example, to style categories, use xAxis.labels.style.
  final HCChartParallelAxesTitleOptions? title;

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
    if (gridZIndex != null) {
      json['gridZIndex'] = gridZIndex;
    }
    if (height != null) {
      json['height'] = hcJsonValue(height);
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
    if (min != null) {
      json['min'] = hcJsonValue(min);
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
    if (reversed != null) {
      json['reversed'] = reversed;
    }
    if (reversedStacks != null) {
      json['reversedStacks'] = reversedStacks;
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

/// (Highcharts) Visually the parallel coordinates titles are done through xAxis.categories. All options for `xAxis.labels` applies to parallel coordinates titles. For example, to style categories, use xAxis.labels.style.
class HCChartParallelAxesTitleOptions implements HCOption {
  const HCChartParallelAxesTitleOptions({
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

  /// (Highcharts) The pixel distance between the axis labels and the title. Positive values are outside the axis line, negative are inside.
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

  /// (Highcharts, Highstock, Gantt) The actual text of the axis title. Horizontal texts can contain HTML, but rotated texts are painted using vector techniques and must be clean text. The Y axis title is disabled by setting the `text` option to `undefined`. The default value is overridden by the `lang.yA
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
class HCChartParallelAxesTitleStyleOptions implements HCOption {
  const HCChartParallelAxesTitleStyleOptions({
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

/// (Highcharts, Highstock, Highmaps, Gantt) Deprecated. Use chart.zooming.resetButton instead.
class HCChartResetZoomButtonOptions implements HCOption {
  const HCChartResetZoomButtonOptions({
    this.position,
    this.relativeTo,
    this.theme,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) The position of the button.
  final dynamic position;

  /// (Highcharts, Highstock, Highmaps, Gantt) What frame the button placement should be related to. Can be either `plotBox` or `spacingBox`.
  final String? relativeTo;

  /// (Highcharts, Highstock, Highmaps, Gantt) A collection of attributes for the button. The object takes SVG attributes like `fill`, `stroke`, `stroke-width` or `r`, the border radius. The theme also supports `style`, a collection of CSS properties for the text. Equivalent attributes for the hover state
  final dynamic theme;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (position != null) {
      json['position'] = hcJsonValue(position);
    }
    if (relativeTo != null) {
      json['relativeTo'] = relativeTo;
    }
    if (theme != null) {
      json['theme'] = hcJsonValue(theme);
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) The position of the button.
class HCChartResetZoomButtonPositionOptions implements HCOption {
  const HCChartResetZoomButtonPositionOptions({
    this.align,
    this.verticalAlign,
    this.x,
    this.y,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) The horizontal alignment of the button.
  final num? align;

  /// (Highcharts, Highstock, Highmaps, Gantt) The vertical alignment of the button.
  final String? verticalAlign;

  /// (Highcharts, Highstock, Highmaps, Gantt) The horizontal offset of the button.
  final num? x;

  /// (Highcharts, Highstock, Highmaps, Gantt) The vertical offset of the button.
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

/// (Highcharts, Highstock, Highmaps, Gantt) A collection of attributes for the button. The object takes SVG attributes like `fill`, `stroke`, `stroke-width` or `r`, the border radius. The theme also supports `style`, a collection of CSS properties for the text. Equivalent attributes for the hover state
class HCChartResetZoomButtonThemeOptions implements HCOption {
  const HCChartResetZoomButtonThemeOptions({
    this.zIndex,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) The z-index of the button.
  final num? zIndex;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (zIndex != null) {
      json['zIndex'] = zIndex;
    }
    return json;
  }
}

/// (Highcharts, Gantt) Options for a scrollable plot area. This feature provides a minimum size for the plot area of the chart. If the size gets smaller than this, typically on mobile devices, a native browser scrollbar is presented. This scrollbar provides smooth scrolling for the contents of the plot
class HCChartScrollablePlotAreaOptions implements HCOption {
  const HCChartScrollablePlotAreaOptions({
    this.minHeight,
    this.minWidth,
    this.opacity,
    this.scrollPositionX,
    this.scrollPositionY,
  });

  /// (Highcharts, Gantt) The minimum height for the plot area. If it gets smaller than this, the plot area will become scrollable.
  final num? minHeight;

  /// (Highcharts, Gantt) The minimum width for the plot area. If it gets smaller than this, the plot area will become scrollable.
  final num? minWidth;

  /// (Highcharts, Gantt) The opacity of mask applied on one of the sides of the plot area.
  final num? opacity;

  /// (Highcharts, Gantt) The initial scrolling position of the scrollable plot area. Ranges from 0 to 1, where 0 aligns the plot area to the left and 1 aligns it to the right. Typically we would use 1 if the chart has right aligned Y axes.
  final num? scrollPositionX;

  /// (Highcharts, Gantt) The initial scrolling position of the scrollable plot area. Ranges from 0 to 1, where 0 aligns the plot area to the top and 1 aligns it to the bottom.
  final num? scrollPositionY;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (minHeight != null) {
      json['minHeight'] = minHeight;
    }
    if (minWidth != null) {
      json['minWidth'] = minWidth;
    }
    if (opacity != null) {
      json['opacity'] = opacity;
    }
    if (scrollPositionX != null) {
      json['scrollPositionX'] = scrollPositionX;
    }
    if (scrollPositionY != null) {
      json['scrollPositionY'] = scrollPositionY;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) The mouse wheel zoom is a feature included in Highcharts Stock, but is also available for Highcharts Core as a module. Zooming with the mouse wheel is enabled by default in Highcharts Stock. In Highcharts Core it is enabled if chart.zooming.type is set. It ca
class HCChartZoomingMouseWheelOptions implements HCOption {
  const HCChartZoomingMouseWheelOptions({
    this.enabled,
    this.sensitivity,
    this.showResetButton,
    this.type,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Zooming with the mouse wheel can be disabled by setting this option to `false`.
  final bool? enabled;

  /// (Highcharts, Highstock, Highmaps, Gantt) Adjust the sensitivity of the zoom. Sensitivity of mouse wheel or trackpad scrolling. `1` is no sensitivity, while with `2`, one mouse wheel delta will zoom in `50%`.
  final num? sensitivity;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to enable the reset zoom button when zooming with the mouse wheel.
  final bool? showResetButton;

  /// (Highcharts, Highstock, Highmaps, Gantt) Decides in what dimensions the user can zoom scrolling the wheel. Can be one of `x`, `y` or `xy`. In Highcharts Core, if not specified here, it will inherit the type from chart.zooming.type. In Highcharts Stock, it defaults to `x`.
  final String? type;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    if (sensitivity != null) {
      json['sensitivity'] = sensitivity;
    }
    if (showResetButton != null) {
      json['showResetButton'] = showResetButton;
    }
    if (type != null) {
      json['type'] = type;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Chart zooming options.
class HCChartZoomingOptions implements HCOption {
  const HCChartZoomingOptions({
    this.key,
    this.mouseWheel,
    this.pinchType,
    this.resetButton,
    this.singleTouch,
    this.type,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Set a key to hold when dragging to zoom the chart. This is useful to avoid zooming while moving points. Should be set different than chart.panKey.
  final String? key;

  /// (Highcharts, Highstock, Highmaps, Gantt) The mouse wheel zoom is a feature included in Highcharts Stock, but is also available for Highcharts Core as a module. Zooming with the mouse wheel is enabled by default in Highcharts Stock. In Highcharts Core it is enabled if chart.zooming.type is set. It ca
  final dynamic mouseWheel;

  /// (Highcharts, Highstock, Gantt) Equivalent to type, but for multitouch gestures only. By default, the `pinchType` is the same as the `type` setting. However, pinching can be enabled separately in some cases, for example in stock charts where a mouse drag pans the chart, while pinching is enabled. Whe
  final String? pinchType;

  /// (Highcharts, Highstock, Highmaps, Gantt) The button that appears after a selection zoom, allowing the user to reset zoom.
  final HCChartZoomingResetButtonOptions? resetButton;

  /// (Highcharts, Highstock, Gantt) Enables zooming by a single touch, in combination with chart.zooming.type. When enabled, two-finger pinch will still work as set up by [chart.zooming.pinchType] (#chart.zooming.pinchType). However, `singleTouch` will interfere with touch-dragging the chart to read the
  final bool? singleTouch;

  /// (Highcharts, Highstock, Gantt) Decides in what dimensions the user can zoom by dragging the mouse. Can be one of `x`, `y` or `xy`.
  final String? type;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (key != null) {
      json['key'] = key;
    }
    if (mouseWheel != null) {
      json['mouseWheel'] = hcJsonValue(mouseWheel);
    }
    if (pinchType != null) {
      json['pinchType'] = pinchType;
    }
    if (resetButton != null) {
      json['resetButton'] = resetButton!.toJson();
    }
    if (singleTouch != null) {
      json['singleTouch'] = singleTouch;
    }
    if (type != null) {
      json['type'] = type;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) The button that appears after a selection zoom, allowing the user to reset zoom.
class HCChartZoomingResetButtonOptions implements HCOption {
  const HCChartZoomingResetButtonOptions({
    this.position,
    this.relativeTo,
    this.theme,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) The position of the button.
  final dynamic position;

  /// (Highcharts, Highstock, Highmaps, Gantt) What frame the button placement should be related to. Can be either `plotBox` or `spacingBox`.
  final String? relativeTo;

  /// (Highcharts, Highstock, Highmaps, Gantt) A collection of attributes for the button. The object takes SVG attributes like `fill`, `stroke`, `stroke-width` or `r`, the border radius. The theme also supports `style`, a collection of CSS properties for the text. Equivalent attributes for the hover state
  final HCSVGAttributes? theme;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (position != null) {
      json['position'] = hcJsonValue(position);
    }
    if (relativeTo != null) {
      json['relativeTo'] = relativeTo;
    }
    if (theme != null) {
      json['theme'] = theme!.toJson();
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) The position of the button.
class HCChartZoomingResetButtonPositionOptions implements HCOption {
  const HCChartZoomingResetButtonPositionOptions({
    this.align,
    this.verticalAlign,
    this.y,
  });

  final String? align;

  /// (Highcharts, Highstock, Highmaps, Gantt) The vertical alignment of the button.
  final String? verticalAlign;

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
    if (y != null) {
      json['y'] = y;
    }
    return json;
  }
}
