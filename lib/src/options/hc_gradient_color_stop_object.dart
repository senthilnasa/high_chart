part of 'hc_options.dart';

/// Color stop tuple.
class HCGradientColorStopObject implements HCOption {
  const HCGradientColorStopObject({
    this.color,
  });

  final dynamic color;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (color != null) {
      json["color"] = hcJsonValue(color);
    }
    return json;
  }
}
