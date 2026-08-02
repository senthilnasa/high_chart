part of 'hc_options.dart';

/// (Highcharts) The back side of the frame around a 3D chart.
class HCChart3dFrameBackOptions implements HCOption {
  const HCChart3dFrameBackOptions({
    this.color,
    this.size,
    this.visible,
  });

  /// (Highcharts) The color of the panel.
  final dynamic color;

  /// (Highcharts) The thickness of the panel.
  final num? size;

  /// (Highcharts) Whether to display the frame. Possible values are `true`, `false`, `"auto"` to display only the frames behind the data, and `"default"` to display faces behind the data based on the axis layout, ignoring the point of view.
  final dynamic visible;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (color != null) {
      json['color'] = hcJsonValue(color);
    }
    if (size != null) {
      json['size'] = size;
    }
    if (visible != null) {
      json['visible'] = hcJsonValue(visible);
    }
    return json;
  }
}

/// (Highcharts) The bottom of the frame around a 3D chart.
class HCChart3dFrameBottomOptions implements HCOption {
  const HCChart3dFrameBottomOptions({
    this.color,
    this.size,
    this.visible,
  });

  /// (Highcharts) The color of the panel.
  final dynamic color;

  /// (Highcharts) The thickness of the panel.
  final num? size;

  /// (Highcharts) Whether to display the frame. Possible values are `true`, `false`, `"auto"` to display only the frames behind the data, and `"default"` to display faces behind the data based on the axis layout, ignoring the point of view.
  final dynamic visible;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (color != null) {
      json['color'] = hcJsonValue(color);
    }
    if (size != null) {
      json['size'] = size;
    }
    if (visible != null) {
      json['visible'] = hcJsonValue(visible);
    }
    return json;
  }
}

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

  /// (Highcharts) Whether to display the frame. Possible values are `true`, `false`, `"auto"` to display only the frames behind the data, and `"default"` to display faces behind the data based on the axis layout, ignoring the point of view.
  final dynamic visible;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (color != null) {
      json['color'] = hcJsonValue(color);
    }
    if (size != null) {
      json['size'] = size;
    }
    if (visible != null) {
      json['visible'] = hcJsonValue(visible);
    }
    return json;
  }
}

/// (Highcharts) The left side of the frame around a 3D chart.
class HCChart3dFrameLeftOptions implements HCOption {
  const HCChart3dFrameLeftOptions({
    this.color,
    this.size,
    this.visible,
  });

  /// (Highcharts) The color of the panel.
  final dynamic color;

  /// (Highcharts) The thickness of the panel.
  final num? size;

  /// (Highcharts) Whether to display the frame. Possible values are `true`, `false`, `"auto"` to display only the frames behind the data, and `"default"` to display faces behind the data based on the axis layout, ignoring the point of view.
  final dynamic visible;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (color != null) {
      json['color'] = hcJsonValue(color);
    }
    if (size != null) {
      json['size'] = size;
    }
    if (visible != null) {
      json['visible'] = hcJsonValue(visible);
    }
    return json;
  }
}

/// (Highcharts) Provides the option to draw a frame around the charts by defining a bottom, front and back panel.
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

  /// (Highcharts) Note: As of v5.0.12, `frame.left` or `frame.right` should be used instead.
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
      json['back'] = back!.toJson();
    }
    if (bottom != null) {
      json['bottom'] = bottom!.toJson();
    }
    if (front != null) {
      json['front'] = front!.toJson();
    }
    if (left != null) {
      json['left'] = left!.toJson();
    }
    if (right != null) {
      json['right'] = right!.toJson();
    }
    if (side != null) {
      json['side'] = side!.toJson();
    }
    if (size != null) {
      json['size'] = size;
    }
    if (top != null) {
      json['top'] = top!.toJson();
    }
    if (visible != null) {
      json['visible'] = visible;
    }
    return json;
  }
}

/// (Highcharts) The right of the frame around a 3D chart.
class HCChart3dFrameRightOptions implements HCOption {
  const HCChart3dFrameRightOptions({
    this.color,
    this.size,
    this.visible,
  });

  /// (Highcharts) The color of the panel.
  final dynamic color;

  /// (Highcharts) The thickness of the panel.
  final num? size;

  /// (Highcharts) Whether to display the frame. Possible values are `true`, `false`, `"auto"` to display only the frames behind the data, and `"default"` to display faces behind the data based on the axis layout, ignoring the point of view.
  final dynamic visible;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (color != null) {
      json['color'] = hcJsonValue(color);
    }
    if (size != null) {
      json['size'] = size;
    }
    if (visible != null) {
      json['visible'] = hcJsonValue(visible);
    }
    return json;
  }
}

/// (Highcharts) Note: As of v5.0.12, `frame.left` or `frame.right` should be used instead.
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
      json['color'] = hcJsonValue(color);
    }
    if (size != null) {
      json['size'] = size;
    }
    return json;
  }
}

/// (Highcharts) The top of the frame around a 3D chart.
class HCChart3dFrameTopOptions implements HCOption {
  const HCChart3dFrameTopOptions({
    this.color,
    this.size,
    this.visible,
  });

  /// (Highcharts) The color of the panel.
  final dynamic color;

  /// (Highcharts) The thickness of the panel.
  final num? size;

  /// (Highcharts) Whether to display the frame. Possible values are `true`, `false`, `"auto"` to display only the frames behind the data, and `"default"` to display faces behind the data based on the axis layout, ignoring the point of view.
  final dynamic visible;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (color != null) {
      json['color'] = hcJsonValue(color);
    }
    if (size != null) {
      json['size'] = size;
    }
    if (visible != null) {
      json['visible'] = hcJsonValue(visible);
    }
    return json;
  }
}

/// (Highcharts) Options to render charts in 3 dimensions. This feature requires `highcharts-3d.js`, found in the download package or online at code.highcharts.com/highcharts-3d.js.
class HCChart3dOptions implements HCOption {
  const HCChart3dOptions({
    this.alpha,
    this.axisLabelPosition,
    this.beta,
    this.depth,
    this.enabled,
    this.fitToPlot,
    this.frame,
    this.viewDistance,
  });

  /// (Highcharts) One of the two rotation angles for the chart.
  final num? alpha;

  /// (Highcharts) Set it to `"auto"` to automatically move the labels to the best edge.
  final String? axisLabelPosition;

  /// (Highcharts) One of the two rotation angles for the chart.
  final num? beta;

  /// (Highcharts) The total depth of the chart.
  final num? depth;

  /// (Highcharts) Whether to render the chart using the 3D functionality.
  final bool? enabled;

  /// (Highcharts) Whether the 3d box should automatically adjust to the chart plot area.
  final bool? fitToPlot;

  /// (Highcharts) Provides the option to draw a frame around the charts by defining a bottom, front and back panel.
  final HCChart3dFrameOptions? frame;

  /// (Highcharts) Defines the distance the viewer is standing in front of the chart, this setting is important to calculate the perspective effect in column and scatter charts. It is not used for 3D pie charts.
  final num? viewDistance;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (alpha != null) {
      json['alpha'] = alpha;
    }
    if (axisLabelPosition != null) {
      json['axisLabelPosition'] = axisLabelPosition;
    }
    if (beta != null) {
      json['beta'] = beta;
    }
    if (depth != null) {
      json['depth'] = depth;
    }
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    if (fitToPlot != null) {
      json['fitToPlot'] = fitToPlot;
    }
    if (frame != null) {
      json['frame'] = frame!.toJson();
    }
    if (viewDistance != null) {
      json['viewDistance'] = viewDistance;
    }
    return json;
  }
}
