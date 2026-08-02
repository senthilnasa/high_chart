part of 'hc_options.dart';

/// (Highstock) CSS styles for the measure label.
class HCNavigationBindingsVerticalCounterAnnotationsTypesMeasureTypeLabelStyleOptions
    implements HCOption {
  const HCNavigationBindingsVerticalCounterAnnotationsTypesMeasureTypeLabelStyleOptions({
    this.color,
    this.fontSize,
  });

  final String? color;

  final num? fontSize;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (color != null) {
      json["color"] = color;
    }
    if (fontSize != null) {
      json["fontSize"] = fontSize;
    }
    return json;
  }
}
