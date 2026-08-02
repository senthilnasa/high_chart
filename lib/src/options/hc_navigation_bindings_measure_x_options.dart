part of 'hc_options.dart';

/// (Highstock) A measure (x-dimension) annotation bindings. Includes `start` and
class HCNavigationBindingsMeasureXOptions implements HCOption {
  const HCNavigationBindingsMeasureXOptions({
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
