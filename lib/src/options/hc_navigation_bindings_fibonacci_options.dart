part of 'hc_options.dart';

/// (Highstock) A fibonacci annotation bindings. Includes `start` and two events
class HCNavigationBindingsFibonacciOptions implements HCOption {
  const HCNavigationBindingsFibonacciOptions({
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
