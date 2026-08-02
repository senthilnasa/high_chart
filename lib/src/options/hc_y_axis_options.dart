part of 'hc_options.dart';

/// (Highcharts) Relevant only for pictorial series. The `stackShadow` forms the
class HCYAxisOptions implements HCOption {
  const HCYAxisOptions({
    this.accessibility,
    this.alignTicks,
    this.allowDecimals,
    this.alternateGridColor,
    this.angle,
    this.borderColor,
    this.borderWidth,
    this.breaks,
    this.categories,
    this.ceiling,
    this.className,
    this.color,
    this.crosshair,
    this.crossing,
    this.dateTimeLabelFormats,
    this.enabled,
    this.endOnTick,
    this.events,
    this.floor,
    this.grid,
    this.gridLineColor,
    this.gridLineDashStyle,
    this.gridLineInterpolation,
    this.gridLineWidth,
    this.gridZIndex,
    this.height,
    this.id,
    this.labels,
    this.left,
    this.lineColor,
    this.lineWidth,
    this.linkedTo,
    this.margin,
    this.max,
    this.maxColor,
    this.maxLength,
    this.maxPadding,
    this.maxRange,
    this.maxZoom,
    this.min,
    this.minColor,
    this.minLength,
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
    this.range,
    this.resize,
    this.reversed,
    this.reversedStacks,
    this.scrollbar,
    this.showEmpty,
    this.showFirstLabel,
    this.showLastLabel,
    this.softMax,
    this.softMin,
    this.stackLabels,
    this.stackShadow,
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

  /// (Highcharts, Highstock, Highmaps, Gantt) Accessibility options for an
  final HCAxisAccessibilityOptionsObject? accessibility;

  /// (Highcharts, Highstock, Gantt) When using multiple axis, the ticks of two
  final dynamic alignTicks;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to allow decimals in
  final dynamic allowDecimals;

  /// (Highcharts, Highstock, Highmaps, Gantt) When using an alternate grid
  final dynamic alternateGridColor;

  /// (Highcharts) In a polar chart, this is the angle of the Y axis in
  final num? angle;

  /// (Highcharts) The color of the `stackShadow` border.
  final dynamic borderColor;

  /// (Highcharts) The width of the `stackShadow` border.
  final num? borderWidth;

  /// (Highcharts, Highstock, Gantt) An array defining breaks in the axis, the
  final List<HCYAxisBreaksOptions>? breaks;

  /// (Highcharts, Gantt) If categories are present for the xAxis, names are
  final List<String>? categories;

  /// (Highcharts, Highstock, Gantt) The highest allowed value for
  final num? ceiling;

  /// (Highcharts, Highstock, Highmaps, Gantt) A class name that opens for
  final String? className;

  /// (Highcharts) The color of the `stackShadow`.
  final dynamic color;

  /// (Highcharts, Highstock, Highmaps, Gantt) Configure a crosshair that
  final dynamic crosshair;

  /// (Highcharts, Highstock, Highmaps, Gantt) The value on a perpendicular
  final num? crossing;

  /// (Highcharts, Highstock, Gantt) For a datetime axis, the scale will
  final HCAxisDateTimeLabelFormatsOptions? dateTimeLabelFormats;

  /// (Highcharts) Enable or disable `stackShadow`.
  final dynamic enabled;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to force the axis to end
  final dynamic endOnTick;

  /// (Highcharts, Highstock, Highmaps, Gantt) Event handlers for the axis.
  final HCYAxisEventsOptions? events;

  /// (Highcharts, Highstock, Gantt) The lowest allowed value for automatically
  final num? floor;

  /// (Gantt) Set grid options for the axis labels. Requires Highcharts Gantt.
  final HCYAxisGridOptions? grid;

  /// (Highcharts, Highstock, Highmaps, Gantt) Color of the grid lines
  final dynamic gridLineColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) The dash or dot style of the
  final String? gridLineDashStyle;

  /// (Highcharts) Polar charts only. Whether the grid lines should draw as a
  final String? gridLineInterpolation;

  /// (Highcharts, Highstock, Highmaps, Gantt) The width of the grid lines
  final num? gridLineWidth;

  /// (Highcharts, Highstock, Gantt) The Z index of the grid lines.
  final num? gridZIndex;

  /// (Highcharts, Highstock) The height of the Y axis. If it's a number, it is
  final dynamic height;

  /// (Highcharts, Highstock, Highmaps, Gantt) An id for the axis. This can be
  final String? id;

  /// (Highcharts, Highstock, Highmaps, Gantt) The axis labels show the number
  final HCYAxisLabelsOptions? labels;

  /// (Highcharts, Highstock) The left position as the horizontal axis. If it's
  final dynamic left;

  /// (Highcharts, Highstock, Highmaps, Gantt) The color of the line marking
  final dynamic lineColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) The width of the line marking
  final num? lineWidth;

  /// (Highcharts, Highstock, Gantt) Index of another axis that this axis is
  final num? linkedTo;

  /// (Highcharts, Highstock, Highmaps, Gantt) If there are multiple axes on
  final num? margin;

  /// (Highcharts, Highstock, Highmaps, Gantt) The maximum value of the axis.
  final dynamic max;

  /// (Highcharts) Solid gauge only. Unless stops are set, the color to
  final dynamic maxColor;

  /// (Highstock) Maximal size of a resizable axis. Could be set as a percent
  final dynamic maxLength;

  /// (Highcharts, Highstock, Gantt) Padding of the max value relative to the
  final num? maxPadding;

  /// (Highstock, Gantt) Maximum range which can be set using the navigator's
  final num? maxRange;

  /// (Highcharts, Highstock) Deprecated. Use `minRange` instead.
  final num? maxZoom;

  /// (Highcharts, Highstock, Highmaps, Gantt) The minimum value of the axis.
  final dynamic min;

  /// (Highcharts) Solid gauge only. Unless stops are set, the color to
  final dynamic minColor;

  /// (Highstock) Minimal size of a resizable axis. Could be set as a percent
  final dynamic minLength;

  /// (Highcharts, Highstock, Highmaps, Gantt) Color of the minor, secondary
  final dynamic minorGridLineColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) The dash or dot style of the
  final String? minorGridLineDashStyle;

  /// (Highcharts, Highstock, Highmaps, Gantt) Width of the minor, secondary
  final num? minorGridLineWidth;

  /// (Highcharts, Highstock, Highmaps, Gantt) Color for the minor tick marks.
  final dynamic minorTickColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) Specific tick interval in axis
  final dynamic minorTickInterval;

  /// (Highcharts, Highstock, Highmaps, Gantt) The pixel length of the minor
  final num? minorTickLength;

  /// (Highcharts, Highstock, Highmaps, Gantt) The position of the minor tick
  final String? minorTickPosition;

  /// (Highcharts, Highstock, Highmaps, Gantt) Enable or disable minor ticks.
  final dynamic minorTicks;

  /// (Highcharts, Highstock, Highmaps, Gantt) The number of minor ticks per
  final num? minorTicksPerMajor;

  /// (Highcharts, Highstock, Highmaps, Gantt) The pixel width of the minor
  final num? minorTickWidth;

  /// (Highcharts, Highstock, Gantt) Padding of the min value relative to the
  final num? minPadding;

  /// (Highcharts, Highstock, Highmaps, Gantt) The minimum range to display on
  final num? minRange;

  /// (Highcharts, Highstock, Highmaps, Gantt) The minimum tick interval
  final num? minTickInterval;

  /// (Highcharts, Highstock, Highmaps, Gantt) The distance in pixels from the
  final num? offset;

  /// (Highstock, Highcharts, Gantt) Whether to display the axis on the
  final dynamic opposite;

  /// (Highcharts) Refers to the index in the panes array. Used for circular
  final num? pane;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to pan axis. If
  final dynamic panningEnabled;

  /// (Highcharts, Highstock, Gantt) An array of colored bands stretching
  final List<HCYAxisPlotBandsOptions>? plotBands;

  /// (Highcharts, Highstock, Gantt) An array of lines stretching across the
  final List<HCYAxisPlotLinesOptions>? plotLines;

  /// (Highstock) The zoomed range to display when only defining one or none of
  final num? range;

  /// (Highstock) Options for axis resizing. It adds a thick line between panes
  final HCYAxisResizeOptions? resize;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to reverse the axis so
  final dynamic reversed;

  /// (Highcharts, Highstock) If `true`, the first series in a stack will be
  final dynamic reversedStacks;

  /// (Highstock) An optional scrollbar to display on the Y axis in response to
  final HCYAxisScrollbarOptions? scrollbar;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to show the axis line
  final dynamic showEmpty;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to show the first tick
  final dynamic showFirstLabel;

  /// (Highcharts, Highstock, Gantt) Whether to show the last tick label.
  final dynamic showLastLabel;

  /// (Highcharts, Highstock, Gantt) A soft maximum for the axis. If the series
  final num? softMax;

  /// (Highcharts, Highstock, Gantt) A soft minimum for the axis. If the series
  final num? softMin;

  /// (Highcharts) The stack labels show the total value for each bar in a
  final HCYAxisStackLabelsOptions? stackLabels;

  /// (Highcharts) Relevant only for pictorial series. The `stackShadow` forms
  final HCYAxisOptions? stackShadow;

  /// (Highcharts, Highstock, Gantt) For datetime axes, this decides where to
  final num? startOfWeek;

  /// (Highcharts, Highstock, Gantt) Whether to force the axis to start on a
  final dynamic startOnTick;

  /// (Highcharts, Highstock, Gantt) For vertical axes only. Setting the static
  final num? staticScale;

  /// (Highcharts) Solid gauge series only. Color stops for the solid gauge.
  final List<dynamic>? stops;

  /// (Highcharts, Highstock, Gantt) The amount of ticks to draw on the axis.
  final num? tickAmount;

  /// (Highcharts, Highstock, Highmaps, Gantt) Color for the main tick marks.
  final dynamic tickColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) The interval of the tick marks
  final num? tickInterval;

  /// (Highcharts, Highstock, Highmaps, Gantt) The pixel length of the main
  final num? tickLength;

  /// (Highcharts, Gantt) For categorized axes only. If `on` the tick mark is
  final String? tickmarkPlacement;

  /// (Highcharts, Highstock, Highmaps, Gantt) If tickInterval is `null` this
  final num? tickPixelInterval;

  /// (Highcharts, Highstock, Highmaps, Gantt) The position of the major tick
  final String? tickPosition;

  /// (Highcharts, Highstock, Highmaps, Gantt) An array defining where the
  final List<num>? tickPositions;

  /// (Highcharts, Highstock, Gantt) The pixel width of the major tick marks.
  final num? tickWidth;

  /// (Highcharts, Highstock, Highmaps, Gantt) The axis title, showing next to
  final HCYAxisTitleOptions? title;

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

  /// (Highcharts, Highstock, Highmaps, Gantt) The Z index for the axis group.
  final num? zIndex;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to zoom axis. If
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
    if (borderColor != null) {
      json["borderColor"] = hcJsonValue(borderColor);
    }
    if (borderWidth != null) {
      json["borderWidth"] = borderWidth;
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
    if (color != null) {
      json["color"] = hcJsonValue(color);
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
    if (enabled != null) {
      json["enabled"] = hcJsonValue(enabled);
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
    if (maxColor != null) {
      json["maxColor"] = hcJsonValue(maxColor);
    }
    if (maxLength != null) {
      json["maxLength"] = hcJsonValue(maxLength);
    }
    if (maxPadding != null) {
      json["maxPadding"] = maxPadding;
    }
    if (maxRange != null) {
      json["maxRange"] = maxRange;
    }
    if (maxZoom != null) {
      json["maxZoom"] = maxZoom;
    }
    if (min != null) {
      json["min"] = hcJsonValue(min);
    }
    if (minColor != null) {
      json["minColor"] = hcJsonValue(minColor);
    }
    if (minLength != null) {
      json["minLength"] = hcJsonValue(minLength);
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
    if (range != null) {
      json["range"] = range;
    }
    if (resize != null) {
      json["resize"] = resize!.toJson();
    }
    if (reversed != null) {
      json["reversed"] = hcJsonValue(reversed);
    }
    if (reversedStacks != null) {
      json["reversedStacks"] = hcJsonValue(reversedStacks);
    }
    if (scrollbar != null) {
      json["scrollbar"] = scrollbar!.toJson();
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
    if (stackLabels != null) {
      json["stackLabels"] = stackLabels!.toJson();
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
