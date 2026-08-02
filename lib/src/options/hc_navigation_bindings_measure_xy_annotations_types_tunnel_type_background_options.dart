part of 'hc_options.dart';

/// (Highstock) Background options.
class HCNavigationBindingsMeasureXYAnnotationsTypesTunnelTypeBackgroundOptions
    implements HCOption {
  const HCNavigationBindingsMeasureXYAnnotationsTypesTunnelTypeBackgroundOptions({
    this.fill,
    this.strokeWidth,
  });

  final String? fill;

  final num? strokeWidth;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (fill != null) {
      json["fill"] = fill;
    }
    if (strokeWidth != null) {
      json["strokeWidth"] = strokeWidth;
    }
    return json;
  }
}
