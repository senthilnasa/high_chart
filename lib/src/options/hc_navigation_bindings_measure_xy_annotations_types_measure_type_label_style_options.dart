part of 'hc_options.dart';

/// (Highstock) CSS styles for the measure label.
class HCNavigationBindingsMeasureXYAnnotationsTypesMeasureTypeLabelStyleOptions
    implements HCOption {
  const HCNavigationBindingsMeasureXYAnnotationsTypesMeasureTypeLabelStyleOptions({
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
