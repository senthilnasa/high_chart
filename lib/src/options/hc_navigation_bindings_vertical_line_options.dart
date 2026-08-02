part of 'hc_options.dart';

/// (Highstock) A vertical line annotation. Includes `start` event.
class HCNavigationBindingsVerticalLineOptions implements HCOption {
  const HCNavigationBindingsVerticalLineOptions({
    this.annotationsOptions,
  });

  /// (Highstock) Options to customize the bindings' annotation shapes and
  final dynamic annotationsOptions;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (annotationsOptions != null) {
      json["annotationsOptions"] = hcJsonValue(annotationsOptions);
    }
    return json;
  }
}
