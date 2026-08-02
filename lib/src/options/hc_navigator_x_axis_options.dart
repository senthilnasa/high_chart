part of 'hc_options.dart';

/// (Highstock, Gantt) Options for the navigator X axis. Default series options
class HCNavigatorXAxisOptions implements HCOption {
  const HCNavigatorXAxisOptions({
    this.accessibility,
    this.alignTicks,
    this.allowDecimals,
    this.alternateGridColor,
    this.breaks,
    this.categories,
    this.ceiling,
    this.className,
    this.crosshair,
    this.crossing,
    this.currentDateIndicator,
    this.dateTimeLabelFormats,
    this.endOnTick,
    this.events,
    this.floor,
    this.grid,
    this.gridLineColor,
    this.gridLineDashStyle,
    this.gridLineWidth,
    this.gridZIndex,
    this.height,
    this.id,
    this.labels,
    this.left,
    this.lineColor,
    this.lineWidth,
    this.margin,
    this.max,
    this.maxPadding,
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
    this.minTickInterval,
    this.offset,
    this.ordinal,
    this.overscroll,
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
    this.top,
    this.type,
    this.uniqueNames,
    this.units,
    this.visible,
    this.width,
    this.zIndex,
    this.zoomEnabled,
  });

  /// (Highstock, Gantt) Accessibility options for an axis. Requires the
  final HCAxisAccessibilityOptionsObject? accessibility;

  /// (Highcharts, Highstock, Gantt) When using multiple axis, the ticks of two
  final dynamic alignTicks;

  /// (Highstock, Gantt) Whether to allow decimals in this axis' ticks. When
  final dynamic allowDecimals;

  /// (Highstock, Gantt) When using an alternate grid color, a band is painted
  final dynamic alternateGridColor;

  /// (Highcharts, Highstock, Gantt) An array defining breaks in the axis, the
  final List<HCNavigatorXAxisBreaksOptions>? breaks;

  /// (Highcharts, Gantt) If categories are present for the xAxis, names are
  final List<String>? categories;

  /// (Highcharts, Highstock, Gantt) The highest allowed value for
  final num? ceiling;

  /// (Highstock, Gantt) A class name that opens for styling the axis by CSS,
  final String? className;

  /// (Highstock, Gantt) Configure a crosshair that follows either the mouse
  final dynamic crosshair;

  /// (Highstock, Gantt) The value on a perpendicular axis where this axis
  final num? crossing;

  /// (Gantt) Show an indicator on the axis for the current date and time. Can
  final dynamic currentDateIndicator;

  /// (Highcharts, Highstock, Gantt) For a datetime axis, the scale will
  final HCAxisDateTimeLabelFormatsOptions? dateTimeLabelFormats;

  /// (Highstock, Gantt) Whether to force the axis to end on a tick. Use this
  final dynamic endOnTick;

  /// (Highstock, Gantt) Event handlers for the axis.
  final HCNavigatorXAxisEventsOptions? events;

  /// (Highcharts, Highstock, Gantt) The lowest allowed value for automatically
  final num? floor;

  /// (Gantt) Set grid options for the axis labels. Requires Highcharts Gantt.
  final HCNavigatorXAxisGridOptions? grid;

  /// (Highstock, Gantt) Color of the grid lines extending the ticks across the
  final String? gridLineColor;

  /// (Highstock, Gantt) The dash or dot style of the grid lines. For possible
  final String? gridLineDashStyle;

  /// (Highstock, Gantt) The width of the grid lines extending the ticks across
  final num? gridLineWidth;

  /// (Highcharts, Highstock, Gantt) The Z index of the grid lines.
  final num? gridZIndex;

  /// (Highcharts, Highstock) The height as the vertical axis. If it's a
  final dynamic height;

  /// (Highstock, Gantt) An id for the axis. This can be used after render time
  final String? id;

  /// (Highstock, Gantt) The axis labels show the number or category for each
  final HCNavigatorXAxisLabelsOptions? labels;

  /// (Highcharts, Highstock) The left position as the horizontal axis. If it's
  final dynamic left;

  /// (Highstock, Gantt) The color of the line marking the axis itself.
  final dynamic lineColor;

  /// (Highstock, Gantt) The width of the line marking the axis itself.
  final num? lineWidth;

  /// (Highstock, Gantt) If there are multiple axes on the same side of the
  final num? margin;

  /// (Highstock, Gantt) The maximum value of the axis. If `undefined`, the max
  final dynamic max;

  /// (Highstock, Gantt) Padding of the max value relative to the length of the
  final num? maxPadding;

  /// (Highstock, Gantt) The minimum value of the axis. If `undefined`, the min
  final dynamic min;

  /// (Highstock, Gantt) Color of the minor, secondary grid lines.
  final dynamic minorGridLineColor;

  /// (Highstock, Gantt) The dash or dot style of the minor grid lines. For
  final String? minorGridLineDashStyle;

  /// (Highstock, Gantt) Width of the minor, secondary grid lines.
  final num? minorGridLineWidth;

  /// (Highstock, Gantt) Color for the minor tick marks.
  final dynamic minorTickColor;

  /// (Highstock, Gantt) Specific tick interval in axis units for the minor
  final dynamic minorTickInterval;

  /// (Highstock, Gantt) The pixel length of the minor tick marks.
  final num? minorTickLength;

  /// (Highstock, Gantt) The position of the minor tick marks relative to the
  final String? minorTickPosition;

  /// (Highstock, Gantt) Enable or disable minor ticks. The interval between
  final dynamic minorTicks;

  /// (Highstock, Gantt) The number of minor ticks per major tick. Works for
  final num? minorTicksPerMajor;

  /// (Highstock, Gantt) The pixel width of the minor tick mark.
  final num? minorTickWidth;

  /// (Highcharts, Highstock, Gantt) Padding of the min value relative to the
  final num? minPadding;

  /// (Highstock, Gantt) The minimum tick interval allowed in axis values. For
  final num? minTickInterval;

  /// (Highstock, Gantt) The distance in pixels from the plot area to the axis
  final num? offset;

  /// (Highstock) In an ordinal axis, the points are equally spaced in the
  final dynamic ordinal;

  /// (Highstock) Additional range on the right side of the xAxis. Works
  final dynamic overscroll;

  /// (Highstock, Gantt) Whether to pan axis. If `chart.panning` is enabled,
  final dynamic panningEnabled;

  /// (Highcharts, Highstock, Gantt) An array of colored bands stretching
  final List<HCNavigatorXAxisPlotBandsOptions>? plotBands;

  /// (Highcharts, Highstock, Gantt) An array of lines stretching across the
  final List<HCNavigatorXAxisPlotLinesOptions>? plotLines;

  /// (Highstock, Gantt) Whether to reverse the axis so that the highest number
  final dynamic reversed;

  /// (Highcharts, Highstock) This option determines how stacks should be
  final dynamic reversedStacks;

  /// (Highstock, Gantt) Whether to show the first tick label.
  final dynamic showFirstLabel;

  /// (Highcharts, Highstock, Gantt) Whether to show the last tick label.
  final dynamic showLastLabel;

  /// (Highcharts, Highstock, Gantt) A soft maximum for the axis. If the series
  final num? softMax;

  /// (Highcharts, Highstock, Gantt) A soft minimum for the axis. If the series
  final num? softMin;

  /// (Highcharts, Highstock, Gantt) For datetime axes, this decides where to
  final num? startOfWeek;

  /// (Highstock, Gantt) Whether to force the axis to start on a tick. Use this
  final dynamic startOnTick;

  /// (Highcharts, Highstock, Gantt) For vertical axes only. Setting the static
  final num? staticScale;

  /// (Highcharts, Highstock, Gantt) The amount of ticks to draw on the axis.
  final num? tickAmount;

  /// (Highstock, Gantt) Color for the main tick marks.
  final dynamic tickColor;

  /// (Highstock, Gantt) The interval of the tick marks in axis units. When
  final num? tickInterval;

  /// (Highstock, Gantt) The pixel length of the main tick marks.
  final num? tickLength;

  /// (Highcharts, Gantt) For categorized axes only. If `on` the tick mark is
  final String? tickmarkPlacement;

  /// (Highstock, Gantt) If tickInterval is `null` this option sets the
  final num? tickPixelInterval;

  /// (Highstock, Gantt) The position of the major tick marks relative to the
  final String? tickPosition;

  /// (Highstock, Gantt) An array defining where the ticks are laid out on the
  final List<num>? tickPositions;

  /// (Highstock, Gantt) The pixel width of the major tick marks. Defaults to 0
  final num? tickWidth;

  /// (Highstock, Gantt) The axis title, showing next to the axis line.
  final HCNavigatorXAxisTitleOptions? title;

  /// (Highcharts, Highstock) The top position as the vertical axis. If it's a
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

  /// (Highstock, Gantt) The Z index for the axis group.
  final num? zIndex;

  /// (Highstock, Gantt) Whether to zoom axis. If `chart.zoomType` is set, the
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
    if (breaks != null) {
      json["breaks"] = breaks!.map((e) => e.toJson()).toList();
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
    if (currentDateIndicator != null) {
      json["currentDateIndicator"] = hcJsonValue(currentDateIndicator);
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
    if (grid != null) {
      json["grid"] = grid!.toJson();
    }
    if (gridLineColor != null) {
      json["gridLineColor"] = gridLineColor;
    }
    if (gridLineDashStyle != null) {
      json["gridLineDashStyle"] = gridLineDashStyle;
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
    if (left != null) {
      json["left"] = hcJsonValue(left);
    }
    if (lineColor != null) {
      json["lineColor"] = hcJsonValue(lineColor);
    }
    if (lineWidth != null) {
      json["lineWidth"] = lineWidth;
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
    if (minTickInterval != null) {
      json["minTickInterval"] = minTickInterval;
    }
    if (offset != null) {
      json["offset"] = offset;
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
