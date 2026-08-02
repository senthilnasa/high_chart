part of 'hc_options.dart';

class HCDefsArrowAttributesOptions implements HCOption {
  const HCDefsArrowAttributesOptions({
    this.id,
    this.markerHeight,
    this.markerWidth,
    this.refX,
    this.refY,
  });

  final String? id;

  final num? markerHeight;

  final num? markerWidth;

  final num? refX;

  final num? refY;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id;
    }
    if (markerHeight != null) {
      json['markerHeight'] = markerHeight;
    }
    if (markerWidth != null) {
      json['markerWidth'] = markerWidth;
    }
    if (refX != null) {
      json['refX'] = refX;
    }
    if (refY != null) {
      json['refY'] = refY;
    }
    return json;
  }
}

class HCDefsArrowOptions implements HCOption {
  const HCDefsArrowOptions({
    this.attributes,
    this.children,
    this.tagName,
  });

  final HCDefsArrowAttributesOptions? attributes;

  final List<HCDefsOptions>? children;

  final String? tagName;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (attributes != null) {
      json['attributes'] = attributes!.toJson();
    }
    if (children != null) {
      json['children'] = children!.map((e) => e.toJson()).toList();
    }
    if (tagName != null) {
      json['tagName'] = tagName;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Options for configuring markers for annotations.
class HCDefsOptions implements HCOption {
  const HCDefsOptions({
    this.arrow,
  });

  final dynamic arrow;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (arrow != null) {
      json['arrow'] = hcJsonValue(arrow);
    }
    return json;
  }
}

class HCDefsReverseArrowAttributesOptions implements HCOption {
  const HCDefsReverseArrowAttributesOptions({
    this.id,
    this.markerHeight,
    this.markerWidth,
    this.refX,
    this.refY,
  });

  final String? id;

  final num? markerHeight;

  final num? markerWidth;

  final num? refX;

  final num? refY;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id;
    }
    if (markerHeight != null) {
      json['markerHeight'] = markerHeight;
    }
    if (markerWidth != null) {
      json['markerWidth'] = markerWidth;
    }
    if (refX != null) {
      json['refX'] = refX;
    }
    if (refY != null) {
      json['refY'] = refY;
    }
    return json;
  }
}

class HCDefsReverseArrowOptions implements HCOption {
  const HCDefsReverseArrowOptions({
    this.attributes,
    this.tagName,
  });

  final HCDefsReverseArrowAttributesOptions? attributes;

  final String? tagName;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (attributes != null) {
      json['attributes'] = attributes!.toJson();
    }
    if (tagName != null) {
      json['tagName'] = tagName;
    }
    return json;
  }
}
