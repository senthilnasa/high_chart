part of 'hc_options.dart';

/// (Highstock) Styles for the annotation's label.
class HCNavigationBindingsElliott5AnnotationsTypesVerticalLineLabelStyleOptions
    implements HCOption {
  const HCNavigationBindingsElliott5AnnotationsTypesVerticalLineLabelStyleOptions({
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
