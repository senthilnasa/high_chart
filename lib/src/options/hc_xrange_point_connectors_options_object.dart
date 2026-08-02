part of 'hc_options.dart';

/// (Gantt) Connect to a point. This option can be either a string, referring to
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

  /// (Gantt) Marker options specific to the end markers for this chart's
  final HCConnectorsEndMarkerOptions? endMarker;

  /// (Gantt) Set the default color for this chart's Pathfinder connecting
  final String? lineColor;

  /// (Gantt) Set the default pixel width for this chart's Pathfinder
  final num? lineWidth;

  /// (Gantt) Marker options for this chart's Pathfinder connectors. Note that
  final HCConnectorsMarkerOptions? marker;

  /// (Gantt) The corner radius for the connector line.
  final num? radius;

  /// (Gantt) Marker options specific to the start markers for this chart's
  final HCConnectorsStartMarkerOptions? startMarker;

  /// (Gantt) The ID of the point to connect to.
  final String? to;

  /// (Gantt) Set the default pathfinder algorithm to use for this chart. It is
  final String? type;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (dashStyle != null) {
      json["dashStyle"] = dashStyle;
    }
    if (endMarker != null) {
      json["endMarker"] = endMarker!.toJson();
    }
    if (lineColor != null) {
      json["lineColor"] = lineColor;
    }
    if (lineWidth != null) {
      json["lineWidth"] = lineWidth;
    }
    if (marker != null) {
      json["marker"] = marker!.toJson();
    }
    if (radius != null) {
      json["radius"] = radius;
    }
    if (startMarker != null) {
      json["startMarker"] = startMarker!.toJson();
    }
    if (to != null) {
      json["to"] = to;
    }
    if (type != null) {
      json["type"] = type;
    }
    return json;
  }
}
