part of 'hc_options.dart';

/// (Highstock) Options for the vertical line annotation type.
class HCNavigationBindingsElliott3AnnotationsTypesVerticalLineOptions
    implements HCOption {
  const HCNavigationBindingsElliott3AnnotationsTypesVerticalLineOptions({
    this.labelOptions,
    this.typeOptions,
  });

  /// (Highstock) Options for annotation's labels. Each label inherits options
  final HCNavigationBindingsElliott3AnnotationsTypesVerticalLineLabelOptions?
      labelOptions;

  /// (Highstock) Additional options for an annotation with the type.
  final HCNavigationBindingsElliott3AnnotationsTypesVerticalLineTypeOptions?
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
