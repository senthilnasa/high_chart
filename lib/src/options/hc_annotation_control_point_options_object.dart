part of 'hc_options.dart';

/// (Highstock) Options for the control point which controls the annotation's
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

  final dynamic visible;

  final num? width;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (events != null) {
      json["events"] = hcJsonValue(events);
    }
    if (height != null) {
      json["height"] = height;
    }
    if (style != null) {
      json["style"] = hcJsonValue(style);
    }
    if (symbol != null) {
      json["symbol"] = symbol;
    }
    if (visible != null) {
      json["visible"] = hcJsonValue(visible);
    }
    if (width != null) {
      json["width"] = width;
    }
    return json;
  }
}
