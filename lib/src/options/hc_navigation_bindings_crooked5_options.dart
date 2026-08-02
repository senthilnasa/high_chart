part of 'hc_options.dart';

/// (Highstock) Crooked line (five points) annotation bindings. Includes `start`
class HCNavigationBindingsCrooked5Options implements HCOption {
  const HCNavigationBindingsCrooked5Options({
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
