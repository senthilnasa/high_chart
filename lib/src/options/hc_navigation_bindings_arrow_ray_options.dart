part of 'hc_options.dart';

/// (Highstock) A ray with an arrow annotation bindings. Includes `start` and one
class HCNavigationBindingsArrowRayOptions implements HCOption {
  const HCNavigationBindingsArrowRayOptions({
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
