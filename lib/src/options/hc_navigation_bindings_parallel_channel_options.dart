part of 'hc_options.dart';

/// (Highstock) A parallel channel (tunnel) annotation bindings. Includes `start`
class HCNavigationBindingsParallelChannelOptions implements HCOption {
  const HCNavigationBindingsParallelChannelOptions({
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
