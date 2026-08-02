part of 'hc_options.dart';

/// (Highstock) Options for the time cycles annotation type.
class HCNavigationBindingsRayAnnotationsTypesTimeCyclesOptions
    implements HCOption {
  const HCNavigationBindingsRayAnnotationsTypesTimeCyclesOptions({
    this.controlPointOptions,
    this.typeOptions,
  });

  /// (Highstock) Options for annotation's control points. Each control point
  final HCAnnotationControlPointOptionsObject? controlPointOptions;

  /// (Highstock) Additional options for an annotation with the type.
  final HCNavigationBindingsRayAnnotationsTypesTimeCyclesTypeOptions?
      typeOptions;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (controlPointOptions != null) {
      json["controlPointOptions"] = controlPointOptions!.toJson();
    }
    if (typeOptions != null) {
      json["typeOptions"] = typeOptions!.toJson();
    }
    return json;
  }
}
