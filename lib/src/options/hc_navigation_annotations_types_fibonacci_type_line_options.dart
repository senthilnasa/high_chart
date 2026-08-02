part of 'hc_options.dart';

/// (Highstock) Line options.
class HCNavigationAnnotationsTypesFibonacciTypeLineOptions implements HCOption {
  const HCNavigationAnnotationsTypesFibonacciTypeLineOptions({
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
