part of 'hc_options.dart';

/// (Highstock) A time cycles annotation bindings. Includes `start` event and 1
class HCNavigationBindingsTimeCyclesOptions implements HCOption {
  const HCNavigationBindingsTimeCyclesOptions({
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
