part of 'hc_options.dart';

/// (Highstock) Additional options for an annotation with the type.
class HCNavigationBindingsFibonacciTimeZonesAnnotationsTypesFibonacciTimeZonesTypeOptions
    implements HCOption {
  const HCNavigationBindingsFibonacciTimeZonesAnnotationsTypesFibonacciTimeZonesTypeOptions({
    this.controlPointOptions,
    this.line,
    this.points,
    this.xAxis,
    this.yAxis,
  });

  final HCNavigationBindingsFibonacciTimeZonesAnnotationsTypesFibonacciTimeZonesTypeControlPointOptions?
      controlPointOptions;

  /// (Highstock) Line options.
  final HCNavigationBindingsFibonacciTimeZonesAnnotationsTypesFibonacciTimeZonesTypeLineOptions?
      line;

  final List<
          HCNavigationBindingsFibonacciTimeZonesAnnotationsTypesFibonacciTimeZonesTypePointsOptions>?
      points;

  /// (Highstock) This number defines which xAxis the point is connected to. It
  final num? xAxis;

  /// (Highstock) This number defines which yAxis the point is connected to. It
  final num? yAxis;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (controlPointOptions != null) {
      json["controlPointOptions"] = controlPointOptions!.toJson();
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
