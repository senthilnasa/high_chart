part of 'hc_options.dart';

/// (Highmaps) A mappoint series is a special form of scatter series where the
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

  /// (Highmaps) Allow this series' points to be selected by clicking on the
  final dynamic allowPointSelect;

  /// (Highmaps) Enable or disable the initial animation when a series is
  final dynamic animation;

  /// (Highmaps) For some series, there is a limit that shuts down animation by
  final num? animationLimit;

  /// (Highmaps) Sets the color blending in the boost module.
  final String? boostBlending;

  /// (Highmaps) Set the point threshold for when a series should enter boost
  final num? boostThreshold;

  /// (Highmaps) An additional class name to apply to the series' graphical
  final String? className;

  /// (Highmaps) Disable this option to allow series rendering in the whole
  final dynamic clip;

  /// (Highcharts, Highmaps) Options for marker clusters, the concept of
  final HCPlotMappointClusterOptions? cluster;

  /// (Highmaps) The main color of the series. In line type series it applies
  final dynamic color;

  /// (Highcharts, Highstock, Highmaps) When using dual or multiple color axes,
  final dynamic colorAxis;

  /// (Highmaps) Styled mode only. A specific color index to use for the
  final num? colorIndex;

  /// (Highcharts, Highstock, Highmaps) Determines what data value should be
  final String? colorKey;

  /// (Highmaps) You can set the cursor to "pointer" if you have click events
  final String? cursor;

  /// (Highmaps) A reserved subspace to store options and values for customized
  final HCDictionary? custom;

  /// (Highmaps) Name of the dash style to use for the graph, or for some
  final String? dashStyle;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for the series data
  final dynamic dataLabels;

  /// (Highmaps) The mapping between the data table and the series data points.
  final HCDataMappingOptionsObject? dataMapping;

  /// (Highmaps) Deprecated. Use plotOptions.series.accessibility.description
  final String? description;

  /// (Highmaps) The draggable-points module allows points to be moved around
  final HCSeriesDragDropOptionsObject? dragDrop;

  /// (Highmaps) Enable or disable the mouse tracking for a specific series.
  final dynamic enableMouseTracking;

  /// (Highmaps) General event handlers for the series items. These event hooks
  final HCSeriesEventsOptionsObject? events;

  /// (Highmaps) Determines whether the series should look for the nearest
  final String? findNearestPointBy;

  /// (Highmaps) Highlight only the hovered point and fade the remaining
  final dynamic inactiveOtherPoints;

  /// (Highmaps) When set to `false` will prevent the series data from being
  final dynamic includeInDataExport;

  /// (Highmaps) What property to join the `mapData` to the value data. For
  final dynamic joinBy;

  /// (Highmaps) An array specifying which option maps to which key in the data
  final List<String>? keys;

  /// (Highmaps) What type of legend symbol to render for this series. Can be
  final String? legendSymbol;

  /// (Highmaps) The line cap used for line ends and line joins on the graph.
  final String? linecap;

  /// (Highmaps) Options for the point markers of line and scatter-like series.
  final HCPointMarkerOptionsObject? marker;

  /// (Highmaps) The color for the parts of the graph or points that are below
  final dynamic negativeColor;

  /// (Highmaps) Options for the _Series on point_ feature. Only `pie` and
  final dynamic onPoint;

  /// (Highmaps) Opacity of a series parts: line, fill (e.g. area) and
  final num? opacity;

  /// (Highmaps) Properties for each single point.
  final HCPlotSeriesPointOptions? point;

  /// (Highmaps) Deprecated. Use series.accessibility.point.descriptionFormat
  final dynamic pointDescriptionFormat;

  /// (Highmaps) Deprecated. Use
  final dynamic pointDescriptionFormatter;

  /// (Highmaps) Whether to select the series initially. If `showCheckbox` is
  final dynamic selected;

  /// (Highmaps) If true, a checkbox is displayed next to the legend item to
  final dynamic showCheckbox;

  /// (Highmaps) Whether to display this particular series or series type in
  final dynamic showInLegend;

  /// (Highmaps) Deprecated. Use series.accessibility.keyboardNavigation
  final dynamic skipKeyboardNavigation;

  /// (Highmaps) Sonification/audio chart options for a series.
  final HCSeriesSonificationOptions? sonification;

  /// (Highmaps) A collection of options for different series states.
  final HCSeriesStatesOptionsObject? states;

  /// (Highcharts, Highstock, Highmaps) Sticky tracking of mouse events. When
  final dynamic stickyTracking;

  /// (Highcharts, Highstock, Highmaps) A configuration object for the tooltip
  final HCSeriesTooltipOptionsObject? tooltip;

  /// (Highmaps) Set the initial visibility of the series.
  final dynamic visible;

  /// (Highmaps) Define the z index of the series.
  final num? zIndex;

  /// (Highmaps) Whether to zoom non-cartesian series. If `chart.zooming` is
  final dynamic zoomEnabled;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (accessibility != null) {
      json["accessibility"] = accessibility!.toJson();
    }
    if (allowPointSelect != null) {
      json["allowPointSelect"] = hcJsonValue(allowPointSelect);
    }
    if (animation != null) {
      json["animation"] = hcJsonValue(animation);
    }
    if (animationLimit != null) {
      json["animationLimit"] = animationLimit;
    }
    if (boostBlending != null) {
      json["boostBlending"] = boostBlending;
    }
    if (boostThreshold != null) {
      json["boostThreshold"] = boostThreshold;
    }
    if (className != null) {
      json["className"] = className;
    }
    if (clip != null) {
      json["clip"] = hcJsonValue(clip);
    }
    if (cluster != null) {
      json["cluster"] = cluster!.toJson();
    }
    if (color != null) {
      json["color"] = hcJsonValue(color);
    }
    if (colorAxis != null) {
      json["colorAxis"] = hcJsonValue(colorAxis);
    }
    if (colorIndex != null) {
      json["colorIndex"] = colorIndex;
    }
    if (colorKey != null) {
      json["colorKey"] = colorKey;
    }
    if (cursor != null) {
      json["cursor"] = cursor;
    }
    if (custom != null) {
      json["custom"] = custom!.toJson();
    }
    if (dashStyle != null) {
      json["dashStyle"] = dashStyle;
    }
    if (dataLabels != null) {
      json["dataLabels"] = hcJsonValue(dataLabels);
    }
    if (dataMapping != null) {
      json["dataMapping"] = dataMapping!.toJson();
    }
    if (description != null) {
      json["description"] = description;
    }
    if (dragDrop != null) {
      json["dragDrop"] = dragDrop!.toJson();
    }
    if (enableMouseTracking != null) {
      json["enableMouseTracking"] = hcJsonValue(enableMouseTracking);
    }
    if (events != null) {
      json["events"] = events!.toJson();
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
    if (joinBy != null) {
      json["joinBy"] = hcJsonValue(joinBy);
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
    if (marker != null) {
      json["marker"] = marker!.toJson();
    }
    if (negativeColor != null) {
      json["negativeColor"] = hcJsonValue(negativeColor);
    }
    if (onPoint != null) {
      json["onPoint"] = hcJsonValue(onPoint);
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
    if (showCheckbox != null) {
      json["showCheckbox"] = hcJsonValue(showCheckbox);
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
    if (zIndex != null) {
      json["zIndex"] = zIndex;
    }
    if (zoomEnabled != null) {
      json["zoomEnabled"] = hcJsonValue(zoomEnabled);
    }
    return json;
  }
}
