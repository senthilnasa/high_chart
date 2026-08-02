part of 'hc_options.dart';

/// (Highstock) A line annotation. Includes `start` and one event in `steps`
class HCNavigationBindingsInfinityLineOptions implements HCOption {
  const HCNavigationBindingsInfinityLineOptions({
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
