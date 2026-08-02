part of 'hc_options.dart';

/// (Highcharts) Provides the option to draw a frame around the charts by
class HCChart3dFrameOptions implements HCOption {
  const HCChart3dFrameOptions({
    this.back,
    this.bottom,
    this.front,
    this.left,
    this.right,
    this.side,
    this.size,
    this.top,
    this.visible,
  });

  /// (Highcharts) The back side of the frame around a 3D chart.
  final HCChart3dFrameBackOptions? back;

  /// (Highcharts) The bottom of the frame around a 3D chart.
  final HCChart3dFrameBottomOptions? bottom;

  /// (Highcharts) The front of the frame around a 3D chart.
  final HCChart3dFrameFrontOptions? front;

  /// (Highcharts) The left side of the frame around a 3D chart.
  final HCChart3dFrameLeftOptions? left;

  /// (Highcharts) The right of the frame around a 3D chart.
  final HCChart3dFrameRightOptions? right;

  /// (Highcharts) Note: As of v5.0.12, `frame.left` or `frame.right` should be
  final HCChart3dFrameSideOptions? side;

  /// (Highcharts) General pixel thickness for the frame faces.
  final num? size;

  /// (Highcharts) The top of the frame around a 3D chart.
  final HCChart3dFrameTopOptions? top;

  /// (Highcharts) Whether the frames are visible.
  final String? visible;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (back != null) {
      json["back"] = back!.toJson();
    }
    if (bottom != null) {
      json["bottom"] = bottom!.toJson();
    }
    if (front != null) {
      json["front"] = front!.toJson();
    }
    if (left != null) {
      json["left"] = left!.toJson();
    }
    if (right != null) {
      json["right"] = right!.toJson();
    }
    if (side != null) {
      json["side"] = side!.toJson();
    }
    if (size != null) {
      json["size"] = size;
    }
    if (top != null) {
      json["top"] = top!.toJson();
    }
    if (visible != null) {
      json["visible"] = visible;
    }
    return json;
  }
}
