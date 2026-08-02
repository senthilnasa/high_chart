part of 'hc_options.dart';

class HCNavigationBindingsMeasureXYAnnotationsTypesFibonacciControlPointStyleOptions
    implements HCOption {
  const HCNavigationBindingsMeasureXYAnnotationsTypesFibonacciControlPointStyleOptions({
    this.cursor,
    this.fill,
    this.stroke,
  });

  final String? cursor;

  final String? fill;

  final String? stroke;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (cursor != null) {
      json["cursor"] = cursor;
    }
    if (fill != null) {
      json["fill"] = fill;
    }
    if (stroke != null) {
      json["stroke"] = stroke;
    }
    return json;
  }
}
