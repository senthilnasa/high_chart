part of 'hc_options.dart';

/// (Highstock) Styles for the annotation's label.
class HCNavigationBindingsElliott3AnnotationsTypesFibonacciLabelStyleOptions
    implements HCOption {
  const HCNavigationBindingsElliott3AnnotationsTypesFibonacciLabelStyleOptions({
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
