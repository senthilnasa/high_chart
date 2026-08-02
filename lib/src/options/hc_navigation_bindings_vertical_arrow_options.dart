part of 'hc_options.dart';

/// (Highstock) A vertical arrow annotation bindings. Includes `start` event. On
class HCNavigationBindingsVerticalArrowOptions implements HCOption {
  const HCNavigationBindingsVerticalArrowOptions({
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
