part of 'hc_options.dart';

class HCNavigationBindingsCrooked3AnnotationsTypesMeasureTypeBackgroundOptions
    implements HCOption {
  const HCNavigationBindingsCrooked3AnnotationsTypesMeasureTypeBackgroundOptions({
    this.fill,
    this.stroke,
    this.strokeWidth,
  });

  /// (Highstock) The color of the rectangle.
  final String? fill;

  /// (Highstock) The color of border.
  final String? stroke;

  /// (Highstock) The width of border.
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
