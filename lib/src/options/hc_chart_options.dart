part of 'hc_options.dart';

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

  /// (Highcharts, Highstock, Gantt) When using multiple axes, align the
  final dynamic alignThresholds;

  /// (Highcharts, Highstock, Gantt) When using multiple axes, the ticks of two
  final dynamic alignTicks;

  /// (Highcharts, Highstock, Highmaps, Gantt) By default, (because of memory
  final dynamic allowMutatingData;

  /// (Highcharts, Highstock, Highmaps, Gantt) Set the overall animation for
  final dynamic animation;

  /// (Highcharts, Highstock, Highmaps, Gantt) When a chart with an x and a
  final num? axisLayoutRuns;

  /// (Highcharts, Highstock, Highmaps, Gantt) The background color of the
  final dynamic backgroundColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) The color of the outer chart
  final dynamic borderColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) The corner radius of the outer
  final num? borderRadius;

  /// (Highcharts, Highstock, Highmaps, Gantt) The pixel width of the outer
  final num? borderWidth;

  /// (Highcharts, Highstock, Highmaps, Gantt) A CSS class name to apply to the
  final String? className;

  /// (Highcharts, Highstock, Highmaps, Gantt) In styled mode, this sets how
  final num? colorCount;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to display errors on the
  final dynamic displayErrors;

  /// (Highcharts, Highstock, Highmaps, Gantt) Event listeners for the chart.
  final HCChartEventsOptions? events;

  /// (Highcharts, Highstock, Highmaps, Gantt) An explicit height for the
  final dynamic height;

  /// (Highcharts, Highstock, Gantt) If true, the axes will scale to the
  final dynamic ignoreHiddenSeries;

  /// (Highcharts, Highstock, Gantt) Whether to invert the axes so that the x
  final dynamic inverted;

  /// (Highmaps) Default `mapData` for all series, in terms of a GeoJSON or
  final dynamic map;

  /// (Highmaps) Set lat/lon transformation definitions for the chart. If not
  final dynamic mapTransforms;

  /// (Highcharts, Highstock, Highmaps, Gantt) The margin between the outer
  final dynamic margin;

  /// (Highcharts, Highstock, Highmaps, Gantt) The margin between the bottom
  final num? marginBottom;

  /// (Highcharts, Highstock, Highmaps, Gantt) The margin between the left
  final num? marginLeft;

  /// (Highcharts, Highstock, Highmaps, Gantt) The margin between the right
  final num? marginRight;

  /// (Highcharts, Highstock, Highmaps, Gantt) The margin between the top outer
  final num? marginTop;

  /// (Highcharts) Options to render charts in 3 dimensions. This feature
  final HCChart3dOptions? options3d;

  /// (Highcharts, Gantt) Allows setting a key to switch between zooming and
  final String? panKey;

  /// (Highcharts, Highstock, Highmaps, Gantt) Allow panning in a chart. Best
  final HCChartPanningOptions? panning;

  /// (Highcharts) Common options for all yAxes rendered in a parallel
  final dynamic parallelAxes;

  /// (Highcharts) Flag to render charts as a parallel coordinates plot. In a
  final dynamic parallelCoordinates;

  /// (Highcharts, Highstock, Gantt) Deprecated. Use chart.zooming.pinchType
  final String? pinchType;

  /// (Highcharts, Highstock, Highmaps, Gantt) The background color or gradient
  final dynamic plotBackgroundColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) The URL for an image to use as
  final String? plotBackgroundImage;

  /// (Highcharts, Highstock, Highmaps, Gantt) The color of the inner chart or
  final dynamic plotBorderColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) The corner radius of the plot
  final num? plotBorderRadius;

  /// (Highcharts, Highstock, Highmaps, Gantt) The pixel width of the plot area
  final num? plotBorderWidth;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to apply a drop shadow
  final dynamic plotShadow;

  /// (Highcharts) When true, cartesian charts like line, spline, area and
  final dynamic polar;

  /// (Highmaps) Allows to manually load the proj4 library from Highcharts
  final dynamic proj4;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to reflow the chart to
  final dynamic reflow;

  /// (Highcharts, Highstock, Highmaps, Gantt) The HTML element where the chart
  final dynamic renderTo;

  /// (Highcharts, Highstock, Highmaps, Gantt) Deprecated. Use
  final HCChartResetZoomButtonOptions? resetZoomButton;

  /// (Highcharts, Gantt) Options for a scrollable plot area. This feature
  final HCChartScrollablePlotAreaOptions? scrollablePlotArea;

  /// (Highcharts, Highstock, Highmaps, Gantt) The background color of the
  final dynamic selectionMarkerFill;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to apply a drop shadow
  final dynamic seriesGroupShadow;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to apply a drop shadow
  final dynamic shadow;

  /// (Highcharts, Gantt) Whether to show the axes initially. This only applies
  final dynamic showAxes;

  /// (Highcharts, Highstock, Highmaps, Gantt) The distance between the outer
  final List<num>? spacing;

  /// (Highcharts, Highstock, Highmaps, Gantt) The space between the bottom
  final num? spacingBottom;

  /// (Highcharts, Highstock, Highmaps, Gantt) The space between the left edge
  final num? spacingLeft;

  /// (Highcharts, Highstock, Highmaps, Gantt) The space between the right edge
  final num? spacingRight;

  /// (Highcharts, Highstock, Highmaps, Gantt) The space between the top edge
  final num? spacingTop;

  /// (Highcharts, Highstock, Highmaps, Gantt) Additional CSS styles to apply
  final HCCSSObject? style;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to apply styled mode.
  final dynamic styledMode;

  /// (Highcharts, Highstock, Highmaps, Gantt) The default series type for the
  final String? type;

  /// (Highcharts, Highstock, Highmaps, Gantt) An explicit width for the chart.
  final dynamic width;

  /// (Highcharts, Highstock, Gantt) Deprecated. Use chart.zooming.singleTouch
  final dynamic zoomBySingleTouch;

  /// (Highcharts, Highstock, Highmaps, Gantt) Chart zooming options.
  final HCChartZoomingOptions? zooming;

  /// (Highcharts, Highstock, Highmaps, Gantt) Deprecated. Use
  final String? zoomKey;

  /// (Highcharts, Highstock, Highmaps, Gantt) Deprecated. Use
  final String? zoomType;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (alignThresholds != null) {
      json["alignThresholds"] = hcJsonValue(alignThresholds);
    }
    if (alignTicks != null) {
      json["alignTicks"] = hcJsonValue(alignTicks);
    }
    if (allowMutatingData != null) {
      json["allowMutatingData"] = hcJsonValue(allowMutatingData);
    }
    if (animation != null) {
      json["animation"] = hcJsonValue(animation);
    }
    if (axisLayoutRuns != null) {
      json["axisLayoutRuns"] = axisLayoutRuns;
    }
    if (backgroundColor != null) {
      json["backgroundColor"] = hcJsonValue(backgroundColor);
    }
    if (borderColor != null) {
      json["borderColor"] = hcJsonValue(borderColor);
    }
    if (borderRadius != null) {
      json["borderRadius"] = borderRadius;
    }
    if (borderWidth != null) {
      json["borderWidth"] = borderWidth;
    }
    if (className != null) {
      json["className"] = className;
    }
    if (colorCount != null) {
      json["colorCount"] = colorCount;
    }
    if (displayErrors != null) {
      json["displayErrors"] = hcJsonValue(displayErrors);
    }
    if (events != null) {
      json["events"] = events!.toJson();
    }
    if (height != null) {
      json["height"] = hcJsonValue(height);
    }
    if (ignoreHiddenSeries != null) {
      json["ignoreHiddenSeries"] = hcJsonValue(ignoreHiddenSeries);
    }
    if (inverted != null) {
      json["inverted"] = hcJsonValue(inverted);
    }
    if (map != null) {
      json["map"] = hcJsonValue(map);
    }
    if (mapTransforms != null) {
      json["mapTransforms"] = hcJsonValue(mapTransforms);
    }
    if (margin != null) {
      json["margin"] = hcJsonValue(margin);
    }
    if (marginBottom != null) {
      json["marginBottom"] = marginBottom;
    }
    if (marginLeft != null) {
      json["marginLeft"] = marginLeft;
    }
    if (marginRight != null) {
      json["marginRight"] = marginRight;
    }
    if (marginTop != null) {
      json["marginTop"] = marginTop;
    }
    if (options3d != null) {
      json["options3d"] = options3d!.toJson();
    }
    if (panKey != null) {
      json["panKey"] = panKey;
    }
    if (panning != null) {
      json["panning"] = panning!.toJson();
    }
    if (parallelAxes != null) {
      json["parallelAxes"] = hcJsonValue(parallelAxes);
    }
    if (parallelCoordinates != null) {
      json["parallelCoordinates"] = hcJsonValue(parallelCoordinates);
    }
    if (pinchType != null) {
      json["pinchType"] = pinchType;
    }
    if (plotBackgroundColor != null) {
      json["plotBackgroundColor"] = hcJsonValue(plotBackgroundColor);
    }
    if (plotBackgroundImage != null) {
      json["plotBackgroundImage"] = plotBackgroundImage;
    }
    if (plotBorderColor != null) {
      json["plotBorderColor"] = hcJsonValue(plotBorderColor);
    }
    if (plotBorderRadius != null) {
      json["plotBorderRadius"] = plotBorderRadius;
    }
    if (plotBorderWidth != null) {
      json["plotBorderWidth"] = plotBorderWidth;
    }
    if (plotShadow != null) {
      json["plotShadow"] = hcJsonValue(plotShadow);
    }
    if (polar != null) {
      json["polar"] = hcJsonValue(polar);
    }
    if (proj4 != null) {
      json["proj4"] = hcJsonValue(proj4);
    }
    if (reflow != null) {
      json["reflow"] = hcJsonValue(reflow);
    }
    if (renderTo != null) {
      json["renderTo"] = hcJsonValue(renderTo);
    }
    if (resetZoomButton != null) {
      json["resetZoomButton"] = resetZoomButton!.toJson();
    }
    if (scrollablePlotArea != null) {
      json["scrollablePlotArea"] = scrollablePlotArea!.toJson();
    }
    if (selectionMarkerFill != null) {
      json["selectionMarkerFill"] = hcJsonValue(selectionMarkerFill);
    }
    if (seriesGroupShadow != null) {
      json["seriesGroupShadow"] = hcJsonValue(seriesGroupShadow);
    }
    if (shadow != null) {
      json["shadow"] = hcJsonValue(shadow);
    }
    if (showAxes != null) {
      json["showAxes"] = hcJsonValue(showAxes);
    }
    if (spacing != null) {
      json["spacing"] = spacing;
    }
    if (spacingBottom != null) {
      json["spacingBottom"] = spacingBottom;
    }
    if (spacingLeft != null) {
      json["spacingLeft"] = spacingLeft;
    }
    if (spacingRight != null) {
      json["spacingRight"] = spacingRight;
    }
    if (spacingTop != null) {
      json["spacingTop"] = spacingTop;
    }
    if (style != null) {
      json["style"] = style!.toJson();
    }
    if (styledMode != null) {
      json["styledMode"] = hcJsonValue(styledMode);
    }
    if (type != null) {
      json["type"] = type;
    }
    if (width != null) {
      json["width"] = hcJsonValue(width);
    }
    if (zoomBySingleTouch != null) {
      json["zoomBySingleTouch"] = hcJsonValue(zoomBySingleTouch);
    }
    if (zooming != null) {
      json["zooming"] = zooming!.toJson();
    }
    if (zoomKey != null) {
      json["zoomKey"] = zoomKey;
    }
    if (zoomType != null) {
      json["zoomType"] = zoomType;
    }
    return json;
  }
}
