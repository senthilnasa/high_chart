part of 'hc_options.dart';

/// (Highstock) Line options.
class HCNavigationBindingsCrooked3AnnotationsTypesTimeCyclesTypeLineOptions
    implements HCOption {
  const HCNavigationBindingsCrooked3AnnotationsTypesTimeCyclesTypeLineOptions({
    this.fill,
  });

  final String? fill;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (fill != null) {
      json["fill"] = fill;
    }
    return json;
  }
}
