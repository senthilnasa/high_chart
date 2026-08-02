part of 'hc_options.dart';

/// (Highstock) Enable or disable the initial animation when a series is
class HCNavigationBindingsMeasureYAnnotationsAnimationOptions
    implements HCOption {
  const HCNavigationBindingsMeasureYAnnotationsAnimationOptions({
    this.defer,
  });

  /// (Highstock) The animation delay time in milliseconds. Set to `0` renders
  final num? defer;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (defer != null) {
      json["defer"] = defer;
    }
    return json;
  }
}
