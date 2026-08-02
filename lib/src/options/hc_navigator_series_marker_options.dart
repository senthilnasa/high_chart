part of 'hc_options.dart';

class HCNavigatorSeriesMarkerOptions implements HCOption {
  const HCNavigatorSeriesMarkerOptions({
    this.enabled,
  });

  final dynamic enabled;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (enabled != null) {
      json["enabled"] = hcJsonValue(enabled);
    }
    return json;
  }
}
