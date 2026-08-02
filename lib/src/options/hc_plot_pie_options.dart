part of 'hc_options.dart';

/// (Highcharts, Highmaps) A pie chart is a circular graphic which is divided
class HCPlotPieOptions implements HCOption {
  const HCPlotPieOptions({
    this.accessibility,
    this.allowPointSelect,
    this.animation,
    this.borderColor,
    this.borderRadius,
    this.borderWidth,
    this.center,
    this.className,
    this.clip,
    this.color,
    this.colorAxis,
    this.colorIndex,
    this.colorKey,
    this.colors,
    this.crisp,
    this.cursor,
    this.custom,
    this.dataLabels,
    this.dataMapping,
    this.depth,
    this.description,
    this.enableMouseTracking,
    this.endAngle,
    this.events,
    this.fillColor,
    this.gapSize,
    this.gapUnit,
    this.ignoreHiddenPoint,
    this.inactiveOtherPoints,
    this.includeInDataExport,
    this.innerSize,
    this.joinBy,
    this.keys,
    this.legendSymbol,
    this.legendSymbolColor,
    this.linecap,
    this.minSize,
    this.nullInteraction,
    this.onPoint,
    this.opacity,
    this.point,
    this.pointDescriptionFormat,
    this.pointDescriptionFormatter,
    this.relativeXValue,
    this.selected,
    this.shadow,
    this.showCheckbox,
    this.showInLegend,
    this.size,
    this.skipKeyboardNavigation,
    this.slicedOffset,
    this.sonification,
    this.startAngle,
    this.states,
    this.stickyTracking,
    this.thickness,
    this.tooltip,
    this.visible,
    this.zIndex,
    this.zoomEnabled,
  });

  /// (Highcharts, Highmaps) Accessibility options for a series.
  final HCSeriesAccessibilityOptionsObject? accessibility;

  /// (Highcharts, Highmaps) Allow this series' points to be selected by
  final dynamic allowPointSelect;

  /// (Highcharts, Highmaps) Enable or disable the initial animation when a
  final dynamic animation;

  /// (Highcharts, Highmaps) The color of the border surrounding each slice.
  final dynamic borderColor;

  /// (Highcharts, Highmaps) The corner radius of the border surrounding each
  final dynamic borderRadius;

  /// (Highcharts, Highmaps) The width of the border surrounding each slice.
  final num? borderWidth;

  /// (Highcharts, Highmaps) The center of the pie chart relative to the plot
  final dynamic center;

  /// (Highcharts, Highmaps) An additional class name to apply to the series'
  final String? className;

  /// (Highcharts) Disable this option to allow series rendering in the whole
  final dynamic clip;

  /// (Highcharts, Highmaps) The color of the pie series. A pie series is
  final dynamic color;

  /// (Highcharts, Highstock, Highmaps) When using dual or multiple color axes,
  final dynamic colorAxis;

  /// (Highcharts, Highmaps) Styled mode only. A specific color index to use
  final num? colorIndex;

  /// (Highcharts, Highstock, Highmaps) Determines what data value should be
  final String? colorKey;

  /// (Highcharts, Highmaps) A series specific or series type specific color
  final List<dynamic>? colors;

  /// (Highcharts, Highstock, Gantt) When true, each point or column edge is
  final dynamic crisp;

  /// (Highcharts, Highmaps) You can set the cursor to "pointer" if you have
  final String? cursor;

  /// (Highcharts, Highmaps) A reserved subspace to store options and values
  final HCDictionary? custom;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for the series data
  final dynamic dataLabels;

  /// (Highcharts, Highmaps) The mapping between the data table and the series
  final HCDataMappingOptionsObject? dataMapping;

  /// (Highcharts) The thickness of a 3D pie.
  final num? depth;

  /// (Highcharts, Highmaps) Deprecated. Use
  final String? description;

  /// (Highcharts, Highmaps) Enable or disable the mouse tracking for a
  final dynamic enableMouseTracking;

  /// (Highcharts, Highmaps) The end angle of the pie in degrees where 0 is top
  final num? endAngle;

  /// (Highcharts, Highmaps) General event handlers for the series items. These
  final HCSeriesEventsOptionsObject? events;

  /// (Highcharts, Highmaps) If the total sum of the pie's values is 0, the
  final dynamic fillColor;

  /// (Highcharts, Highstock) Defines when to display a gap in the graph,
  final num? gapSize;

  /// (Highcharts, Highstock) Together with gapSize, this option defines where
  final String? gapUnit;

  /// (Highcharts, Highmaps) Equivalent to chart.ignoreHiddenSeries, this
  final dynamic ignoreHiddenPoint;

  /// (Highcharts, Highmaps) Highlight only the hovered point and fade the
  final dynamic inactiveOtherPoints;

  /// (Highcharts, Highmaps) When set to `false` will prevent the series data
  final dynamic includeInDataExport;

  /// (Highcharts, Highmaps) The size of the inner diameter for the pie. A size
  final dynamic innerSize;

  /// (Highmaps) What property to join the `mapData` to the value data. For
  final dynamic joinBy;

  /// (Highcharts, Highmaps) An array specifying which option maps to which key
  final List<String>? keys;

  /// (Highcharts, Highmaps) What type of legend symbol to render for this
  final String? legendSymbol;

  /// (Highcharts, Highstock, Highmaps) Defines the color of the legend symbol
  final dynamic legendSymbolColor;

  /// (Highcharts, Highmaps) The line cap used for line ends and line joins on
  final String? linecap;

  /// (Highcharts, Highmaps) The minimum size for a pie in response to auto
  final dynamic minSize;

  /// (Highcharts, Highstock) Whether or not data-points with the value of
  final dynamic nullInteraction;

  /// (Highcharts, Highmaps) Options for the _Series on point_ feature. Only
  final dynamic onPoint;

  /// (Highcharts, Highmaps) Opacity of a series parts: line, fill (e.g. area)
  final num? opacity;

  /// (Highcharts, Highmaps) Properties for each single point.
  final HCPlotSeriesPointOptions? point;

  /// (Highcharts, Highmaps) Deprecated. Use
  final dynamic pointDescriptionFormat;

  /// (Highcharts, Highmaps) Deprecated. Use
  final dynamic pointDescriptionFormatter;

  /// (Highcharts, Highstock) When true, X values in the data set are relative
  final dynamic relativeXValue;

  /// (Highcharts, Highmaps) Whether to select the series initially. If
  final dynamic selected;

  /// (Highcharts, Highmaps) Whether to apply a drop shadow to the graph line.
  final dynamic shadow;

  /// (Highcharts, Highmaps) If true, a checkbox is displayed next to the
  final dynamic showCheckbox;

  /// (Highcharts, Highmaps) Whether to display this particular series or
  final dynamic showInLegend;

  /// (Highcharts, Highmaps) The diameter of the pie relative to the plot area.
  final dynamic size;

  /// (Highcharts, Highmaps) Deprecated. Use
  final dynamic skipKeyboardNavigation;

  /// (Highcharts, Highmaps) If a point is sliced, moved out from the center,
  final num? slicedOffset;

  /// (Highcharts, Highmaps) Sonification/audio chart options for a series.
  final HCSeriesSonificationOptions? sonification;

  /// (Highcharts, Highmaps) The start angle of the pie slices in degrees where
  final num? startAngle;

  /// (Highcharts, Highmaps) A collection of options for different series
  final HCSeriesStatesOptionsObject? states;

  /// (Highcharts, Highmaps) Sticky tracking of mouse events. When true, the
  final dynamic stickyTracking;

  /// (Highcharts) Thickness describing the ring size for a donut type chart,
  final num? thickness;

  /// (Highcharts, Highmaps) A configuration object for the tooltip rendering
  final HCSeriesTooltipOptionsObject? tooltip;

  /// (Highcharts, Highmaps) Set the initial visibility of the series.
  final dynamic visible;

  /// (Highmaps) Define the z index of the series.
  final num? zIndex;

  /// (Highcharts, Highmaps) Whether to zoom non-cartesian series. If
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
    if (borderColor != null) {
      json["borderColor"] = hcJsonValue(borderColor);
    }
    if (borderRadius != null) {
      json["borderRadius"] = hcJsonValue(borderRadius);
    }
    if (borderWidth != null) {
      json["borderWidth"] = borderWidth;
    }
    if (center != null) {
      json["center"] = hcJsonValue(center);
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
    if (colorIndex != null) {
      json["colorIndex"] = colorIndex;
    }
    if (colorKey != null) {
      json["colorKey"] = colorKey;
    }
    if (colors != null) {
      json["colors"] = colors!.map((e) => hcJsonValue(e)).toList();
    }
    if (crisp != null) {
      json["crisp"] = hcJsonValue(crisp);
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
    if (depth != null) {
      json["depth"] = depth;
    }
    if (description != null) {
      json["description"] = description;
    }
    if (enableMouseTracking != null) {
      json["enableMouseTracking"] = hcJsonValue(enableMouseTracking);
    }
    if (endAngle != null) {
      json["endAngle"] = endAngle;
    }
    if (events != null) {
      json["events"] = events!.toJson();
    }
    if (fillColor != null) {
      json["fillColor"] = hcJsonValue(fillColor);
    }
    if (gapSize != null) {
      json["gapSize"] = gapSize;
    }
    if (gapUnit != null) {
      json["gapUnit"] = gapUnit;
    }
    if (ignoreHiddenPoint != null) {
      json["ignoreHiddenPoint"] = hcJsonValue(ignoreHiddenPoint);
    }
    if (inactiveOtherPoints != null) {
      json["inactiveOtherPoints"] = hcJsonValue(inactiveOtherPoints);
    }
    if (includeInDataExport != null) {
      json["includeInDataExport"] = hcJsonValue(includeInDataExport);
    }
    if (innerSize != null) {
      json["innerSize"] = hcJsonValue(innerSize);
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
    if (legendSymbolColor != null) {
      json["legendSymbolColor"] = hcJsonValue(legendSymbolColor);
    }
    if (linecap != null) {
      json["linecap"] = linecap;
    }
    if (minSize != null) {
      json["minSize"] = hcJsonValue(minSize);
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
    if (relativeXValue != null) {
      json["relativeXValue"] = hcJsonValue(relativeXValue);
    }
    if (selected != null) {
      json["selected"] = hcJsonValue(selected);
    }
    if (shadow != null) {
      json["shadow"] = hcJsonValue(shadow);
    }
    if (showCheckbox != null) {
      json["showCheckbox"] = hcJsonValue(showCheckbox);
    }
    if (showInLegend != null) {
      json["showInLegend"] = hcJsonValue(showInLegend);
    }
    if (size != null) {
      json["size"] = hcJsonValue(size);
    }
    if (skipKeyboardNavigation != null) {
      json["skipKeyboardNavigation"] = hcJsonValue(skipKeyboardNavigation);
    }
    if (slicedOffset != null) {
      json["slicedOffset"] = slicedOffset;
    }
    if (sonification != null) {
      json["sonification"] = sonification!.toJson();
    }
    if (startAngle != null) {
      json["startAngle"] = startAngle;
    }
    if (states != null) {
      json["states"] = states!.toJson();
    }
    if (stickyTracking != null) {
      json["stickyTracking"] = hcJsonValue(stickyTracking);
    }
    if (thickness != null) {
      json["thickness"] = thickness;
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
