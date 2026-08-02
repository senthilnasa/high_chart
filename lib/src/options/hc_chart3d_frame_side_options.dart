part of 'hc_options.dart';

/// (Highcharts) Note: As of v5.0.12, `frame.left` or `frame.right` should be
class HCChart3dFrameSideOptions implements HCOption {
  const HCChart3dFrameSideOptions({
    this.color,
    this.size,
  });

  /// (Highcharts) The color of the panel.
  final dynamic color;

  /// (Highcharts) The thickness of the panel.
  final num? size;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (color != null) {
      json["color"] = hcJsonValue(color);
    }
    if (size != null) {
      json["size"] = size;
    }
    return json;
  }
}
