part of 'hc_options.dart';

/// (Highstock) Styles for the annotation's label.
class HCNavigationBindingsParallelChannelAnnotationsTypesFibonacciLabelStyleOptions
    implements HCOption {
  const HCNavigationBindingsParallelChannelAnnotationsTypesFibonacciLabelStyleOptions({
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
