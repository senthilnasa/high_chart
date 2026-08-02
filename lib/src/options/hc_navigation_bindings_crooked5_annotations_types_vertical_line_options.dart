part of 'hc_options.dart';

/// (Highstock) Options for the vertical line annotation type.
class HCNavigationBindingsCrooked5AnnotationsTypesVerticalLineOptions
    implements HCOption {
  const HCNavigationBindingsCrooked5AnnotationsTypesVerticalLineOptions({
    this.labelOptions,
    this.typeOptions,
  });

  /// (Highstock) Options for annotation's labels. Each label inherits options
  final HCNavigationBindingsCrooked5AnnotationsTypesVerticalLineLabelOptions?
      labelOptions;

  /// (Highstock) Additional options for an annotation with the type.
  final HCNavigationBindingsCrooked5AnnotationsTypesVerticalLineTypeOptions?
      typeOptions;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (labelOptions != null) {
      json["labelOptions"] = labelOptions!.toJson();
    }
    if (typeOptions != null) {
      json["typeOptions"] = typeOptions!.toJson();
    }
    return json;
  }
}
