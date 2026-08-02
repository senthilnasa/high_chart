part of 'hc_options.dart';

/// (Highstock) Options for the measure annotation type.
class HCNavigationBindingsSegmentAnnotationsTypesMeasureOptions
    implements HCOption {
  const HCNavigationBindingsSegmentAnnotationsTypesMeasureOptions({
    this.controlPointOptions,
    this.typeOptions,
  });

  /// (Highstock) Options for annotation's control points. Each control point
  final HCAnnotationControlPointOptionsObject? controlPointOptions;

  /// (Highstock) Additional options for an annotation with the type.
  final HCNavigationBindingsSegmentAnnotationsTypesMeasureTypeOptions?
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
