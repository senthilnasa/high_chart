part of 'hc_options.dart';

/// (Highstock) Options for the vertical line annotation type.
class HCNavigationBindingsVerticalArrowAnnotationsTypesVerticalLineOptions
    implements HCOption {
  const HCNavigationBindingsVerticalArrowAnnotationsTypesVerticalLineOptions({
    this.labelOptions,
    this.typeOptions,
  });

  /// (Highstock) Options for annotation's labels. Each label inherits options
  final HCNavigationBindingsVerticalArrowAnnotationsTypesVerticalLineLabelOptions?
      labelOptions;

  /// (Highstock) Additional options for an annotation with the type.
  final HCNavigationBindingsVerticalArrowAnnotationsTypesVerticalLineTypeOptions?
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
