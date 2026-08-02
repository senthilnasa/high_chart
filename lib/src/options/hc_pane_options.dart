part of 'hc_options.dart';

/// (Highcharts) The pane serves as a container for axes and backgrounds for
class HCPaneOptions implements HCOption {
  const HCPaneOptions({
    this.background,
    this.borderRadius,
    this.center,
    this.endAngle,
    this.innerSize,
    this.margin,
    this.size,
    this.startAngle,
    this.thickness,
  });

  /// (Highcharts) A background item or an array of such for the pane. When
  final dynamic background;

  /// (Highcharts) The border radius of the elements of the pane. This affects
  final dynamic borderRadius;

  /// (Highcharts) The center of a polar chart or angular gauge, given as an
  final List<dynamic>? center;

  /// (Highcharts) The end angle of the polar X axis or gauge value axis, given
  final num? endAngle;

  /// (Highcharts) The inner size of the pane, either as a number defining
  final dynamic innerSize;

  /// (Highcharts) The margin between the pane and the plot area when
  final dynamic margin;

  /// (Highcharts) The size of the pane, either as a number defining pixels, or
  final dynamic size;

  /// (Highcharts) The start angle of the polar X axis or gauge axis, given in
  final num? startAngle;

  /// (Highcharts) The thickness of the pane in terms of pixels. This applies
  final num? thickness;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (background != null) {
      json["background"] = hcJsonValue(background);
    }
    if (borderRadius != null) {
      json["borderRadius"] = hcJsonValue(borderRadius);
    }
    if (center != null) {
      json["center"] = center!.map((e) => hcJsonValue(e)).toList();
    }
    if (endAngle != null) {
      json["endAngle"] = endAngle;
    }
    if (innerSize != null) {
      json["innerSize"] = hcJsonValue(innerSize);
    }
    if (margin != null) {
      json["margin"] = hcJsonValue(margin);
    }
    if (size != null) {
      json["size"] = hcJsonValue(size);
    }
    if (startAngle != null) {
      json["startAngle"] = startAngle;
    }
    if (thickness != null) {
      json["thickness"] = thickness;
    }
    return json;
  }
}
