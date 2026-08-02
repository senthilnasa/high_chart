part of 'hc_options.dart';

/// (Highcharts) The front of the frame around a 3D chart.
class HCChart3dFrameFrontOptions implements HCOption {
  const HCChart3dFrameFrontOptions({
    this.color,
    this.size,
    this.visible,
  });

  /// (Highcharts) The color of the panel.
  final dynamic color;

  /// (Highcharts) The thickness of the panel.
  final num? size;

  /// (Highcharts) Whether to display the frame. Possible values are `true`,
  final dynamic visible;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (color != null) {
      json["color"] = hcJsonValue(color);
    }
    if (size != null) {
      json["size"] = size;
    }
    if (visible != null) {
      json["visible"] = hcJsonValue(visible);
    }
    return json;
  }
}
