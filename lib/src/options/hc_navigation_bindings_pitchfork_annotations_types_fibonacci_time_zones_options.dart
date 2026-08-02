part of 'hc_options.dart';

/// (Highstock) Options for the fibonacci time zones annotation type.
class HCNavigationBindingsPitchforkAnnotationsTypesFibonacciTimeZonesOptions
    implements HCOption {
  const HCNavigationBindingsPitchforkAnnotationsTypesFibonacciTimeZonesOptions({
    this.controlPointOptions,
    this.labelOptions,
    this.typeOptions,
  });

  /// (Highstock) Options for annotation's control points. Each control point
  final HCAnnotationControlPointOptionsObject? controlPointOptions;

  /// (Highstock) Options for annotation's labels. Each label inherits options
  final HCNavigationBindingsPitchforkAnnotationsTypesFibonacciTimeZonesLabelOptions?
      labelOptions;

  /// (Highstock) Additional options for an annotation with the type.
  final HCNavigationBindingsPitchforkAnnotationsTypesFibonacciTimeZonesTypeOptions?
      typeOptions;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (controlPointOptions != null) {
      json["controlPointOptions"] = controlPointOptions!.toJson();
    }
    if (labelOptions != null) {
      json["labelOptions"] = labelOptions!.toJson();
    }
    if (typeOptions != null) {
      json["typeOptions"] = typeOptions!.toJson();
    }
    return json;
  }
}
