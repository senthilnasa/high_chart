part of 'hc_options.dart';

/// (Highstock) The Fibonacci Time Zones annotation bindings. Includes `start`
class HCNavigationBindingsFibonacciTimeZonesOptions implements HCOption {
  const HCNavigationBindingsFibonacciTimeZonesOptions({
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
