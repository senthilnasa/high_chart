part of 'hc_options.dart';

/// (Highmaps) A flowmap series is a series laid out on top of a map series
class HCPlotFlowmapOptions implements HCOption {
  const HCPlotFlowmapOptions({
    this.accessibility,
    this.animation,
    this.animationLimit,
    this.className,
    this.clip,
    this.color,
    this.colorAxis,
    this.colorByPoint,
    this.colorIndex,
    this.colorKey,
    this.colors,
    this.cursor,
    this.curveFactor,
    this.custom,
    this.dataMapping,
    this.description,
    this.enableMouseTracking,
    this.events,
    this.fillColor,
    this.fillOpacity,
    this.findNearestPointBy,
    this.inactiveOtherPoints,
    this.includeInDataExport,
    this.keys,
    this.legendSymbol,
    this.linecap,
    this.lineWidth,
    this.markerEnd,
    this.maxWidth,
    this.minWidth,
    this.nullColor,
    this.opacity,
    this.point,
    this.pointDescriptionFormat,
    this.pointDescriptionFormatter,
    this.selected,
    this.showInLegend,
    this.skipKeyboardNavigation,
    this.sonification,
    this.states,
    this.stickyTracking,
    this.tooltip,
    this.visible,
    this.weight,
    this.width,
    this.zIndex,
    this.zoomEnabled,
  });

  /// (Highmaps) Accessibility options for a series.
  final HCSeriesAccessibilityOptionsObject? accessibility;

  /// (Highmaps) Enable or disable the initial animation when a series is
  final dynamic animation;

  /// (Highmaps) For some series, there is a limit that shuts down
  final num? animationLimit;

  /// (Highmaps) An additional class name to apply to the series' graphical
  final String? className;

  /// (Highmaps) Disable this option to allow series rendering in the whole
  final dynamic clip;

  /// (Highmaps) The main color of the series. In line type series it
  final dynamic color;

  /// (Highcharts, Highstock, Highmaps) When using dual or multiple color
  final dynamic colorAxis;

  /// (Highmaps) When using automatic point colors pulled from the global
  final dynamic colorByPoint;

  /// (Highmaps) Styled mode only. A specific color index to use for the
  final num? colorIndex;

  /// (Highcharts, Highstock, Highmaps) Determines what data value should
  final String? colorKey;

  /// (Highmaps) A series specific or series type specific color set to
  final List<dynamic>? colors;

  /// (Highmaps) You can set the cursor to "pointer" if you have click
  final String? cursor;

  /// (Highmaps) The `curveFactor` option for all links. Value higher than
  final num? curveFactor;

  /// (Highmaps) A reserved subspace to store options and values for
  final HCDictionary? custom;

  /// (Highmaps) The mapping between the data table and the series data
  final HCDataMappingOptionsObject? dataMapping;

  /// (Highmaps) Deprecated. Use
  final String? description;

  /// (Highmaps) Enable or disable the mouse tracking for a specific
  final dynamic enableMouseTracking;

  /// (Highmaps) General event handlers for the series items. These event
  final HCSeriesEventsOptionsObject? events;

  /// (Highmaps) The fill color of all the links. If not set, the series
  final dynamic fillColor;

  /// (Highmaps) The opacity of the color fill for all links.
  final num? fillOpacity;

  /// (Highmaps) Determines whether the series should look for the nearest
  final String? findNearestPointBy;

  /// (Highmaps) Highlight only the hovered point and fade the remaining
  final dynamic inactiveOtherPoints;

  /// (Highmaps) When set to `false` will prevent the series data from
  final dynamic includeInDataExport;

  /// (Highmaps) An array specifying which option maps to which key in the
  final List<String>? keys;

  /// (Highmaps) What type of legend symbol to render for this series. Can
  final String? legendSymbol;

  /// (Highmaps) The line cap used for line ends and line joins on the
  final String? linecap;

  /// (Highmaps) Specify the `lineWidth` of the links if they are not
  final num? lineWidth;

  /// (Highmaps) A `markerEnd` creates an arrow symbol indicating the
  final HCSeriesFlowMapSeriesOptionsObject? markerEnd;

  /// (Highmaps) Maximum width of a link expressed in pixels. The weight of
  final num? maxWidth;

  /// (Highmaps) Minimum width of a link expressed in pixels. The weight of
  final num? minWidth;

  /// (Highmaps) The color to apply to null points.
  final dynamic nullColor;

  /// (Highmaps) The opacity of all the links. Affects the opacity for the
  final num? opacity;

  /// (Highmaps) Properties for each single point.
  final HCPlotSeriesPointOptions? point;

  /// (Highmaps) Deprecated. Use
  final dynamic pointDescriptionFormat;

  /// (Highmaps) Deprecated. Use
  final dynamic pointDescriptionFormatter;

  /// (Highmaps) Whether to select the series initially. If `showCheckbox`
  final dynamic selected;

  /// (Highmaps) Whether to display this particular series or series type
  final dynamic showInLegend;

  /// (Highmaps) Deprecated. Use series.accessibility.keyboardNavigation
  final dynamic skipKeyboardNavigation;

  /// (Highmaps) Sonification/audio chart options for a series.
  final HCSeriesSonificationOptions? sonification;

  /// (Highmaps) A collection of options for different series states.
  final HCSeriesStatesOptionsObject? states;

  /// (Highcharts, Highstock, Highmaps) Sticky tracking of mouse events.
  final dynamic stickyTracking;

  /// (Highcharts, Highstock, Highmaps) A configuration object for the
  final HCSeriesTooltipOptionsObject? tooltip;

  /// (Highmaps) Set the initial visibility of the series.
  final dynamic visible;

  /// (Highmaps) The weight for all links with unspecified weights. The
  final num? weight;

  /// (Highmaps) If no weight has previously been specified, this will set
  final num? width;

  /// (Highmaps) Define the z index of the series.
  final num? zIndex;

  /// (Highmaps) Whether to zoom non-cartesian series. If `chart.zooming`
  final dynamic zoomEnabled;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (accessibility != null) {
      json["accessibility"] = accessibility!.toJson();
    }
    if (animation != null) {
      json["animation"] = hcJsonValue(animation);
    }
    if (animationLimit != null) {
      json["animationLimit"] = animationLimit;
    }
    if (className != null) {
      json["className"] = className;
    }
    if (clip != null) {
      json["clip"] = hcJsonValue(clip);
    }
    if (color != null) {
      json["color"] = hcJsonValue(color);
    }
    if (colorAxis != null) {
      json["colorAxis"] = hcJsonValue(colorAxis);
    }
    if (colorByPoint != null) {
      json["colorByPoint"] = hcJsonValue(colorByPoint);
    }
    if (colorIndex != null) {
      json["colorIndex"] = colorIndex;
    }
    if (colorKey != null) {
      json["colorKey"] = colorKey;
    }
    if (colors != null) {
      json["colors"] = colors!.map((e) => hcJsonValue(e)).toList();
    }
    if (cursor != null) {
      json["cursor"] = cursor;
    }
    if (curveFactor != null) {
      json["curveFactor"] = curveFactor;
    }
    if (custom != null) {
      json["custom"] = custom!.toJson();
    }
    if (dataMapping != null) {
      json["dataMapping"] = dataMapping!.toJson();
    }
    if (description != null) {
      json["description"] = description;
    }
    if (enableMouseTracking != null) {
      json["enableMouseTracking"] = hcJsonValue(enableMouseTracking);
    }
    if (events != null) {
      json["events"] = events!.toJson();
    }
    if (fillColor != null) {
      json["fillColor"] = hcJsonValue(fillColor);
    }
    if (fillOpacity != null) {
      json["fillOpacity"] = fillOpacity;
    }
    if (findNearestPointBy != null) {
      json["findNearestPointBy"] = findNearestPointBy;
    }
    if (inactiveOtherPoints != null) {
      json["inactiveOtherPoints"] = hcJsonValue(inactiveOtherPoints);
    }
    if (includeInDataExport != null) {
      json["includeInDataExport"] = hcJsonValue(includeInDataExport);
    }
    if (keys != null) {
      json["keys"] = keys;
    }
    if (legendSymbol != null) {
      json["legendSymbol"] = legendSymbol;
    }
    if (linecap != null) {
      json["linecap"] = linecap;
    }
    if (lineWidth != null) {
      json["lineWidth"] = lineWidth;
    }
    if (markerEnd != null) {
      json["markerEnd"] = markerEnd!.toJson();
    }
    if (maxWidth != null) {
      json["maxWidth"] = maxWidth;
    }
    if (minWidth != null) {
      json["minWidth"] = minWidth;
    }
    if (nullColor != null) {
      json["nullColor"] = hcJsonValue(nullColor);
    }
    if (opacity != null) {
      json["opacity"] = opacity;
    }
    if (point != null) {
      json["point"] = point!.toJson();
    }
    if (pointDescriptionFormat != null) {
      json["pointDescriptionFormat"] = hcJsonValue(pointDescriptionFormat);
    }
    if (pointDescriptionFormatter != null) {
      json["pointDescriptionFormatter"] =
          hcJsonValue(pointDescriptionFormatter);
    }
    if (selected != null) {
      json["selected"] = hcJsonValue(selected);
    }
    if (showInLegend != null) {
      json["showInLegend"] = hcJsonValue(showInLegend);
    }
    if (skipKeyboardNavigation != null) {
      json["skipKeyboardNavigation"] = hcJsonValue(skipKeyboardNavigation);
    }
    if (sonification != null) {
      json["sonification"] = sonification!.toJson();
    }
    if (states != null) {
      json["states"] = states!.toJson();
    }
    if (stickyTracking != null) {
      json["stickyTracking"] = hcJsonValue(stickyTracking);
    }
    if (tooltip != null) {
      json["tooltip"] = tooltip!.toJson();
    }
    if (visible != null) {
      json["visible"] = hcJsonValue(visible);
    }
    if (weight != null) {
      json["weight"] = weight;
    }
    if (width != null) {
      json["width"] = width;
    }
    if (zIndex != null) {
      json["zIndex"] = zIndex;
    }
    if (zoomEnabled != null) {
      json["zoomEnabled"] = hcJsonValue(zoomEnabled);
    }
    return json;
  }
}
