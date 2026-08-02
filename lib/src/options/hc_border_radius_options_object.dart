part of 'hc_options.dart';

/// Detailed options for border radius.
class HCBorderRadiusOptionsObject implements HCOption {
  const HCBorderRadiusOptionsObject({
    this.radius,
    this.scope,
    this.where,
  });

  /// The border radius. A number signifies pixels. A percentage string, like
  final dynamic radius;

  /// The scope of the rounding for column charts or plot bands. In a stacked
  final String? scope;

  /// For column charts, where in the point or stack to apply rounding. The
  final String? where;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (radius != null) {
      json["radius"] = hcJsonValue(radius);
    }
    if (scope != null) {
      json["scope"] = scope;
    }
    if (where != null) {
      json["where"] = where;
    }
    return json;
  }
}
