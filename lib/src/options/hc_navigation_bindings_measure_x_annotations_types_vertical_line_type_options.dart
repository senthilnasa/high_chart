part of 'hc_options.dart';

/// (Highstock) Additional options for an annotation with the type.
class HCNavigationBindingsMeasureXAnnotationsTypesVerticalLineTypeOptions
    implements HCOption {
  const HCNavigationBindingsMeasureXAnnotationsTypesVerticalLineTypeOptions({
    this.connector,
    this.label,
    this.line,
    this.points,
    this.xAxis,
    this.yAxis,
  });

  /// (Highstock) Connector options.
  final HCNavigationBindingsMeasureXAnnotationsTypesVerticalLineTypeConnectorOptions?
      connector;

  /// (Highstock) Label options.
  final HCNavigationBindingsMeasureXAnnotationsTypesVerticalLineTypeLabelOptions?
      label;

  /// (Highstock) Line options.
  final HCNavigationBindingsMeasureXAnnotationsTypesVerticalLineTypeLineOptions?
      line;

  final List<
          HCNavigationBindingsMeasureXAnnotationsTypesVerticalLineTypePointsOptions>?
      points;

  /// (Highstock) This number defines which xAxis the point is connected to. It
  final num? xAxis;

  /// (Highstock) This number defines which yAxis the point is connected to. It
  final num? yAxis;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (connector != null) {
      json["connector"] = connector!.toJson();
    }
    if (label != null) {
      json["label"] = label!.toJson();
    }
    if (line != null) {
      json["line"] = line!.toJson();
    }
    if (points != null) {
      json["points"] = points!.map((e) => e.toJson()).toList();
    }
    if (xAxis != null) {
      json["xAxis"] = xAxis;
    }
    if (yAxis != null) {
      json["yAxis"] = yAxis;
    }
    return json;
  }
}
