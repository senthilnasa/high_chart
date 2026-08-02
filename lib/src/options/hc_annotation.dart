part of 'hc_options.dart';

/// (Highstock) Options for the control point which controls the annotation's height.
class HCAnnotationControlPointOptionsObject implements HCOption {
  const HCAnnotationControlPointOptionsObject({
    this.events,
    this.height,
    this.style,
    this.symbol,
    this.visible,
    this.width,
  });

  final dynamic events;

  final num? height;

  final dynamic style;

  final String? symbol;

  final bool? visible;

  final num? width;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (events != null) {
      json['events'] = hcJsonValue(events);
    }
    if (height != null) {
      json['height'] = height;
    }
    if (style != null) {
      json['style'] = hcJsonValue(style);
    }
    if (symbol != null) {
      json['symbol'] = symbol;
    }
    if (visible != null) {
      json['visible'] = visible;
    }
    if (width != null) {
      json['width'] = width;
    }
    return json;
  }
}

/// (Highstock) Accessibility options for an annotation label.
class HCAnnotationLabelAccessibilityOptionsObject implements HCOption {
  const HCAnnotationLabelAccessibilityOptionsObject({
    this.description,
  });

  /// (Highstock) Description of an annotation label for screen readers and other assistive technology.
  final String? description;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (description != null) {
      json['description'] = description;
    }
    return json;
  }
}

/// Object of shape point.
class HCAnnotationMockPointOptionsObject implements HCOption {
  const HCAnnotationMockPointOptionsObject({
    this.x,
    this.xAxis,
    this.y,
    this.yAxis,
  });

  /// The x position of the point. Units can be either in axis or chart pixel coordinates.
  final num? x;

  /// This number defines which xAxis the point is connected to. It refers to either the axis id or the index of the axis in the xAxis array. If the option is not configured or the axis is not found the point's x coordinate refers to the chart pixels.
  final dynamic xAxis;

  /// The y position of the point. Units can be either in axis or chart pixel coordinates.
  final num? y;

  /// This number defines which yAxis the point is connected to. It refers to either the axis id or the index of the axis in the yAxis array. If the option is not configured or the axis is not found the point's y coordinate refers to the chart pixels.
  final dynamic yAxis;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (x != null) {
      json['x'] = x;
    }
    if (xAxis != null) {
      json['xAxis'] = hcJsonValue(xAxis);
    }
    if (y != null) {
      json['y'] = y;
    }
    if (yAxis != null) {
      json['yAxis'] = hcJsonValue(yAxis);
    }
    return json;
  }
}
