part of 'hc_options.dart';

/// (Highcharts) The Z axis or depth axis for 3D plots.
class HCZAxisOptions implements HCOption {
  const HCZAxisOptions({
    this.accessibility,
    this.alignTicks,
    this.allowDecimals,
    this.alternateGridColor,
    this.angle,
    this.categories,
    this.ceiling,
    this.className,
    this.crossing,
    this.dateTimeLabelFormats,
    this.endOnTick,
    this.events,
    this.floor,
    this.gridLineColor,
    this.gridLineDashStyle,
    this.gridLineInterpolation,
    this.gridLineWidth,
    this.gridZIndex,
    this.id,
    this.labels,
    this.linkedTo,
    this.margin,
    this.max,
    this.maxPadding,
    this.maxZoom,
    this.min,
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
    this.minRange,
    this.minTickInterval,
    this.offset,
    this.opposite,
    this.pane,
    this.panningEnabled,
    this.plotBands,
    this.plotLines,
    this.reversed,
    this.reversedStacks,
    this.showFirstLabel,
    this.showLastLabel,
    this.softMax,
    this.softMin,
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
    this.type,
    this.uniqueNames,
    this.units,
    this.visible,
    this.zIndex,
    this.zoomEnabled,
  });

  /// (Highcharts) Accessibility options for an axis. Requires the
  final HCAxisAccessibilityOptionsObject? accessibility;

  /// (Highcharts, Highstock, Gantt) When using multiple axis, the ticks of two
  final dynamic alignTicks;

  /// (Highcharts) Whether to allow decimals in this axis' ticks. When counting
  final dynamic allowDecimals;

  /// (Highcharts) When using an alternate grid color, a band is painted across
  final dynamic alternateGridColor;

  /// (Highcharts) In a polar chart, this is the angle of the Y axis in
  final num? angle;

  /// (Highcharts, Gantt) If categories are present for the xAxis, names are
  final List<String>? categories;

  /// (Highcharts, Highstock, Gantt) The highest allowed value for
  final num? ceiling;

  /// (Highcharts) A class name that opens for styling the axis by CSS,
  final String? className;

  /// (Highcharts) The value on a perpendicular axis where this axis should
  final num? crossing;

  /// (Highcharts, Highstock, Gantt) For a datetime axis, the scale will
  final HCAxisDateTimeLabelFormatsOptions? dateTimeLabelFormats;

  /// (Highcharts) Whether to force the axis to end on a tick. Use this option
  final dynamic endOnTick;

  /// (Highcharts) Event handlers for the axis.
  final HCZAxisEventsOptions? events;

  /// (Highcharts, Highstock, Gantt) The lowest allowed value for automatically
  final num? floor;

  /// (Highcharts) Color of the grid lines extending the ticks across the plot
  final dynamic gridLineColor;

  /// (Highcharts) The dash or dot style of the grid lines. For possible
  final String? gridLineDashStyle;

  /// (Highcharts) Polar charts only. Whether the grid lines should draw as a
  final String? gridLineInterpolation;

  /// (Highcharts) The width of the grid lines extending the ticks across the
  final num? gridLineWidth;

  /// (Highcharts, Highstock, Gantt) The Z index of the grid lines.
  final num? gridZIndex;

  /// (Highcharts) An id for the axis. This can be used after render time to
  final String? id;

  /// (Highcharts) The axis labels show the number or category for each tick.
  final HCZAxisLabelsOptions? labels;

  /// (Highcharts, Highstock, Gantt) Index of another axis that this axis is
  final num? linkedTo;

  /// (Highcharts) If there are multiple axes on the same side of the chart,
  final num? margin;

  /// (Highcharts) The maximum value of the axis. If `undefined`, the max value
  final dynamic max;

  /// (Highcharts) Padding of the max value relative to the length of the axis.
  final num? maxPadding;

  /// (Highcharts, Highstock) Deprecated. Use `minRange` instead.
  final num? maxZoom;

  /// (Highcharts) The minimum value of the axis. If `undefined`, the min value
  final dynamic min;

  /// (Highcharts) Color of the minor, secondary grid lines.
  final dynamic minorGridLineColor;

  /// (Highcharts) The dash or dot style of the minor grid lines. For possible
  final String? minorGridLineDashStyle;

  /// (Highcharts) Width of the minor, secondary grid lines.
  final num? minorGridLineWidth;

  /// (Highcharts) Color for the minor tick marks.
  final dynamic minorTickColor;

  /// (Highcharts) Specific tick interval in axis units for the minor ticks. On
  final dynamic minorTickInterval;

  /// (Highcharts) The pixel length of the minor tick marks.
  final num? minorTickLength;

  /// (Highcharts) The position of the minor tick marks relative to the axis
  final String? minorTickPosition;

  /// (Highcharts) Enable or disable minor ticks. The interval between the
  final dynamic minorTicks;

  /// (Highcharts) The number of minor ticks per major tick. Works for
  final num? minorTicksPerMajor;

  /// (Highcharts) The pixel width of the minor tick mark.
  final num? minorTickWidth;

  /// (Highcharts, Highstock, Gantt) Padding of the min value relative to the
  final num? minPadding;

  /// (Highcharts) The minimum range to display on this axis. The entire axis
  final num? minRange;

  /// (Highcharts) The minimum tick interval allowed in axis values. For
  final num? minTickInterval;

  /// (Highcharts) The distance in pixels from the plot area to the axis line.
  final num? offset;

  /// (Highcharts) Whether to display the axis on the opposite side of the
  final dynamic opposite;

  /// (Highcharts) Refers to the index in the panes array. Used for circular
  final num? pane;

  /// (Highcharts) Whether to pan axis. If `chart.panning` is enabled, the
  final dynamic panningEnabled;

  /// (Highcharts, Highstock, Gantt) An array of colored bands stretching
  final List<HCZAxisPlotBandsOptions>? plotBands;

  /// (Highcharts, Highstock, Gantt) An array of lines stretching across the
  final List<HCZAxisPlotLinesOptions>? plotLines;

  /// (Highcharts) Whether to reverse the axis so that the highest number is
  final dynamic reversed;

  /// (Highcharts, Highstock) This option determines how stacks should be
  final dynamic reversedStacks;

  /// (Highcharts) Whether to show the first tick label.
  final dynamic showFirstLabel;

  /// (Highcharts, Highstock, Gantt) Whether to show the last tick label.
  final dynamic showLastLabel;

  /// (Highcharts, Highstock, Gantt) A soft maximum for the axis. If the series
  final num? softMax;

  /// (Highcharts, Highstock, Gantt) A soft minimum for the axis. If the series
  final num? softMin;

  /// (Highcharts, Highstock, Gantt) For datetime axes, this decides where to
  final num? startOfWeek;

  /// (Highcharts) Whether to force the axis to start on a tick. Use this
  final dynamic startOnTick;

  /// (Highcharts, Highstock, Gantt) For vertical axes only. Setting the static
  final num? staticScale;

  /// (Highcharts, Highstock, Gantt) The amount of ticks to draw on the axis.
  final num? tickAmount;

  /// (Highcharts) Color for the main tick marks.
  final dynamic tickColor;

  /// (Highcharts) The interval of the tick marks in axis units. When
  final num? tickInterval;

  /// (Highcharts) The pixel length of the main tick marks.
  final num? tickLength;

  /// (Highcharts, Gantt) For categorized axes only. If `on` the tick mark is
  final String? tickmarkPlacement;

  /// (Highcharts) If tickInterval is `null` this option sets the approximate
  final num? tickPixelInterval;

  /// (Highcharts) The position of the major tick marks relative to the axis
  final String? tickPosition;

  /// (Highcharts) An array defining where the ticks are laid out on the axis.
  final List<num>? tickPositions;

  /// (Highcharts) The pixel width of the major tick marks. Defaults to 0 on
  final num? tickWidth;

  /// (Highcharts) The axis title, showing next to the axis line.
  final HCZAxisTitleOptions? title;

  /// (Highcharts, Gantt) The type of axis. Can be one of `linear`,
  final String? type;

  /// (Highcharts, Gantt) Applies only when the axis `type` is `category`. When
  final dynamic uniqueNames;

  /// (Highcharts, Highstock, Gantt) Datetime axis only. An array determining
  final List<dynamic>? units;

  /// (Highcharts, Highstock, Gantt) Whether axis, including axis title, line,
  final dynamic visible;

  /// (Highcharts) The Z index for the axis group.
  final num? zIndex;

  /// (Highcharts) Whether to zoom axis. If `chart.zoomType` is set, the option
  final dynamic zoomEnabled;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (accessibility != null) {
      json["accessibility"] = accessibility!.toJson();
    }
    if (alignTicks != null) {
      json["alignTicks"] = hcJsonValue(alignTicks);
    }
    if (allowDecimals != null) {
      json["allowDecimals"] = hcJsonValue(allowDecimals);
    }
    if (alternateGridColor != null) {
      json["alternateGridColor"] = hcJsonValue(alternateGridColor);
    }
    if (angle != null) {
      json["angle"] = angle;
    }
    if (categories != null) {
      json["categories"] = categories;
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
    if (dateTimeLabelFormats != null) {
      json["dateTimeLabelFormats"] = dateTimeLabelFormats!.toJson();
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
    if (id != null) {
      json["id"] = id;
    }
    if (labels != null) {
      json["labels"] = labels!.toJson();
    }
    if (linkedTo != null) {
      json["linkedTo"] = linkedTo;
    }
    if (margin != null) {
      json["margin"] = margin;
    }
    if (max != null) {
      json["max"] = hcJsonValue(max);
    }
    if (maxPadding != null) {
      json["maxPadding"] = maxPadding;
    }
    if (maxZoom != null) {
      json["maxZoom"] = maxZoom;
    }
    if (min != null) {
      json["min"] = hcJsonValue(min);
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
    if (minRange != null) {
      json["minRange"] = minRange;
    }
    if (minTickInterval != null) {
      json["minTickInterval"] = minTickInterval;
    }
    if (offset != null) {
      json["offset"] = offset;
    }
    if (opposite != null) {
      json["opposite"] = hcJsonValue(opposite);
    }
    if (pane != null) {
      json["pane"] = pane;
    }
    if (panningEnabled != null) {
      json["panningEnabled"] = hcJsonValue(panningEnabled);
    }
    if (plotBands != null) {
      json["plotBands"] = plotBands!.map((e) => e.toJson()).toList();
    }
    if (plotLines != null) {
      json["plotLines"] = plotLines!.map((e) => e.toJson()).toList();
    }
    if (reversed != null) {
      json["reversed"] = hcJsonValue(reversed);
    }
    if (reversedStacks != null) {
      json["reversedStacks"] = hcJsonValue(reversedStacks);
    }
    if (showFirstLabel != null) {
      json["showFirstLabel"] = hcJsonValue(showFirstLabel);
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
      json["title"] = title!.toJson();
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
    if (zIndex != null) {
      json["zIndex"] = zIndex;
    }
    if (zoomEnabled != null) {
      json["zoomEnabled"] = hcJsonValue(zoomEnabled);
    }
    return json;
  }
}
