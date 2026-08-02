part of 'hc_options.dart';

/// (Highstock) Line options.
class HCNavigationBindingsElliott3AnnotationsTypesElliottWaveTypeLineOptions
    implements HCOption {
  const HCNavigationBindingsElliott3AnnotationsTypesElliottWaveTypeLineOptions({
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
