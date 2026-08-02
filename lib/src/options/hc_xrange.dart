part of 'hc_options.dart';

/// (Gantt) Connect to a point. This option can be either a string, referring to the ID of another point, or an object, or an array of either. If the option is an array, each element defines a connection.
class HCXrangePointConnectorsOptionsObject implements HCOption {
  const HCXrangePointConnectorsOptionsObject({
    this.dashStyle,
    this.endMarker,
    this.lineColor,
    this.lineWidth,
    this.marker,
    this.radius,
    this.startMarker,
    this.to,
    this.type,
  });

  /// (Gantt) Set the default dash style for this chart's connecting lines.
  final String? dashStyle;

  /// (Gantt) Marker options specific to the end markers for this chart's Pathfinder connectors. Overrides the generic marker options.
  final HCConnectorsEndMarkerOptions? endMarker;

  /// (Gantt) Set the default color for this chart's Pathfinder connecting lines. Defaults to the color of the point being connected.
  final String? lineColor;

  /// (Gantt) Set the default pixel width for this chart's Pathfinder connecting lines.
  final num? lineWidth;

  /// (Gantt) Marker options for this chart's Pathfinder connectors. Note that this option is overridden by the `startMarker` and `endMarker` options.
  final HCConnectorsMarkerOptions? marker;

  /// (Gantt) The corner radius for the connector line.
  final num? radius;

  /// (Gantt) Marker options specific to the start markers for this chart's Pathfinder connectors. Overrides the generic marker options.
  final HCConnectorsStartMarkerOptions? startMarker;

  /// (Gantt) The ID of the point to connect to.
  final String? to;

  /// (Gantt) Set the default pathfinder algorithm to use for this chart. It is possible to define your own algorithms by adding them to the Highcharts.Pathfinder.prototype.algorithms object before the chart has been created.
  final String? type;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (dashStyle != null) {
      json['dashStyle'] = dashStyle;
    }
    if (endMarker != null) {
      json['endMarker'] = endMarker!.toJson();
    }
    if (lineColor != null) {
      json['lineColor'] = lineColor;
    }
    if (lineWidth != null) {
      json['lineWidth'] = lineWidth;
    }
    if (marker != null) {
      json['marker'] = marker!.toJson();
    }
    if (radius != null) {
      json['radius'] = radius;
    }
    if (startMarker != null) {
      json['startMarker'] = startMarker!.toJson();
    }
    if (to != null) {
      json['to'] = to;
    }
    if (type != null) {
      json['type'] = type;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Gantt) An array of data points for the series. For the `xrange` series type, points can be given in the following ways:
class HCXrangePointOptionsObject implements HCOption {
  const HCXrangePointOptionsObject({
    this.accessibility,
    this.className,
    this.color,
    this.colorIndex,
    this.connect,
    this.custom,
    this.dataLabels,
    this.dragDrop,
    this.drilldown,
    this.events,
    this.id,
    this.labelrank,
    this.marker,
    this.name,
    this.partialFill,
    this.selected,
    this.x,
    this.x2,
    this.y,
  });

  /// (Highcharts, Highstock, Gantt) Accessibility options for a data point.
  final HCPointAccessibilityOptionsObject? accessibility;

  /// (Highcharts, Highstock, Gantt) An additional, individual class name for the data point's graphic representation. Changes to a point's color will also be reflected in a chart's legend and tooltip.
  final String? className;

  /// (Highcharts, Highstock, Gantt) Individual color for the point. By default the color is pulled from the global `colors` array.
  final dynamic color;

  /// (Highcharts, Gantt) A specific color index to use for the point, so its graphic representations are given the class name `highcharts-color-{n}`. In styled mode this will change the color of the graphic. In non-styled mode, the color is set by the `fill` attribute, so the change in class name won't h
  final num? colorIndex;

  /// (Gantt) Connect to a point. This option can be either a string, referring to the ID of another point, or an object, or an array of either. If the option is an array, each element defines a connection.
  final dynamic connect;

  /// (Highcharts, Highstock, Gantt) A reserved subspace to store options and values for customized functionality. Here you can add additional data for your own event callbacks and formatter callbacks.
  final HCDictionary? custom;

  /// (Highcharts, Highstock, Gantt) Individual data label for each point. The options are the same as the ones for plotOptions.series.dataLabels with exception of `zIndex` which is applied on the data label's parent group.
  final dynamic dataLabels;

  /// (Highcharts, Highstock, Gantt) Point specific options for the draggable-points module. Overrides options on `series.dragDrop`.
  final HCSeriesLineDataDragDropOptions? dragDrop;

  /// (Highcharts) The `id` of a series in the drilldown.series array to use for a drilldown for this point.
  final String? drilldown;

  /// (Highcharts, Highstock, Gantt) The individual point events.
  final HCPointEventsOptionsObject? events;

  /// (Highcharts, Highstock, Gantt) An id for the point. This can be used after render time to get a pointer to the point object through `chart.get()`.
  final String? id;

  /// (Highcharts, Highstock, Gantt) The rank for all this point's data labels in case of collision. If two data labels are about to overlap, only the one with the highest `labelrank` will be drawn.
  final num? labelrank;

  /// (Highcharts, Highstock) Options for the point markers of line-like series.
  final HCPointMarkerOptionsObject? marker;

  /// (Highcharts, Highstock, Gantt) The name of the point as shown in the legend, tooltip, dataLabels, etc.
  final String? name;

  /// (Highcharts, Highstock, Gantt) A partial fill for each point, typically used to visualize how much of a task is performed. The partial fill object can be set either on series or point level.
  final HCXrangePointPartialFillOptionsObject? partialFill;

  /// (Highcharts, Highstock, Gantt) Whether the data point is selected initially.
  final bool? selected;

  /// (Highcharts, Highstock, Gantt) The starting X value of the range point.
  final num? x;

  /// (Highcharts, Highstock, Gantt) The ending X value of the range point.
  final num? x2;

  /// (Highcharts, Highstock, Gantt) The Y value of the range point.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (accessibility != null) {
      json['accessibility'] = accessibility!.toJson();
    }
    if (className != null) {
      json['className'] = className;
    }
    if (color != null) {
      json['color'] = hcJsonValue(color);
    }
    if (colorIndex != null) {
      json['colorIndex'] = colorIndex;
    }
    if (connect != null) {
      json['connect'] = hcJsonValue(connect);
    }
    if (custom != null) {
      json['custom'] = custom!.toJson();
    }
    if (dataLabels != null) {
      json['dataLabels'] = hcJsonValue(dataLabels);
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
    if (id != null) {
      json['id'] = id;
    }
    if (labelrank != null) {
      json['labelrank'] = labelrank;
    }
    if (marker != null) {
      json['marker'] = marker!.toJson();
    }
    if (name != null) {
      json['name'] = name;
    }
    if (partialFill != null) {
      json['partialFill'] = partialFill!.toJson();
    }
    if (selected != null) {
      json['selected'] = selected;
    }
    if (x != null) {
      json['x'] = x;
    }
    if (x2 != null) {
      json['x2'] = x2;
    }
    if (y != null) {
      json['y'] = y;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Gantt) A partial fill for each point, typically used to visualize how much of a task is performed. The partial fill object can be set either on series or point level.
class HCXrangePointPartialFillOptionsObject implements HCOption {
  const HCXrangePointPartialFillOptionsObject({
    this.amount,
    this.fill,
  });

  /// (Highcharts, Highstock, Gantt) The amount of the X-range point to be filled. Values can be 0-1 and are converted to percentages in the default data label formatter.
  final num? amount;

  /// (Highcharts, Highstock, Gantt) The fill color to be used for partial fills. Defaults to a darker shade of the point color.
  final dynamic fill;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (amount != null) {
      json['amount'] = amount;
    }
    if (fill != null) {
      json['fill'] = hcJsonValue(fill);
    }
    return json;
  }
}
