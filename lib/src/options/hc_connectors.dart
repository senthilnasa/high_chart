part of 'hc_options.dart';

class HCConnectorsAnimationOptionsObject implements HCOption {
  const HCConnectorsAnimationOptionsObject({
    this.reversed,
  });

  final bool? reversed;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (reversed != null) {
      json['reversed'] = reversed;
    }
    return json;
  }
}

/// (Gantt) Marker options specific to the end markers for this chart's Pathfinder connectors. Overrides the generic marker options.
class HCConnectorsEndMarkerOptions implements HCOption {
  const HCConnectorsEndMarkerOptions({
    this.align,
    this.color,
    this.enabled,
    this.height,
    this.inside,
    this.lineColor,
    this.lineWidth,
    this.radius,
    this.symbol,
    this.verticalAlign,
    this.width,
  });

  /// (Gantt) Horizontal alignment of the markers relative to the points.
  final String? align;

  /// (Gantt) Set the color of the connector markers. By default this is the same as the connector color.
  final dynamic color;

  /// (Gantt) Enable markers for the connectors.
  final bool? enabled;

  /// (Gantt) Set the height of the connector markers. If not supplied, this is inferred from the marker radius.
  final num? height;

  /// (Gantt) Whether or not to draw the markers inside the points.
  final bool? inside;

  /// (Gantt) Set the line/border color of the connector markers. By default this is the same as the marker color.
  final String? lineColor;

  /// (Gantt) Set the line/border width of the pathfinder markers.
  final num? lineWidth;

  /// (Gantt) Set the radius of the connector markers. The default is automatically computed based on the algorithmMargin setting.
  final num? radius;

  /// (Gantt) Set the symbol of the connector end markers.
  final String? symbol;

  /// (Gantt) Vertical alignment of the markers relative to the points.
  final String? verticalAlign;

  /// (Gantt) Set the width of the connector markers. If not supplied, this is inferred from the marker radius.
  final num? width;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (align != null) {
      json['align'] = align;
    }
    if (color != null) {
      json['color'] = hcJsonValue(color);
    }
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    if (height != null) {
      json['height'] = height;
    }
    if (inside != null) {
      json['inside'] = inside;
    }
    if (lineColor != null) {
      json['lineColor'] = lineColor;
    }
    if (lineWidth != null) {
      json['lineWidth'] = lineWidth;
    }
    if (radius != null) {
      json['radius'] = radius;
    }
    if (symbol != null) {
      json['symbol'] = symbol;
    }
    if (verticalAlign != null) {
      json['verticalAlign'] = verticalAlign;
    }
    if (width != null) {
      json['width'] = width;
    }
    return json;
  }
}

/// (Gantt) Marker options for this chart's Pathfinder connectors. Note that this option is overridden by the `startMarker` and `endMarker` options.
class HCConnectorsMarkerOptions implements HCOption {
  const HCConnectorsMarkerOptions({
    this.align,
    this.color,
    this.enabled,
    this.height,
    this.inside,
    this.lineColor,
    this.lineWidth,
    this.radius,
    this.verticalAlign,
    this.width,
  });

  /// (Gantt) Horizontal alignment of the markers relative to the points.
  final String? align;

  /// (Gantt) Set the color of the connector markers. By default this is the same as the connector color.
  final dynamic color;

  /// (Gantt) Enable markers for the connectors.
  final bool? enabled;

  /// (Gantt) Set the height of the connector markers. If not supplied, this is inferred from the marker radius.
  final num? height;

  /// (Gantt) Whether or not to draw the markers inside the points.
  final bool? inside;

  /// (Gantt) Set the line/border color of the connector markers. By default this is the same as the marker color.
  final String? lineColor;

  /// (Gantt) Set the line/border width of the pathfinder markers.
  final num? lineWidth;

  /// (Gantt) Set the radius of the connector markers. The default is automatically computed based on the algorithmMargin setting.
  final num? radius;

  /// (Gantt) Vertical alignment of the markers relative to the points.
  final String? verticalAlign;

  /// (Gantt) Set the width of the connector markers. If not supplied, this is inferred from the marker radius.
  final num? width;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (align != null) {
      json['align'] = align;
    }
    if (color != null) {
      json['color'] = hcJsonValue(color);
    }
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    if (height != null) {
      json['height'] = height;
    }
    if (inside != null) {
      json['inside'] = inside;
    }
    if (lineColor != null) {
      json['lineColor'] = lineColor;
    }
    if (lineWidth != null) {
      json['lineWidth'] = lineWidth;
    }
    if (radius != null) {
      json['radius'] = radius;
    }
    if (verticalAlign != null) {
      json['verticalAlign'] = verticalAlign;
    }
    if (width != null) {
      json['width'] = width;
    }
    return json;
  }
}

/// (Gantt) The Pathfinder module allows you to define connections between any two points, represented as lines - optionally with markers for the start and/or end points. Multiple algorithms are available for calculating how the connecting lines are drawn.
class HCConnectorsOptions implements HCOption {
  const HCConnectorsOptions({
    this.algorithmMargin,
    this.dashStyle,
    this.enabled,
    this.endMarker,
    this.lineColor,
    this.lineWidth,
    this.marker,
    this.radius,
    this.startMarker,
    this.type,
  });

  /// (Gantt) Set the default pathfinder margin to use, in pixels. Some Pathfinder algorithms attempt to avoid obstacles, such as other points in the chart. These algorithms use this margin to determine how close lines can be to an obstacle. The default is to compute this automatically from the size of th
  final num? algorithmMargin;

  /// (Gantt) Set the default dash style for this chart's connecting lines.
  final String? dashStyle;

  /// (Gantt) Enable connectors for this chart. Requires Highcharts Gantt.
  final bool? enabled;

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

  /// (Gantt) Set the default pathfinder algorithm to use for this chart. It is possible to define your own algorithms by adding them to the Highcharts.Pathfinder.prototype.algorithms object before the chart has been created.
  final String? type;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (algorithmMargin != null) {
      json['algorithmMargin'] = algorithmMargin;
    }
    if (dashStyle != null) {
      json['dashStyle'] = dashStyle;
    }
    if (enabled != null) {
      json['enabled'] = enabled;
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
    if (type != null) {
      json['type'] = type;
    }
    return json;
  }
}

/// (Gantt) Marker options specific to the start markers for this chart's Pathfinder connectors. Overrides the generic marker options.
class HCConnectorsStartMarkerOptions implements HCOption {
  const HCConnectorsStartMarkerOptions({
    this.align,
    this.color,
    this.enabled,
    this.height,
    this.inside,
    this.lineColor,
    this.lineWidth,
    this.radius,
    this.symbol,
    this.verticalAlign,
    this.width,
  });

  /// (Gantt) Horizontal alignment of the markers relative to the points.
  final String? align;

  /// (Gantt) Set the color of the connector markers. By default this is the same as the connector color.
  final dynamic color;

  /// (Gantt) Enable markers for the connectors.
  final bool? enabled;

  /// (Gantt) Set the height of the connector markers. If not supplied, this is inferred from the marker radius.
  final num? height;

  /// (Gantt) Whether or not to draw the markers inside the points.
  final bool? inside;

  /// (Gantt) Set the line/border color of the connector markers. By default this is the same as the marker color.
  final String? lineColor;

  /// (Gantt) Set the line/border width of the pathfinder markers.
  final num? lineWidth;

  /// (Gantt) Set the radius of the connector markers. The default is automatically computed based on the algorithmMargin setting.
  final num? radius;

  /// (Gantt) Set the symbol of the connector start markers.
  final String? symbol;

  /// (Gantt) Vertical alignment of the markers relative to the points.
  final String? verticalAlign;

  /// (Gantt) Set the width of the connector markers. If not supplied, this is inferred from the marker radius.
  final num? width;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (align != null) {
      json['align'] = align;
    }
    if (color != null) {
      json['color'] = hcJsonValue(color);
    }
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    if (height != null) {
      json['height'] = height;
    }
    if (inside != null) {
      json['inside'] = inside;
    }
    if (lineColor != null) {
      json['lineColor'] = lineColor;
    }
    if (lineWidth != null) {
      json['lineWidth'] = lineWidth;
    }
    if (radius != null) {
      json['radius'] = radius;
    }
    if (symbol != null) {
      json['symbol'] = symbol;
    }
    if (verticalAlign != null) {
      json['verticalAlign'] = verticalAlign;
    }
    if (width != null) {
      json['width'] = width;
    }
    return json;
  }
}
