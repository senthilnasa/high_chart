part of 'hc_options.dart';

class HCGlobalButtonThemeStatesSelectStyleOptions implements HCOption {
  const HCGlobalButtonThemeStatesSelectStyleOptions({
    this.color,
    this.fontWeight,
  });

  final dynamic color;

  final String? fontWeight;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (color != null) {
      json["color"] = hcJsonValue(color);
    }
    if (fontWeight != null) {
      json["fontWeight"] = fontWeight;
    }
    return json;
  }
}
