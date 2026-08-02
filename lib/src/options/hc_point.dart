part of 'hc_options.dart';

/// (Highcharts, Highstock, Gantt) Accessibility options for a data point.
class HCPointAccessibilityOptionsObject implements HCOption {
  const HCPointAccessibilityOptionsObject({
    this.description,
    this.enabled,
  });

  /// (Highcharts, Highstock, Gantt) Provide a description of the data point, announced to screen readers.
  final String? description;

  /// (Highcharts, Highstock, Gantt) Set to false to disable accessibility functionality for a specific point. The point will not be included in keyboard navigation, and will not be exposed to assistive technology.
  final bool? enabled;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (description != null) {
      json['description'] = description;
    }
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Gantt) The individual point events.
class HCPointEventsOptionsObject implements HCOption {
  const HCPointEventsOptionsObject();

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    return json;
  }
}

/// (Highcharts, Highstock) Options for the point markers of line-like series.
class HCPointMarkerOptionsObject implements HCOption {
  const HCPointMarkerOptionsObject({
    this.animation,
    this.color,
    this.enabled,
    this.enabledThreshold,
    this.fillColor,
    this.fillOpacity,
    this.height,
    this.lineColor,
    this.lineWidth,
    this.radius,
    this.states,
    this.symbol,
    this.width,
  });

  /// (Highcharts, Highstock, Highmaps) Animation for the marker as it moves between values. Set to `false` to disable animation.
  final dynamic animation;

  /// (Highcharts, Highstock, Highmaps) The color of the marker.
  final dynamic color;

  /// (Highcharts, Highstock) Enable or disable the point marker. If `undefined`, the markers are hidden when the data is dense, and shown for more widespread data points.
  final bool? enabled;

  /// (Highcharts, Highstock) The threshold for how dense the point markers should be before they are hidden, given that `enabled` is not defined. The number indicates the horizontal distance between the two closest points in the series, as multiples of the `marker.radius`. In other words, the default val
  final num? enabledThreshold;

  /// (Highcharts, Highstock) The fill color of the point marker. When `undefined`, the series' or point's color is used.
  final dynamic fillColor;

  /// (Highcharts) The fill opacity of the bubble markers.
  final num? fillOpacity;

  /// (Highcharts, Highstock) Image markers only. Set the image width explicitly. When using this option, a `width` must also be set.
  final num? height;

  /// (Highcharts, Highstock) The color of the point marker's outline. When `undefined`, the series' or point's color is used.
  final dynamic lineColor;

  /// (Highcharts, Highstock) The width of the point marker's outline.
  final num? lineWidth;

  /// (Highcharts, Highstock) The radius of the point marker.
  final num? radius;

  /// (Highcharts, Highstock) States for a single point marker.
  final HCPointStatesOptionsObject? states;

  /// (Highcharts, Highstock) A predefined shape or symbol for the marker. When undefined, the symbol is pulled from options.symbols. Other possible values are `'circle'`, `'square'`,`'diamond'`, `'triangle'` and `'triangle-down'`.
  final String? symbol;

  /// (Highcharts, Highstock) Image markers only. Set the image width explicitly. When using this option, a `height` must also be set.
  final num? width;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (animation != null) {
      json['animation'] = hcJsonValue(animation);
    }
    if (color != null) {
      json['color'] = hcJsonValue(color);
    }
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    if (enabledThreshold != null) {
      json['enabledThreshold'] = enabledThreshold;
    }
    if (fillColor != null) {
      json['fillColor'] = hcJsonValue(fillColor);
    }
    if (fillOpacity != null) {
      json['fillOpacity'] = fillOpacity;
    }
    if (height != null) {
      json['height'] = height;
    }
    if (lineColor != null) {
      json['lineColor'] = hcJsonValue(lineColor);
    }
    if (lineWidth != null) {
      json['lineWidth'] = lineWidth;
    }
    if (radius != null) {
      json['radius'] = radius;
    }
    if (states != null) {
      json['states'] = states!.toJson();
    }
    if (symbol != null) {
      json['symbol'] = symbol;
    }
    if (width != null) {
      json['width'] = width;
    }
    return json;
  }
}

/// The generic point options for all series.
class HCPointOptionsObject implements HCOption {
  const HCPointOptionsObject({
    this.accessibility,
    this.borderColor,
    this.borderWidth,
    this.boxDashStyle,
    this.className,
    this.close,
    this.collapseButton,
    this.collapsed,
    this.color,
    this.colorIndex,
    this.colorValue,
    this.connectorColor,
    this.connectorWidth,
    this.custom,
    this.dashStyle,
    this.dataLabels,
    this.description,
    this.direction,
    this.dragDrop,
    this.drilldown,
    this.events,
    this.fillColor,
    this.from,
    this.gradientForSides,
    this.high,
    this.id,
    this.innerRadius,
    this.isIntermediateSum,
    this.isSum,
    this.label,
    this.labelrank,
    this.legendIndex,
    this.length,
    this.low,
    this.lowColor,
    this.marker,
    this.median,
    this.medianDashStyle,
    this.name,
    this.open,
    this.parent,
    this.pointPadding,
    this.pointWidth,
    this.q1,
    this.q3,
    this.radius,
    this.selected,
    this.sets,
    this.sliced,
    this.states,
    this.stemDashStyle,
    this.target,
    this.targetOptions,
    this.text,
    this.title,
    this.to,
    this.value,
    this.weight,
    this.whiskerDashStyle,
    this.x,
    this.y,
    this.z,
  });

  /// (Highcharts) Accessibility options for a data point.
  final HCPointAccessibilityOptionsObject? accessibility;

  /// (Highcharts, Highstock) The color of the border surrounding the column or bar.
  final dynamic borderColor;

  /// (Highcharts, Highstock) The width of the border surrounding the column or bar.
  final num? borderWidth;

  /// (Highcharts) The dash style of the box.
  final String? boxDashStyle;

  /// (Highcharts, Highstock, Gantt) An additional, individual class name for the data point's graphic representation. Changes to a point's color will also be reflected in a chart's legend and tooltip.
  final String? className;

  /// (Highstock) The closing value of each data point.
  final num? close;

  /// (Highcharts) Options used for button, which toggles the collapse status of the node.
  final dynamic collapseButton;

  /// (Highcharts) If point's children should be initially hidden
  final bool? collapsed;

  /// (Highcharts, Highstock, Gantt) Individual color for the point. By default the color is pulled from the global `colors` array.
  final dynamic color;

  /// (Highcharts, Gantt) A specific color index to use for the point, so its graphic representations are given the class name `highcharts-color-{n}`. In styled mode this will change the color of the graphic. In non-styled mode, the color is set by the `fill` attribute, so the change in class name won't h
  final num? colorIndex;

  /// (Highcharts) Serves a purpose only if a `colorAxis` object is defined in the chart options. This value will decide which color the point gets from the scale of the colorAxis.
  final num? colorValue;

  /// (Highcharts, Highstock) Color of the line that connects the dumbbell point's values. By default it is the series' color.
  final String? connectorColor;

  /// (Highcharts, Highstock) Pixel width of the line that connects the dumbbell point's values.
  final num? connectorWidth;

  /// (Highcharts) A reserved subspace to store options and values for customized functionality. Here you can add additional data for your own event callbacks and formatter callbacks.
  final HCDictionary? custom;

  /// (Highstock) A name for the dash style to use for the column or bar. Overrides dashStyle on the series.
  final String? dashStyle;

  /// (Highcharts, Highstock, Gantt) Individual data label for each point. The options are the same as the ones for plotOptions.series.dataLabels with exception of `zIndex` which is applied on the data label's parent group.
  final dynamic dataLabels;

  /// (Highcharts) The description of event. This description will be shown in tooltip.
  final String? description;

  /// (Highcharts, Highstock) The wind direction in degrees, where 0 is north (pointing towards south).
  final num? direction;

  /// (Highcharts) Point specific options for the draggable-points module. Overrides options on `series.dragDrop`.
  final HCSeriesLineDataDragDropOptions? dragDrop;

  /// (Highcharts) The `id` of a series in the drilldown.series array to use for a drilldown for this point.
  final String? drilldown;

  /// (Highcharts, Highstock, Gantt) The individual point events.
  final HCPointEventsOptionsObject? events;

  /// (Highstock) The fill color of an individual flag. By default it inherits from the series color.
  final dynamic fillColor;

  /// (Highcharts) The node that the link runs from.
  final String? from;

  /// (Highcharts) By default sides fill is set to a gradient through this option being set to `true`. Set to `false` to get solid color for the sides.
  final bool? gradientForSides;

  /// (Highcharts, Highstock) The high or maximum value for each data point.
  final num? high;

  /// (Highcharts, Highstock, Gantt) An id for the point. This can be used after render time to get a pointer to the point object through `chart.get()`.
  final String? id;

  /// (Highcharts) The inner radius of an individual point in a solid gauge. Can be given either as a pixel value (number), or as a percentage string, like `"50%"`. Defaults to match the `pane.innerSize` or the series-level `innerRadius` if set.
  final String? innerRadius;

  /// (Highcharts) When this property is true, the points acts as a summary column for the values added or subtracted since the last intermediate sum, or since the start of the series. The `y` value is ignored.
  final bool? isIntermediateSum;

  /// (Highcharts) When this property is true, the point display the total sum across the entire series. The `y` value is ignored.
  final bool? isSum;

  /// (Highcharts) The label of event.
  final String? label;

  /// (Highcharts) The rank for all this point's data labels in case of collision. If two data labels are about to overlap, only the one with the highest `labelrank` will be drawn.
  final num? labelrank;

  /// (Highcharts, Highmaps) The sequential index of the data point in the legend.
  final num? legendIndex;

  /// (Highcharts, Highstock) The length of the vector. The rendered length will relate to the `vectorLength` setting.
  final num? length;

  /// (Highcharts, Highstock) The low or minimum value for each data point.
  final num? low;

  /// (Highcharts, Highstock) Color of the start markers in a dumbbell graph. This option takes priority over the series color. To avoid this, set `lowColor` to `undefined`.
  final dynamic lowColor;

  /// (Highcharts, Highstock) Options for the point markers of line-like series.
  final HCPointMarkerOptionsObject? marker;

  /// (Highcharts) The median for each data point. This is drawn as a line through the middle area of the box.
  final num? median;

  /// (Highcharts) The dash style of the median.
  final String? medianDashStyle;

  /// (Highcharts) The name decides the text for a word.
  final String? name;

  /// (Highstock) The opening value of each data point.
  final num? open;

  /// (Highcharts) Only for treemap. Use this option to build a tree structure. The value should be the id of the point which is the parent. If no points has a matching id, or this option is undefined, then the parent will be set to the root.
  final String? parent;

  /// (Highcharts, Highmaps) Point padding for a single point.
  final num? pointPadding;

  /// (Highcharts, Highstock, Gantt) A pixel value specifying a fixed width for the column or bar. Overrides pointWidth on the series. The width effects the dimension that is not based on the point value.
  final num? pointWidth;

  /// (Highcharts) The lower quartile for each data point. This is the bottom of the box.
  final num? q1;

  /// (Highcharts) The higher quartile for each data point. This is the top of the box.
  final num? q3;

  /// (Highcharts) The outer radius of an individual point in a solid gauge. Can be given either as a pixel value (number), or as a percentage string, like `"100%"`. Defaults to match the `pane.size` or the series-level `radius` if set.
  final String? radius;

  /// (Highcharts, Highstock, Gantt) Whether the data point is selected initially.
  final bool? selected;

  /// (Highcharts) The set or sets the options will be applied to. If a single entry is defined, then it will create a new set. If more than one entry is defined, then it will define the overlap between the sets in the array.
  final List<String>? sets;

  /// (Highcharts, Highmaps) Whether to display a slice offset from the center.
  final bool? sliced;

  /// (Highcharts, Highstock) A collection of options for different series states.
  final HCSeriesStatesOptionsObject? states;

  /// (Highcharts) The dash style of the stem.
  final String? stemDashStyle;

  /// (Highcharts) The target value of a point.
  final num? target;

  /// (Highcharts) Individual target options for each point.
  final HCSeriesBulletDataTargetOptions? targetOptions;

  /// (Highstock) The longer text to be shown in the flag's tooltip.
  final String? text;

  /// (Highstock) The short text to be shown on the flag.
  final String? title;

  /// (Highcharts) The node that the link runs to.
  final String? to;

  /// (Highcharts, Highstock) The wind speed in meters per second.
  final num? value;

  /// (Highcharts) The weighting of a word. The weight decides the relative size of a word compared to the rest of the collection.
  final num? weight;

  /// (Highcharts) The dash style of the whiskers.
  final String? whiskerDashStyle;

  /// (Highcharts, Highstock) The x value of the point.
  final dynamic x;

  /// (Highcharts, Highstock) The y value of the point.
  final num? y;

  /// (Highcharts) The relative width for each column. On a category axis, the widths are distributed so they sum up to the X axis length. On linear and datetime axes, the columns will be laid out from the X value and Z units along the axis.
  final num? z;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (accessibility != null) {
      json['accessibility'] = accessibility!.toJson();
    }
    if (borderColor != null) {
      json['borderColor'] = hcJsonValue(borderColor);
    }
    if (borderWidth != null) {
      json['borderWidth'] = borderWidth;
    }
    if (boxDashStyle != null) {
      json['boxDashStyle'] = boxDashStyle;
    }
    if (className != null) {
      json['className'] = className;
    }
    if (close != null) {
      json['close'] = close;
    }
    if (collapseButton != null) {
      json['collapseButton'] = hcJsonValue(collapseButton);
    }
    if (collapsed != null) {
      json['collapsed'] = collapsed;
    }
    if (color != null) {
      json['color'] = hcJsonValue(color);
    }
    if (colorIndex != null) {
      json['colorIndex'] = colorIndex;
    }
    if (colorValue != null) {
      json['colorValue'] = colorValue;
    }
    if (connectorColor != null) {
      json['connectorColor'] = connectorColor;
    }
    if (connectorWidth != null) {
      json['connectorWidth'] = connectorWidth;
    }
    if (custom != null) {
      json['custom'] = custom!.toJson();
    }
    if (dashStyle != null) {
      json['dashStyle'] = dashStyle;
    }
    if (dataLabels != null) {
      json['dataLabels'] = hcJsonValue(dataLabels);
    }
    if (description != null) {
      json['description'] = description;
    }
    if (direction != null) {
      json['direction'] = direction;
    }
    if (dragDrop != null) {
      json['dragDrop'] = dragDrop!.toJson();
    }
    if (drilldown != null) {
      json['drilldown'] = drilldown;
    }
    if (events != null) {
      json['events'] = events!.toJson();
    }
    if (fillColor != null) {
      json['fillColor'] = hcJsonValue(fillColor);
    }
    if (from != null) {
      json['from'] = from;
    }
    if (gradientForSides != null) {
      json['gradientForSides'] = gradientForSides;
    }
    if (high != null) {
      json['high'] = high;
    }
    if (id != null) {
      json['id'] = id;
    }
    if (innerRadius != null) {
      json['innerRadius'] = innerRadius;
    }
    if (isIntermediateSum != null) {
      json['isIntermediateSum'] = isIntermediateSum;
    }
    if (isSum != null) {
      json['isSum'] = isSum;
    }
    if (label != null) {
      json['label'] = label;
    }
    if (labelrank != null) {
      json['labelrank'] = labelrank;
    }
    if (legendIndex != null) {
      json['legendIndex'] = legendIndex;
    }
    if (length != null) {
      json['length'] = length;
    }
    if (low != null) {
      json['low'] = low;
    }
    if (lowColor != null) {
      json['lowColor'] = hcJsonValue(lowColor);
    }
    if (marker != null) {
      json['marker'] = marker!.toJson();
    }
    if (median != null) {
      json['median'] = median;
    }
    if (medianDashStyle != null) {
      json['medianDashStyle'] = medianDashStyle;
    }
    if (name != null) {
      json['name'] = name;
    }
    if (open != null) {
      json['open'] = open;
    }
    if (parent != null) {
      json['parent'] = parent;
    }
    if (pointPadding != null) {
      json['pointPadding'] = pointPadding;
    }
    if (pointWidth != null) {
      json['pointWidth'] = pointWidth;
    }
    if (q1 != null) {
      json['q1'] = q1;
    }
    if (q3 != null) {
      json['q3'] = q3;
    }
    if (radius != null) {
      json['radius'] = radius;
    }
    if (selected != null) {
      json['selected'] = selected;
    }
    if (sets != null) {
      json['sets'] = sets;
    }
    if (sliced != null) {
      json['sliced'] = sliced;
    }
    if (states != null) {
      json['states'] = states!.toJson();
    }
    if (stemDashStyle != null) {
      json['stemDashStyle'] = stemDashStyle;
    }
    if (target != null) {
      json['target'] = target;
    }
    if (targetOptions != null) {
      json['targetOptions'] = targetOptions!.toJson();
    }
    if (text != null) {
      json['text'] = text;
    }
    if (title != null) {
      json['title'] = title;
    }
    if (to != null) {
      json['to'] = to;
    }
    if (value != null) {
      json['value'] = value;
    }
    if (weight != null) {
      json['weight'] = weight;
    }
    if (whiskerDashStyle != null) {
      json['whiskerDashStyle'] = whiskerDashStyle;
    }
    if (x != null) {
      json['x'] = hcJsonValue(x);
    }
    if (y != null) {
      json['y'] = y;
    }
    if (z != null) {
      json['z'] = z;
    }
    return json;
  }
}

/// (Highcharts, Highstock) The hover state for a single point marker.
class HCPointStatesHoverOptionsObject implements HCOption {
  const HCPointStatesHoverOptionsObject({
    this.animation,
    this.enabled,
    this.fillColor,
    this.height,
    this.heightPlus,
    this.lineColor,
    this.lineWidth,
    this.lineWidthPlus,
    this.radius,
    this.radiusPlus,
    this.width,
    this.widthPlus,
  });

  /// (Highcharts, Highstock) Animation when hovering over the marker.
  final dynamic animation;

  /// (Highcharts, Highstock) Enable or disable the point marker.
  final bool? enabled;

  /// (Highcharts, Highstock) The fill color of the marker in hover state. When `undefined`, the series' or point's fillColor for normal state is used.
  final dynamic fillColor;

  /// (Highcharts, Highmaps) Set the marker's fixed height on hover state.
  final num? height;

  /// (Highcharts, Highstock) The number of pixels to increase the height of the hovered point.
  final num? heightPlus;

  /// (Highcharts, Highstock) The color of the point marker's outline. When `undefined`, the series' or point's lineColor for normal state is used.
  final dynamic lineColor;

  /// (Highcharts, Highstock) The width of the point marker's outline. When `undefined`, the series' or point's lineWidth for normal state is used.
  final num? lineWidth;

  /// (Highcharts, Highstock) The additional line width for a hovered point.
  final num? lineWidthPlus;

  /// (Highcharts, Highstock) The radius of the point marker. In hover state, it defaults to the normal state's radius + 2 as per the radiusPlus option.
  final num? radius;

  /// (Highcharts, Highstock) The number of pixels to increase the radius of the hovered point.
  final num? radiusPlus;

  /// (Highcharts, Highmaps) Set the marker's fixed width on hover state.
  final num? width;

  /// (Highcharts, Highstock) The number of pixels to increase the width of the hovered point.
  final num? widthPlus;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (animation != null) {
      json['animation'] = hcJsonValue(animation);
    }
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    if (fillColor != null) {
      json['fillColor'] = hcJsonValue(fillColor);
    }
    if (height != null) {
      json['height'] = height;
    }
    if (heightPlus != null) {
      json['heightPlus'] = heightPlus;
    }
    if (lineColor != null) {
      json['lineColor'] = hcJsonValue(lineColor);
    }
    if (lineWidth != null) {
      json['lineWidth'] = lineWidth;
    }
    if (lineWidthPlus != null) {
      json['lineWidthPlus'] = lineWidthPlus;
    }
    if (radius != null) {
      json['radius'] = radius;
    }
    if (radiusPlus != null) {
      json['radiusPlus'] = radiusPlus;
    }
    if (width != null) {
      json['width'] = width;
    }
    if (widthPlus != null) {
      json['widthPlus'] = widthPlus;
    }
    return json;
  }
}

/// (Highcharts) The opposite state of a hover for a single point node. Applied to all not connected nodes to the hovered one.
class HCPointStatesInactiveOptionsObject implements HCOption {
  const HCPointStatesInactiveOptionsObject({
    this.animation,
    this.opacity,
  });

  /// (Highcharts) Animation when not hovering over the node.
  final dynamic animation;

  /// (Highcharts) Opacity of inactive markers.
  final num? opacity;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (animation != null) {
      json['animation'] = hcJsonValue(animation);
    }
    if (opacity != null) {
      json['opacity'] = opacity;
    }
    return json;
  }
}

/// (Highcharts, Highstock) The normal state of a single point marker. Currently only used for setting animation when returning to normal state from hover.
class HCPointStatesNormalOptionsObject implements HCOption {
  const HCPointStatesNormalOptionsObject({
    this.animation,
  });

  /// (Highcharts, Highstock) Animation when returning to normal state after hovering.
  final dynamic animation;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (animation != null) {
      json['animation'] = hcJsonValue(animation);
    }
    return json;
  }
}

/// (Highcharts, Highstock) States for a single point marker.
class HCPointStatesOptionsObject implements HCOption {
  const HCPointStatesOptionsObject({
    this.hover,
    this.inactive,
    this.normal,
    this.select,
  });

  /// (Highcharts, Highstock) The hover state for a single point marker.
  final HCPointStatesHoverOptionsObject? hover;

  /// (Highcharts) The opposite state of a hover for a single point node. Applied to all not connected nodes to the hovered one.
  final HCPointStatesInactiveOptionsObject? inactive;

  /// (Highcharts, Highstock) The normal state of a single point marker. Currently only used for setting animation when returning to normal state from hover.
  final HCPointStatesNormalOptionsObject? normal;

  /// (Highcharts, Highstock) The appearance of the point marker when selected. In order to allow a point to be selected, set the `series.allowPointSelect` option to true.
  final HCPointStatesSelectOptionsObject? select;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (hover != null) {
      json['hover'] = hover!.toJson();
    }
    if (inactive != null) {
      json['inactive'] = inactive!.toJson();
    }
    if (normal != null) {
      json['normal'] = normal!.toJson();
    }
    if (select != null) {
      json['select'] = select!.toJson();
    }
    return json;
  }
}

/// (Highcharts, Highstock) The appearance of the point marker when selected. In order to allow a point to be selected, set the `series.allowPointSelect` option to true.
class HCPointStatesSelectOptionsObject implements HCOption {
  const HCPointStatesSelectOptionsObject({
    this.enabled,
    this.fillColor,
    this.height,
    this.heightPlus,
    this.lineColor,
    this.lineWidth,
    this.radius,
    this.width,
    this.widthPlus,
  });

  /// (Highcharts, Highstock) Enable or disable visible feedback for selection.
  final bool? enabled;

  /// (Highcharts, Highstock) The fill color of the point marker.
  final dynamic fillColor;

  /// (Highcharts, Highmaps) Set the marker's fixed height on select state.
  final num? height;

  /// (Highcharts, Highstock) The number of pixels to increase the height of the hovered point.
  final num? heightPlus;

  /// (Highcharts, Highstock) The color of the point marker's outline. When `undefined`, the series' or point's color is used.
  final dynamic lineColor;

  /// (Highcharts, Highstock) The width of the point marker's outline.
  final num? lineWidth;

  /// (Highcharts, Highstock) The radius of the point marker. In hover state, it defaults to the normal state's radius + 2.
  final num? radius;

  /// (Highcharts, Highmaps) Set the marker's fixed width on select state.
  final num? width;

  /// (Highcharts, Highstock) The number of pixels to increase the width of the hovered point.
  final num? widthPlus;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    if (fillColor != null) {
      json['fillColor'] = hcJsonValue(fillColor);
    }
    if (height != null) {
      json['height'] = height;
    }
    if (heightPlus != null) {
      json['heightPlus'] = heightPlus;
    }
    if (lineColor != null) {
      json['lineColor'] = hcJsonValue(lineColor);
    }
    if (lineWidth != null) {
      json['lineWidth'] = lineWidth;
    }
    if (radius != null) {
      json['radius'] = radius;
    }
    if (width != null) {
      json['width'] = width;
    }
    if (widthPlus != null) {
      json['widthPlus'] = widthPlus;
    }
    return json;
  }
}
