part of 'hc_options.dart';

/// (Highcharts, Highstock) A vector plot is a type of cartesian chart where
class HCPlotVectorOptions implements HCOption {
  const HCPlotVectorOptions({
    this.accessibility,
    this.allowPointSelect,
    this.animation,
    this.animationLimit,
    this.className,
    this.clip,
    this.cluster,
    this.color,
    this.colorAxis,
    this.colorIndex,
    this.colorKey,
    this.compare,
    this.compareBase,
    this.compareStart,
    this.crisp,
    this.cumulative,
    this.cumulativeStart,
    this.cursor,
    this.custom,
    this.dataLabels,
    this.dataMapping,
    this.dataSorting,
    this.description,
    this.enableMouseTracking,
    this.events,
    this.findNearestPointBy,
    this.getExtremesFromAll,
    this.inactiveOtherPoints,
    this.includeInDataExport,
    this.keys,
    this.label,
    this.lastPrice,
    this.lastVisiblePrice,
    this.legendSymbol,
    this.lineWidth,
    this.linkedTo,
    this.marker,
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
    this.pointRange,
    this.pointStart,
    this.relativeXValue,
    this.rotationOrigin,
    this.selected,
    this.showCheckbox,
    this.showInLegend,
    this.showInNavigator,
    this.skipKeyboardNavigation,
    this.softThreshold,
    this.sonification,
    this.states,
    this.stickyTracking,
    this.threshold,
    this.tooltip,
    this.turboThreshold,
    this.vectorLength,
    this.visible,
    this.zoneAxis,
    this.zones,
    this.zoomEnabled,
  });

  /// (Highcharts, Highstock) Accessibility options for a series.
  final HCSeriesAccessibilityOptionsObject? accessibility;

  /// (Highcharts, Highstock) Allow this series' points to be selected by
  final dynamic allowPointSelect;

  /// (Highcharts, Highstock) Enable or disable the initial animation when
  final dynamic animation;

  /// (Highcharts, Highstock) For some series, there is a limit that shuts
  final num? animationLimit;

  /// (Highcharts, Highstock) An additional class name to apply to the
  final String? className;

  /// (Highcharts, Highstock) Disable this option to allow series rendering
  final dynamic clip;

  /// (Highcharts, Highmaps) Options for marker clusters, the concept of
  final HCPlotVectorClusterOptions? cluster;

  /// (Highcharts, Highstock) The main color of the series. In line type
  final dynamic color;

  /// (Highcharts, Highstock, Highmaps) When using dual or multiple color
  final dynamic colorAxis;

  /// (Highcharts, Highstock) Styled mode only. A specific color index to
  final num? colorIndex;

  /// (Highcharts, Highstock, Highmaps) Determines what data value should
  final String? colorKey;

  /// (Highstock) Compare the values of the series against the first
  final String? compare;

  /// (Highstock) When compare is `percent`, this option dictates whether
  final dynamic compareBase;

  /// (Highstock) Defines if comparison should start from the first point
  final dynamic compareStart;

  /// (Highcharts, Highstock, Gantt) When true, each point or column edge
  final dynamic crisp;

  /// (Highstock) Cumulative Sum feature replaces points' values with the
  final dynamic cumulative;

  /// (Highstock) Defines if cumulation should start from the first point
  final dynamic cumulativeStart;

  /// (Highcharts, Highstock) You can set the cursor to "pointer" if you
  final String? cursor;

  /// (Highcharts, Highstock) A reserved subspace to store options and
  final HCDictionary? custom;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for the series data
  final dynamic dataLabels;

  /// (Highcharts, Highstock) The mapping between the data table and the
  final HCDataMappingOptionsObject? dataMapping;

  /// (Highcharts, Highstock) Options for series data sorting.
  final HCPlotVectorDataSortingOptions? dataSorting;

  /// (Highcharts, Highstock) Deprecated. Use
  final String? description;

  /// (Highcharts, Highstock) Enable or disable the mouse tracking for a
  final dynamic enableMouseTracking;

  /// (Highcharts, Highstock) General event handlers for the series items.
  final HCSeriesEventsOptionsObject? events;

  /// (Highcharts, Highstock) Determines whether the series should look for
  final String? findNearestPointBy;

  /// (Highcharts, Highstock, Gantt) Whether to use the Y extremes of the
  final dynamic getExtremesFromAll;

  /// (Highcharts, Highstock) Highlight only the hovered point and fade the
  final dynamic inactiveOtherPoints;

  /// (Highcharts, Highstock) When set to `false` will prevent the series
  final dynamic includeInDataExport;

  /// (Highcharts, Highstock) An array specifying which option maps to
  final List<String>? keys;

  /// (Highcharts, Highstock, Gantt) Series labels are placed as close to
  final HCSeriesLabelOptionsObject? label;

  /// (Highstock) The line marks the last price from all points.
  final HCSeriesLastPriceOptionsObject? lastPrice;

  /// (Highstock) The line marks the last price from visible range of
  final HCSeriesLastVisiblePriceOptionsObject? lastVisiblePrice;

  /// (Highcharts, Highstock) What type of legend symbol to render for this
  final String? legendSymbol;

  /// (Highcharts, Highstock) The line width for each vector arrow.
  final num? lineWidth;

  /// (Highcharts, Highstock, Gantt) The id of another series to link to.
  final String? linkedTo;

  final String? marker;

  /// (Highstock) Options for the corresponding navigator series if
  final HCPlotSeriesOptions? navigatorOptions;

  /// (Highcharts, Highstock) The color for the parts of the graph or
  final dynamic negativeColor;

  /// (Highcharts, Highstock) Whether or not data-points with the value of
  final dynamic nullInteraction;

  /// (Highcharts, Highstock) Options for the _Series on point_ feature.
  final dynamic onPoint;

  /// (Highcharts, Highstock) Opacity of a series parts: line, fill (e.g.
  final num? opacity;

  /// (Highcharts, Highstock) Properties for each single point.
  final HCPlotSeriesPointOptions? point;

  /// (Highcharts, Highstock) Deprecated. Use
  final dynamic pointDescriptionFormat;

  /// (Highcharts, Highstock) Deprecated. Use
  final dynamic pointDescriptionFormatter;

  /// (Highcharts, Highstock, Gantt) If no x values are given for the
  final num? pointInterval;

  /// (Highcharts, Highstock, Gantt) On datetime series, this allows for
  final String? pointIntervalUnit;

  /// (Highstock) The width of each point on the x axis. For example in a
  final num? pointRange;

  /// (Highcharts, Highstock, Gantt) If no x values are given for the
  final dynamic pointStart;

  /// (Highcharts, Highstock) When true, X values in the data set are
  final dynamic relativeXValue;

  /// (Highcharts, Highstock) What part of the vector it should be rotated
  final String? rotationOrigin;

  /// (Highcharts, Highstock) Whether to select the series initially. If
  final dynamic selected;

  /// (Highcharts, Highstock) If true, a checkbox is displayed next to the
  final dynamic showCheckbox;

  /// (Highcharts, Highstock) Whether to display this particular series or
  final dynamic showInLegend;

  /// (Highstock) Whether or not to show the series in the navigator. Takes
  final dynamic showInNavigator;

  /// (Highcharts, Highstock) Deprecated. Use
  final dynamic skipKeyboardNavigation;

  /// (Highcharts, Highstock) When this is true, the series will not cause
  final dynamic softThreshold;

  /// (Highcharts, Highstock) Sonification/audio chart options for a
  final HCSeriesSonificationOptions? sonification;

  /// (Highcharts, Highstock) A collection of options for different series
  final HCSeriesStatesOptionsObject? states;

  /// (Highcharts, Highstock, Highmaps) Sticky tracking of mouse events.
  final dynamic stickyTracking;

  /// (Highcharts, Highstock) The threshold, also called zero level or base
  final num? threshold;

  /// (Highcharts, Highstock, Highmaps) A configuration object for the
  final HCSeriesTooltipOptionsObject? tooltip;

  /// (Highcharts, Highstock, Gantt) When a series contains a `data` array
  final num? turboThreshold;

  /// (Highcharts, Highstock) Maximum length of the arrows in the vector
  final num? vectorLength;

  /// (Highcharts, Highstock) Set the initial visibility of the series.
  final dynamic visible;

  /// (Highcharts, Highstock) Defines the Axis on which the zones are
  final String? zoneAxis;

  /// (Highcharts, Highstock) An array defining zones within a series.
  final List<HCSeriesZonesOptionsObject>? zones;

  /// (Highcharts, Highstock) Whether to zoom non-cartesian series. If
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
    if (compare != null) {
      json["compare"] = compare;
    }
    if (compareBase != null) {
      json["compareBase"] = hcJsonValue(compareBase);
    }
    if (compareStart != null) {
      json["compareStart"] = hcJsonValue(compareStart);
    }
    if (crisp != null) {
      json["crisp"] = hcJsonValue(crisp);
    }
    if (cumulative != null) {
      json["cumulative"] = hcJsonValue(cumulative);
    }
    if (cumulativeStart != null) {
      json["cumulativeStart"] = hcJsonValue(cumulativeStart);
    }
    if (cursor != null) {
      json["cursor"] = cursor;
    }
    if (custom != null) {
      json["custom"] = custom!.toJson();
    }
    if (dataLabels != null) {
      json["dataLabels"] = hcJsonValue(dataLabels);
    }
    if (dataMapping != null) {
      json["dataMapping"] = dataMapping!.toJson();
    }
    if (dataSorting != null) {
      json["dataSorting"] = dataSorting!.toJson();
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
    if (findNearestPointBy != null) {
      json["findNearestPointBy"] = findNearestPointBy;
    }
    if (getExtremesFromAll != null) {
      json["getExtremesFromAll"] = hcJsonValue(getExtremesFromAll);
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
    if (label != null) {
      json["label"] = label!.toJson();
    }
    if (lastPrice != null) {
      json["lastPrice"] = lastPrice!.toJson();
    }
    if (lastVisiblePrice != null) {
      json["lastVisiblePrice"] = lastVisiblePrice!.toJson();
    }
    if (legendSymbol != null) {
      json["legendSymbol"] = legendSymbol;
    }
    if (lineWidth != null) {
      json["lineWidth"] = lineWidth;
    }
    if (linkedTo != null) {
      json["linkedTo"] = linkedTo;
    }
    if (marker != null) {
      json["marker"] = marker;
    }
    if (navigatorOptions != null) {
      json["navigatorOptions"] = navigatorOptions!.toJson();
    }
    if (negativeColor != null) {
      json["negativeColor"] = hcJsonValue(negativeColor);
    }
    if (nullInteraction != null) {
      json["nullInteraction"] = hcJsonValue(nullInteraction);
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
    if (pointInterval != null) {
      json["pointInterval"] = pointInterval;
    }
    if (pointIntervalUnit != null) {
      json["pointIntervalUnit"] = pointIntervalUnit;
    }
    if (pointRange != null) {
      json["pointRange"] = pointRange;
    }
    if (pointStart != null) {
      json["pointStart"] = hcJsonValue(pointStart);
    }
    if (relativeXValue != null) {
      json["relativeXValue"] = hcJsonValue(relativeXValue);
    }
    if (rotationOrigin != null) {
      json["rotationOrigin"] = rotationOrigin;
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
    if (showInNavigator != null) {
      json["showInNavigator"] = hcJsonValue(showInNavigator);
    }
    if (skipKeyboardNavigation != null) {
      json["skipKeyboardNavigation"] = hcJsonValue(skipKeyboardNavigation);
    }
    if (softThreshold != null) {
      json["softThreshold"] = hcJsonValue(softThreshold);
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
    if (threshold != null) {
      json["threshold"] = threshold;
    }
    if (tooltip != null) {
      json["tooltip"] = tooltip!.toJson();
    }
    if (turboThreshold != null) {
      json["turboThreshold"] = turboThreshold;
    }
    if (vectorLength != null) {
      json["vectorLength"] = vectorLength;
    }
    if (visible != null) {
      json["visible"] = hcJsonValue(visible);
    }
    if (zoneAxis != null) {
      json["zoneAxis"] = zoneAxis;
    }
    if (zones != null) {
      json["zones"] = zones!.map((e) => e.toJson()).toList();
    }
    if (zoomEnabled != null) {
      json["zoomEnabled"] = hcJsonValue(zoomEnabled);
    }
    return json;
  }
}
