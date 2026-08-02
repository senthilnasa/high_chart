part of 'hc_options.dart';

/// (Highstock) Crooked line (three points) annotation bindings. Includes `start`
class HCNavigationBindingsCrooked3Options implements HCOption {
  const HCNavigationBindingsCrooked3Options({
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
