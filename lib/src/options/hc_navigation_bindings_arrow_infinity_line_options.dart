part of 'hc_options.dart';

/// (Highstock) A line with arrow annotation. Includes `start` and one event in
class HCNavigationBindingsArrowInfinityLineOptions implements HCOption {
  const HCNavigationBindingsArrowInfinityLineOptions({
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
