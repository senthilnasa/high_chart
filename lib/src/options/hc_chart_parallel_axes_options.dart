part of 'hc_options.dart';

/// (Highcharts) Common options for all yAxes rendered in a parallel coordinates
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

  /// (Highcharts) Accessibility options for an axis. Requires the
  final HCAxisAccessibilityOptionsObject? accessibility;

  /// (Highcharts, Highstock, Gantt) When using multiple axis, the ticks of two
  final dynamic alignTicks;

  /// (Highcharts) Whether to allow decimals in this axis' ticks. When counting
  final dynamic allowDecimals;

  /// (Highcharts, Gantt) If categories are present for the xAxis, names are
  final List<String>? categories;

  /// (Highcharts, Highstock, Gantt) The highest allowed value for
  final num? ceiling;

  /// (Highcharts) A class name that opens for styling the axis by CSS,
  final String? className;

  /// (Highcharts) Configure a crosshair that follows either the mouse pointer
  final dynamic crosshair;

  /// (Highcharts) The value on a perpendicular axis where this axis should
  final num? crossing;

  /// (Highcharts, Highstock, Gantt) For a datetime axis, the scale will
  final HCAxisDateTimeLabelFormatsOptions? dateTimeLabelFormats;

  /// (Highcharts) Whether to force the axis to end on a tick. Use this option
  final dynamic endOnTick;

  /// (Highcharts) Event handlers for the axis.
  final HCChartParallelAxesEventsOptions? events;

  /// (Highcharts, Highstock, Gantt) The lowest allowed value for automatically
  final num? floor;

  /// (Highcharts, Highstock, Gantt) The Z index of the grid lines.
  final num? gridZIndex;

  /// (Highcharts, Highstock) The height of the Y axis. If it's a number, it is
  final dynamic height;

  /// (Highcharts) The axis labels show the number or category for each tick.
  final HCChartParallelAxesLabelsOptions? labels;

  /// (Highcharts, Highstock) The left position as the horizontal axis. If it's
  final dynamic left;

  /// (Highcharts) The color of the line marking the axis itself.
  final dynamic lineColor;

  /// (Highcharts) The width of the line marking the axis itself.
  final num? lineWidth;

  /// (Highcharts, Highstock, Gantt) Index of another axis that this axis is
  final num? linkedTo;

  /// (Highcharts) If there are multiple axes on the same side of the chart,
  final num? margin;

  /// (Highcharts) The maximum value of the axis. If `undefined`, the max value
  final dynamic max;

  /// (Highcharts, Highstock, Gantt) Padding of the max value relative to the
  final num? maxPadding;

  /// (Highcharts) The minimum value of the axis. If `undefined`, the min value
  final dynamic min;

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

  /// (Highstock, Highcharts, Gantt) Whether to display the axis on the
  final dynamic opposite;

  /// (Highcharts) Refers to the index in the panes array. Used for circular
  final num? pane;

  /// (Highcharts) Whether to pan axis. If `chart.panning` is enabled, the
  final dynamic panningEnabled;

  /// (Highcharts) Whether to reverse the axis so that the highest number is
  final dynamic reversed;

  /// (Highcharts, Highstock) If `true`, the first series in a stack will be
  final dynamic reversedStacks;

  /// (Highcharts) Whether to show the axis line and title when the axis has no
  final dynamic showEmpty;

  /// (Highcharts) Whether to show the first tick label.
  final dynamic showFirstLabel;

  /// (Highcharts, Highstock, Gantt) Whether to show the last tick label.
  final dynamic showLastLabel;

  /// (Highcharts, Highstock, Gantt) A soft maximum for the axis. If the series
  final num? softMax;

  /// (Highcharts, Highstock, Gantt) A soft minimum for the axis. If the series
  final num? softMin;

  /// (Highcharts) Relevant only for pictorial series. The `stackShadow` forms
  final HCYAxisOptions? stackShadow;

  /// (Highcharts, Highstock, Gantt) For datetime axes, this decides where to
  final num? startOfWeek;

  /// (Highcharts, Highstock, Gantt) Whether to force the axis to start on a
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

  /// (Highcharts, Highstock, Gantt) The pixel width of the major tick marks.
  final num? tickWidth;

  /// (Highcharts) Visually the parallel coordinates titles are done through
  final HCChartParallelAxesTitleOptions? title;

  /// (Highcharts) Parallel coordinates only. Format that will be used for
  final String? tooltipValueFormat;

  /// (Highcharts, Highstock) The top position of the Y axis. If it's a number,
  final dynamic top;

  /// (Highcharts, Gantt) The type of axis. Can be one of `linear`,
  final String? type;

  /// (Highcharts, Gantt) Applies only when the axis `type` is `category`. When
  final dynamic uniqueNames;

  /// (Highcharts, Highstock, Gantt) Datetime axis only. An array determining
  final List<dynamic>? units;

  /// (Highcharts, Highstock, Gantt) Whether axis, including axis title, line,
  final dynamic visible;

  /// (Highcharts, Highstock) The width as the horizontal axis. If it's a
  final dynamic width;

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
    if (categories != null) {
      json["categories"] = categories;
    }
    if (ceiling != null) {
      json["ceiling"] = ceiling;
    }
    if (className != null) {
      json["className"] = className;
    }
    if (crosshair != null) {
      json["crosshair"] = hcJsonValue(crosshair);
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
    if (gridZIndex != null) {
      json["gridZIndex"] = gridZIndex;
    }
    if (height != null) {
      json["height"] = hcJsonValue(height);
    }
    if (labels != null) {
      json["labels"] = labels!.toJson();
    }
    if (left != null) {
      json["left"] = hcJsonValue(left);
    }
    if (lineColor != null) {
      json["lineColor"] = hcJsonValue(lineColor);
    }
    if (lineWidth != null) {
      json["lineWidth"] = lineWidth;
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
    if (min != null) {
      json["min"] = hcJsonValue(min);
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
    if (reversed != null) {
      json["reversed"] = hcJsonValue(reversed);
    }
    if (reversedStacks != null) {
      json["reversedStacks"] = hcJsonValue(reversedStacks);
    }
    if (showEmpty != null) {
      json["showEmpty"] = hcJsonValue(showEmpty);
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
    if (stackShadow != null) {
      json["stackShadow"] = stackShadow!.toJson();
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
    if (tooltipValueFormat != null) {
      json["tooltipValueFormat"] = tooltipValueFormat;
    }
    if (top != null) {
      json["top"] = hcJsonValue(top);
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
    if (zoomEnabled != null) {
      json["zoomEnabled"] = hcJsonValue(zoomEnabled);
    }
    return json;
  }
}
