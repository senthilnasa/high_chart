part of 'hc_options.dart';

/// (Highstock) A segment with an arrow annotation bindings. Includes `start` and
class HCNavigationBindingsArrowSegmentOptions implements HCOption {
  const HCNavigationBindingsArrowSegmentOptions({
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
