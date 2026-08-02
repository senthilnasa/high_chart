part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps) A color axis for series. Visually, the
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

  /// (Highcharts, Highstock, Highmaps) Accessibility options for an axis.
  final HCAxisAccessibilityOptionsObject? accessibility;

  /// (Highcharts, Highstock, Highmaps) Whether to allow decimals on the color
  final dynamic allowDecimals;

  /// (Highcharts) In a polar chart, this is the angle of the Y axis in
  final num? angle;

  /// (Highcharts, Highstock, Gantt) The highest allowed value for
  final num? ceiling;

  /// (Highcharts, Highstock, Highmaps) A class name that opens for styling the
  final String? className;

  /// (Highcharts, Highstock, Highmaps) The value on a perpendicular axis where
  final num? crossing;

  /// (Highcharts, Highstock, Highmaps) Determines how to set each data class'
  final String? dataClassColor;

  /// (Highcharts, Highstock, Highmaps) An array of data classes or ranges for
  final List<HCColorAxisDataClassesOptions>? dataClasses;

  /// (Highcharts, Highstock, Highmaps) Whether to force the axis to end on a
  final dynamic endOnTick;

  /// (Highcharts, Highstock, Highmaps) Event handlers for the axis.
  final HCColorAxisEventsOptions? events;

  /// (Highcharts, Highstock, Gantt) The lowest allowed value for automatically
  final num? floor;

  /// (Highcharts, Highstock, Highmaps) Color of the grid lines extending from
  final dynamic gridLineColor;

  /// (Highcharts, Highstock, Highmaps) The dash or dot style of the grid
  final String? gridLineDashStyle;

  /// (Highcharts) Polar charts only. Whether the grid lines should draw as a
  final String? gridLineInterpolation;

  /// (Highcharts, Highstock, Highmaps) The width of the grid lines extending
  final num? gridLineWidth;

  /// (Highcharts, Highstock, Gantt) The Z index of the grid lines.
  final num? gridZIndex;

  /// (Highcharts, Highstock, Highmaps) The height of the color axis. If it's a
  final dynamic height;

  /// (Highcharts, Highstock, Highmaps) An id for the axis. This can be used
  final String? id;

  /// (Highcharts, Highstock, Highmaps) The axis labels show the number for
  final HCColorAxisLabelsOptions? labels;

  /// (Highcharts, Highstock, Highmaps) The layout of the color axis. Can be
  final String? layout;

  /// (Highcharts, Highstock, Highmaps) The color of the line marking the axis
  final dynamic lineColor;

  /// (Highcharts, Highstock, Highmaps) If there are multiple axes on the same
  final num? margin;

  /// (Highcharts, Highstock, Highmaps) The triangular marker on a scalar color
  final HCPointMarkerOptionsObject? marker;

  /// (Highcharts, Highstock, Highmaps) The maximum value of the axis in terms
  final num? max;

  /// (Highcharts, Highstock, Highmaps) The color to represent the maximum of
  final dynamic maxColor;

  /// (Highcharts, Highstock, Highmaps) Padding of the max value relative to
  final num? maxPadding;

  /// (Highstock, Gantt) Maximum range which can be set using the navigator's
  final num? maxRange;

  /// (Highcharts, Highstock, Highmaps) The minimum value of the axis in terms
  final num? min;

  /// (Highcharts, Highstock, Highmaps) The color to represent the minimum of
  final dynamic minColor;

  /// (Highcharts, Highstock, Highmaps) Color of the minor, secondary grid
  final dynamic minorGridLineColor;

  /// (Highcharts, Highstock, Highmaps) The dash or dot style of the minor grid
  final String? minorGridLineDashStyle;

  /// (Highcharts, Highstock, Highmaps) Width of the minor, secondary grid
  final num? minorGridLineWidth;

  /// (Highcharts, Highstock, Highmaps) Color for the minor tick marks.
  final dynamic minorTickColor;

  /// (Highcharts, Highstock, Highmaps) Specific tick interval in axis units
  final dynamic minorTickInterval;

  /// (Highcharts, Highstock, Highmaps) The pixel length of the minor tick
  final num? minorTickLength;

  /// (Highcharts, Highstock, Highmaps) The position of the minor tick marks
  final String? minorTickPosition;

  /// (Highcharts, Highstock, Highmaps) Enable or disable minor ticks. The
  final dynamic minorTicks;

  /// (Highcharts, Highstock, Highmaps) The number of minor ticks per major
  final num? minorTicksPerMajor;

  /// (Highcharts, Highstock, Highmaps) The pixel width of the minor tick mark.
  final num? minorTickWidth;

  /// (Highcharts, Highstock, Highmaps) Padding of the min value relative to
  final num? minPadding;

  /// (Highstock) In an ordinal axis, the points are equally spaced in the
  final dynamic ordinal;

  /// (Highstock) Additional range on the right side of the xAxis. Works
  final dynamic overscroll;

  /// (Highcharts, Highstock, Highmaps) Whether to pan axis. If `chart.panning`
  final dynamic panningEnabled;

  /// (Highstock) The zoomed range to display when only defining one or none of
  final num? range;

  /// (Highcharts, Highstock, Highmaps) Whether to reverse the axis so that the
  final dynamic reversed;

  /// (Highcharts, Highstock, Highmaps) Whether to show the first tick label.
  final dynamic showFirstLabel;

  /// (Highcharts, Highstock, Highmaps) Whether to display the colorAxis in the
  final dynamic showInLegend;

  /// (Highcharts, Highstock, Gantt) Whether to show the last tick label.
  final dynamic showLastLabel;

  /// (Highcharts, Highstock, Gantt) A soft maximum for the axis. If the series
  final num? softMax;

  /// (Highcharts, Highstock, Gantt) A soft minimum for the axis. If the series
  final num? softMin;

  /// (Highcharts, Highstock, Gantt) For datetime axes, this decides where to
  final num? startOfWeek;

  /// (Highcharts, Highstock, Highmaps) Whether to force the axis to start on a
  final dynamic startOnTick;

  /// (Highcharts, Highstock, Gantt) For vertical axes only. Setting the static
  final num? staticScale;

  /// (Highcharts, Highstock, Highmaps) Color stops for the gradient of a
  final List<dynamic>? stops;

  /// (Highcharts, Highstock, Gantt) The amount of ticks to draw on the axis.
  final num? tickAmount;

  /// (Highcharts, Highstock, Highmaps) Color for the main tick marks.
  final dynamic tickColor;

  /// (Highcharts, Highstock, Highmaps) The interval of the tick marks in axis
  final num? tickInterval;

  /// (Highcharts, Highstock, Highmaps) The pixel length of the main tick marks
  final num? tickLength;

  /// (Highcharts, Gantt) For categorized axes only. If `on` the tick mark is
  final String? tickmarkPlacement;

  /// (Highcharts, Highstock, Highmaps) If tickInterval is `null` this option
  final num? tickPixelInterval;

  /// (Highcharts, Highstock, Highmaps) The position of the major tick marks
  final String? tickPosition;

  /// (Highcharts, Highstock, Highmaps) An array defining where the ticks are
  final List<num>? tickPositions;

  /// (Highcharts, Highstock, Highmaps) The pixel width of the major tick
  final num? tickWidth;

  /// (Highcharts, Highstock, Highmaps) The color axis title. Displayed
  final dynamic title;

  /// (Highcharts, Highstock, Highmaps) The type of interpolation to use for
  final String? type;

  /// (Highcharts, Gantt) Applies only when the axis `type` is `category`. When
  final dynamic uniqueNames;

  /// (Highcharts, Highstock, Gantt) Datetime axis only. An array determining
  final List<dynamic>? units;

  /// (Highcharts, Highstock, Gantt) Whether axis, including axis title, line,
  final dynamic visible;

  /// (Highcharts, Highstock, Highmaps) The width of the color axis. If it's a
  final dynamic width;

  /// (Highcharts, Highstock, Highmaps) The Z index for the axis group.
  final num? zIndex;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (accessibility != null) {
      json["accessibility"] = accessibility!.toJson();
    }
    if (allowDecimals != null) {
      json["allowDecimals"] = hcJsonValue(allowDecimals);
    }
    if (angle != null) {
      json["angle"] = angle;
    }
    if (ceiling != null) {
      json["ceiling"] = ceiling;
    }
    if (className != null) {
      json["className"] = className;
    }
    if (crossing != null) {
      json["crossing"] = crossing;
    }
    if (dataClassColor != null) {
      json["dataClassColor"] = dataClassColor;
    }
    if (dataClasses != null) {
      json["dataClasses"] = dataClasses!.map((e) => e.toJson()).toList();
    }
    if (endOnTick != null) {
      json["endOnTick"] = hcJsonValue(endOnTick);
    }
    if (events != null) {
      json["events"] = events!.toJson();
    }
    if (floor != null) {
      json["floor"] = floor;
    }
    if (gridLineColor != null) {
      json["gridLineColor"] = hcJsonValue(gridLineColor);
    }
    if (gridLineDashStyle != null) {
      json["gridLineDashStyle"] = gridLineDashStyle;
    }
    if (gridLineInterpolation != null) {
      json["gridLineInterpolation"] = gridLineInterpolation;
    }
    if (gridLineWidth != null) {
      json["gridLineWidth"] = gridLineWidth;
    }
    if (gridZIndex != null) {
      json["gridZIndex"] = gridZIndex;
    }
    if (height != null) {
      json["height"] = hcJsonValue(height);
    }
    if (id != null) {
      json["id"] = id;
    }
    if (labels != null) {
      json["labels"] = labels!.toJson();
    }
    if (layout != null) {
      json["layout"] = layout;
    }
    if (lineColor != null) {
      json["lineColor"] = hcJsonValue(lineColor);
    }
    if (margin != null) {
      json["margin"] = margin;
    }
    if (marker != null) {
      json["marker"] = marker!.toJson();
    }
    if (max != null) {
      json["max"] = max;
    }
    if (maxColor != null) {
      json["maxColor"] = hcJsonValue(maxColor);
    }
    if (maxPadding != null) {
      json["maxPadding"] = maxPadding;
    }
    if (maxRange != null) {
      json["maxRange"] = maxRange;
    }
    if (min != null) {
      json["min"] = min;
    }
    if (minColor != null) {
      json["minColor"] = hcJsonValue(minColor);
    }
    if (minorGridLineColor != null) {
      json["minorGridLineColor"] = hcJsonValue(minorGridLineColor);
    }
    if (minorGridLineDashStyle != null) {
      json["minorGridLineDashStyle"] = minorGridLineDashStyle;
    }
    if (minorGridLineWidth != null) {
      json["minorGridLineWidth"] = minorGridLineWidth;
    }
    if (minorTickColor != null) {
      json["minorTickColor"] = hcJsonValue(minorTickColor);
    }
    if (minorTickInterval != null) {
      json["minorTickInterval"] = hcJsonValue(minorTickInterval);
    }
    if (minorTickLength != null) {
      json["minorTickLength"] = minorTickLength;
    }
    if (minorTickPosition != null) {
      json["minorTickPosition"] = minorTickPosition;
    }
    if (minorTicks != null) {
      json["minorTicks"] = hcJsonValue(minorTicks);
    }
    if (minorTicksPerMajor != null) {
      json["minorTicksPerMajor"] = minorTicksPerMajor;
    }
    if (minorTickWidth != null) {
      json["minorTickWidth"] = minorTickWidth;
    }
    if (minPadding != null) {
      json["minPadding"] = minPadding;
    }
    if (ordinal != null) {
      json["ordinal"] = hcJsonValue(ordinal);
    }
    if (overscroll != null) {
      json["overscroll"] = hcJsonValue(overscroll);
    }
    if (panningEnabled != null) {
      json["panningEnabled"] = hcJsonValue(panningEnabled);
    }
    if (range != null) {
      json["range"] = range;
    }
    if (reversed != null) {
      json["reversed"] = hcJsonValue(reversed);
    }
    if (showFirstLabel != null) {
      json["showFirstLabel"] = hcJsonValue(showFirstLabel);
    }
    if (showInLegend != null) {
      json["showInLegend"] = hcJsonValue(showInLegend);
    }
    if (showLastLabel != null) {
      json["showLastLabel"] = hcJsonValue(showLastLabel);
    }
    if (softMax != null) {
      json["softMax"] = softMax;
    }
    if (softMin != null) {
      json["softMin"] = softMin;
    }
    if (startOfWeek != null) {
      json["startOfWeek"] = startOfWeek;
    }
    if (startOnTick != null) {
      json["startOnTick"] = hcJsonValue(startOnTick);
    }
    if (staticScale != null) {
      json["staticScale"] = staticScale;
    }
    if (stops != null) {
      json["stops"] = stops!.map((e) => hcJsonValue(e)).toList();
    }
    if (tickAmount != null) {
      json["tickAmount"] = tickAmount;
    }
    if (tickColor != null) {
      json["tickColor"] = hcJsonValue(tickColor);
    }
    if (tickInterval != null) {
      json["tickInterval"] = tickInterval;
    }
    if (tickLength != null) {
      json["tickLength"] = tickLength;
    }
    if (tickmarkPlacement != null) {
      json["tickmarkPlacement"] = tickmarkPlacement;
    }
    if (tickPixelInterval != null) {
      json["tickPixelInterval"] = tickPixelInterval;
    }
    if (tickPosition != null) {
      json["tickPosition"] = tickPosition;
    }
    if (tickPositions != null) {
      json["tickPositions"] = tickPositions;
    }
    if (tickWidth != null) {
      json["tickWidth"] = tickWidth;
    }
    if (title != null) {
      json["title"] = hcJsonValue(title);
    }
    if (type != null) {
      json["type"] = type;
    }
    if (uniqueNames != null) {
      json["uniqueNames"] = hcJsonValue(uniqueNames);
    }
    if (units != null) {
      json["units"] = units!.map((e) => hcJsonValue(e)).toList();
    }
    if (visible != null) {
      json["visible"] = hcJsonValue(visible);
    }
    if (width != null) {
      json["width"] = hcJsonValue(width);
    }
    if (zIndex != null) {
      json["zIndex"] = zIndex;
    }
    return json;
  }
}
