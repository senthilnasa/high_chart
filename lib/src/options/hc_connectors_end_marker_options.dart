part of 'hc_options.dart';

/// (Gantt) Marker options specific to the end markers for this chart's
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

  /// (Gantt) Set the color of the connector markers. By default this is the
  final dynamic color;

  /// (Gantt) Enable markers for the connectors.
  final dynamic enabled;

  /// (Gantt) Set the height of the connector markers. If not supplied, this is
  final num? height;

  /// (Gantt) Whether or not to draw the markers inside the points.
  final dynamic inside;

  /// (Gantt) Set the line/border color of the connector markers. By default
  final String? lineColor;

  /// (Gantt) Set the line/border width of the pathfinder markers.
  final num? lineWidth;

  /// (Gantt) Set the radius of the connector markers. The default is
  final num? radius;

  /// (Gantt) Set the symbol of the connector end markers.
  final String? symbol;

  /// (Gantt) Vertical alignment of the markers relative to the points.
  final String? verticalAlign;

  /// (Gantt) Set the width of the connector markers. If not supplied, this is
  final num? width;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (align != null) {
      json["align"] = align;
    }
    if (color != null) {
      json["color"] = hcJsonValue(color);
    }
    if (enabled != null) {
      json["enabled"] = hcJsonValue(enabled);
    }
    if (height != null) {
      json["height"] = height;
    }
    if (inside != null) {
      json["inside"] = hcJsonValue(inside);
    }
    if (lineColor != null) {
      json["lineColor"] = lineColor;
    }
    if (lineWidth != null) {
      json["lineWidth"] = lineWidth;
    }
    if (radius != null) {
      json["radius"] = radius;
    }
    if (symbol != null) {
      json["symbol"] = symbol;
    }
    if (verticalAlign != null) {
      json["verticalAlign"] = verticalAlign;
    }
    if (width != null) {
      json["width"] = width;
    }
    return json;
  }
}
