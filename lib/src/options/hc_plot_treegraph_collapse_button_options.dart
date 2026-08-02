part of 'hc_options.dart';

/// (Highcharts) Options applied to collapse Button. The collapse button is
class HCPlotTreegraphCollapseButtonOptions implements HCOption {
  const HCPlotTreegraphCollapseButtonOptions({
    this.enabled,
    this.height,
    this.lineWidth,
    this.onlyOnHover,
    this.shape,
    this.style,
    this.width,
    this.x,
    this.y,
  });

  /// (Highcharts) Whether the button should be visible.
  final dynamic enabled;

  /// (Highcharts) Height of the button.
  final num? height;

  /// (Highcharts) The line width of the button in pixels
  final num? lineWidth;

  /// (Highcharts) Whether the button should be visible only when the node
  final dynamic onlyOnHover;

  /// (Highcharts) The symbol of the collapse button.
  final String? shape;

  /// (Highcharts) CSS styles for the collapse button.
  final HCPlotTreegraphCollapseButtonStyleOptions? style;

  /// (Highcharts) Width of the button.
  final num? width;

  /// (Highcharts) Offset of the button in the x direction.
  final num? x;

  /// (Highcharts) Offset of the button in the y direction.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (enabled != null) {
      json["enabled"] = hcJsonValue(enabled);
    }
    if (height != null) {
      json["height"] = height;
    }
    if (lineWidth != null) {
      json["lineWidth"] = lineWidth;
    }
    if (onlyOnHover != null) {
      json["onlyOnHover"] = hcJsonValue(onlyOnHover);
    }
    if (shape != null) {
      json["shape"] = shape;
    }
    if (style != null) {
      json["style"] = style!.toJson();
    }
    if (width != null) {
      json["width"] = width;
    }
    if (x != null) {
      json["x"] = x;
    }
    if (y != null) {
      json["y"] = y;
    }
    return json;
  }
}
