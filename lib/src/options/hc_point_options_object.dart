part of 'hc_options.dart';

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

  /// (Highcharts, Highstock) The color of the border surrounding the column or
  final dynamic borderColor;

  /// (Highcharts, Highstock) The width of the border surrounding the column or
  final num? borderWidth;

  /// (Highcharts) The dash style of the box.
  final String? boxDashStyle;

  /// (Highcharts, Highstock, Gantt) An additional, individual class name for
  final String? className;

  /// (Highstock) The closing value of each data point.
  final num? close;

  /// (Highcharts) Options used for button, which toggles the collapse status
  final dynamic collapseButton;

  /// (Highcharts) If point's children should be initially hidden
  final dynamic collapsed;

  /// (Highcharts, Highstock, Gantt) Individual color for the point. By default
  final dynamic color;

  /// (Highcharts, Gantt) A specific color index to use for the point, so its
  final num? colorIndex;

  /// (Highcharts) Serves a purpose only if a `colorAxis` object is defined in
  final num? colorValue;

  /// (Highcharts, Highstock) Color of the line that connects the dumbbell
  final String? connectorColor;

  /// (Highcharts, Highstock) Pixel width of the line that connects the
  final num? connectorWidth;

  /// (Highcharts) A reserved subspace to store options and values for
  final HCDictionary? custom;

  /// (Highstock) A name for the dash style to use for the column or bar.
  final String? dashStyle;

  /// (Highcharts, Highstock, Gantt) Individual data label for each point. The
  final dynamic dataLabels;

  /// (Highcharts) The description of event. This description will be shown in
  final String? description;

  /// (Highcharts, Highstock) The wind direction in degrees, where 0 is north
  final num? direction;

  /// (Highcharts) Point specific options for the draggable-points module.
  final HCSeriesLineDataDragDropOptions? dragDrop;

  /// (Highcharts) The `id` of a series in the drilldown.series array to use
  final String? drilldown;

  /// (Highcharts, Highstock, Gantt) The individual point events.
  final HCPointEventsOptionsObject? events;

  /// (Highstock) The fill color of an individual flag. By default it inherits
  final dynamic fillColor;

  /// (Highcharts) The node that the link runs from.
  final String? from;

  /// (Highcharts) By default sides fill is set to a gradient through this
  final dynamic gradientForSides;

  /// (Highcharts, Highstock) The high or maximum value for each data point.
  final num? high;

  /// (Highcharts, Highstock, Gantt) An id for the point. This can be used
  final String? id;

  /// (Highcharts) The inner radius of an individual point in a solid gauge.
  final String? innerRadius;

  /// (Highcharts) When this property is true, the points acts as a summary
  final dynamic isIntermediateSum;

  /// (Highcharts) When this property is true, the point display the total sum
  final dynamic isSum;

  /// (Highcharts) The label of event.
  final String? label;

  /// (Highcharts) The rank for all this point's data labels in case of
  final num? labelrank;

  /// (Highcharts, Highmaps) The sequential index of the data point in the
  final num? legendIndex;

  /// (Highcharts, Highstock) The length of the vector. The rendered length
  final num? length;

  /// (Highcharts, Highstock) The low or minimum value for each data point.
  final num? low;

  /// (Highcharts, Highstock) Color of the start markers in a dumbbell graph.
  final dynamic lowColor;

  /// (Highcharts, Highstock) Options for the point markers of line-like
  final HCPointMarkerOptionsObject? marker;

  /// (Highcharts) The median for each data point. This is drawn as a line
  final num? median;

  /// (Highcharts) The dash style of the median.
  final String? medianDashStyle;

  /// (Highcharts) The name decides the text for a word.
  final String? name;

  /// (Highstock) The opening value of each data point.
  final num? open;

  /// (Highcharts) Only for treemap. Use this option to build a tree structure.
  final String? parent;

  /// (Highcharts, Highmaps) Point padding for a single point.
  final num? pointPadding;

  /// (Highcharts, Highstock, Gantt) A pixel value specifying a fixed width for
  final num? pointWidth;

  /// (Highcharts) The lower quartile for each data point. This is the bottom
  final num? q1;

  /// (Highcharts) The higher quartile for each data point. This is the top of
  final num? q3;

  /// (Highcharts) The outer radius of an individual point in a solid gauge.
  final String? radius;

  /// (Highcharts, Highstock, Gantt) Whether the data point is selected
  final dynamic selected;

  /// (Highcharts) The set or sets the options will be applied to. If a single
  final List<String>? sets;

  /// (Highcharts, Highmaps) Whether to display a slice offset from the center.
  final dynamic sliced;

  /// (Highcharts, Highstock) A collection of options for different series
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

  /// (Highcharts) The weighting of a word. The weight decides the relative
  final num? weight;

  /// (Highcharts) The dash style of the whiskers.
  final String? whiskerDashStyle;

  /// (Highcharts, Highstock) The x value of the point.
  final dynamic x;

  /// (Highcharts, Highstock) The y value of the point.
  final num? y;

  /// (Highcharts) The relative width for each column. On a category axis, the
  final num? z;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (accessibility != null) {
      json["accessibility"] = accessibility!.toJson();
    }
    if (borderColor != null) {
      json["borderColor"] = hcJsonValue(borderColor);
    }
    if (borderWidth != null) {
      json["borderWidth"] = borderWidth;
    }
    if (boxDashStyle != null) {
      json["boxDashStyle"] = boxDashStyle;
    }
    if (className != null) {
      json["className"] = className;
    }
    if (close != null) {
      json["close"] = close;
    }
    if (collapseButton != null) {
      json["collapseButton"] = hcJsonValue(collapseButton);
    }
    if (collapsed != null) {
      json["collapsed"] = hcJsonValue(collapsed);
    }
    if (color != null) {
      json["color"] = hcJsonValue(color);
    }
    if (colorIndex != null) {
      json["colorIndex"] = colorIndex;
    }
    if (colorValue != null) {
      json["colorValue"] = colorValue;
    }
    if (connectorColor != null) {
      json["connectorColor"] = connectorColor;
    }
    if (connectorWidth != null) {
      json["connectorWidth"] = connectorWidth;
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
    if (description != null) {
      json["description"] = description;
    }
    if (direction != null) {
      json["direction"] = direction;
    }
    if (dragDrop != null) {
      json["dragDrop"] = dragDrop!.toJson();
    }
    if (drilldown != null) {
      json["drilldown"] = drilldown;
    }
    if (events != null) {
      json["events"] = events!.toJson();
    }
    if (fillColor != null) {
      json["fillColor"] = hcJsonValue(fillColor);
    }
    if (from != null) {
      json["from"] = from;
    }
    if (gradientForSides != null) {
      json["gradientForSides"] = hcJsonValue(gradientForSides);
    }
    if (high != null) {
      json["high"] = high;
    }
    if (id != null) {
      json["id"] = id;
    }
    if (innerRadius != null) {
      json["innerRadius"] = innerRadius;
    }
    if (isIntermediateSum != null) {
      json["isIntermediateSum"] = hcJsonValue(isIntermediateSum);
    }
    if (isSum != null) {
      json["isSum"] = hcJsonValue(isSum);
    }
    if (label != null) {
      json["label"] = label;
    }
    if (labelrank != null) {
      json["labelrank"] = labelrank;
    }
    if (legendIndex != null) {
      json["legendIndex"] = legendIndex;
    }
    if (length != null) {
      json["length"] = length;
    }
    if (low != null) {
      json["low"] = low;
    }
    if (lowColor != null) {
      json["lowColor"] = hcJsonValue(lowColor);
    }
    if (marker != null) {
      json["marker"] = marker!.toJson();
    }
    if (median != null) {
      json["median"] = median;
    }
    if (medianDashStyle != null) {
      json["medianDashStyle"] = medianDashStyle;
    }
    if (name != null) {
      json["name"] = name;
    }
    if (open != null) {
      json["open"] = open;
    }
    if (parent != null) {
      json["parent"] = parent;
    }
    if (pointPadding != null) {
      json["pointPadding"] = pointPadding;
    }
    if (pointWidth != null) {
      json["pointWidth"] = pointWidth;
    }
    if (q1 != null) {
      json["q1"] = q1;
    }
    if (q3 != null) {
      json["q3"] = q3;
    }
    if (radius != null) {
      json["radius"] = radius;
    }
    if (selected != null) {
      json["selected"] = hcJsonValue(selected);
    }
    if (sets != null) {
      json["sets"] = sets;
    }
    if (sliced != null) {
      json["sliced"] = hcJsonValue(sliced);
    }
    if (states != null) {
      json["states"] = states!.toJson();
    }
    if (stemDashStyle != null) {
      json["stemDashStyle"] = stemDashStyle;
    }
    if (target != null) {
      json["target"] = target;
    }
    if (targetOptions != null) {
      json["targetOptions"] = targetOptions!.toJson();
    }
    if (text != null) {
      json["text"] = text;
    }
    if (title != null) {
      json["title"] = title;
    }
    if (to != null) {
      json["to"] = to;
    }
    if (value != null) {
      json["value"] = value;
    }
    if (weight != null) {
      json["weight"] = weight;
    }
    if (whiskerDashStyle != null) {
      json["whiskerDashStyle"] = whiskerDashStyle;
    }
    if (x != null) {
      json["x"] = hcJsonValue(x);
    }
    if (y != null) {
      json["y"] = y;
    }
    if (z != null) {
      json["z"] = z;
    }
    return json;
  }
}
