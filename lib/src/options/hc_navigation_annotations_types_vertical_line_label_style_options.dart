part of 'hc_options.dart';

/// (Highstock) Styles for the annotation's label.
class HCNavigationAnnotationsTypesVerticalLineLabelStyleOptions
    implements HCOption {
  const HCNavigationAnnotationsTypesVerticalLineLabelStyleOptions({
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
