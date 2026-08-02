part of 'hc_options.dart';

/// (Highstock) Styles for the annotation's label.
class HCNavigationBindingsPitchforkAnnotationsTypesElliottWaveLabelStyleOptions
    implements HCOption {
  const HCNavigationBindingsPitchforkAnnotationsTypesElliottWaveLabelStyleOptions({
    this.color,
  });

  final String? color;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (color != null) {
      json["color"] = color;
    }
    return json;
  }
}
