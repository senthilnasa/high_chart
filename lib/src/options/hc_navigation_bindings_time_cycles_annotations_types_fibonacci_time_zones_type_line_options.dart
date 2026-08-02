part of 'hc_options.dart';

/// (Highstock) Line options.
class HCNavigationBindingsTimeCyclesAnnotationsTypesFibonacciTimeZonesTypeLineOptions
    implements HCOption {
  const HCNavigationBindingsTimeCyclesAnnotationsTypesFibonacciTimeZonesTypeLineOptions({
    this.fill,
    this.stroke,
    this.strokeWidth,
  });

  final String? fill;

  /// (Highstock) The color of the lines.
  final String? stroke;

  /// (Highstock) The width of the lines.
  final num? strokeWidth;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (fill != null) {
      json["fill"] = fill;
    }
    if (stroke != null) {
      json["stroke"] = stroke;
    }
    if (strokeWidth != null) {
      json["strokeWidth"] = strokeWidth;
    }
    return json;
  }
}
