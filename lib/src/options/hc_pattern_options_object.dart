part of 'hc_options.dart';

/// Pattern options
class HCPatternOptionsObject implements HCOption {
  const HCPatternOptionsObject({
    this.anchorToPoint,
    this.aspectRatio,
    this.backgroundColor,
    this.color,
    this.height,
    this.id,
    this.image,
    this.opacity,
    this.path,
    this.patternTransform,
    this.width,
    this.x,
    this.y,
  });

  /// When true, the pattern is anchored to each individual point rather than
  final dynamic anchorToPoint;

  /// For automatically calculated width and height on images, it is possible
  final num? aspectRatio;

  /// Background color for the pattern if a `path` is set (not images).
  final String? backgroundColor;

  /// Pattern color, used as default path stroke.
  final String? color;

  /// Analogous to pattern.width.
  final num? height;

  /// ID to assign to the pattern. This is automatically computed if not added,
  final String? id;

  /// URL to an image to use as the pattern.
  final String? image;

  /// Opacity of the pattern as a float value from 0 to 1.
  final num? opacity;

  /// Either an SVG path as string, or an object. As an object, supply the path
  final dynamic path;

  /// SVG `patternTransform` to apply to the entire pattern.
  final String? patternTransform;

  /// Width of the pattern. For images this is automatically set to the width
  final num? width;

  /// Horizontal offset of the pattern.
  final num? x;

  /// Vertical offset of the pattern.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (anchorToPoint != null) {
      json["anchorToPoint"] = hcJsonValue(anchorToPoint);
    }
    if (aspectRatio != null) {
      json["aspectRatio"] = aspectRatio;
    }
    if (backgroundColor != null) {
      json["backgroundColor"] = backgroundColor;
    }
    if (color != null) {
      json["color"] = color;
    }
    if (height != null) {
      json["height"] = height;
    }
    if (id != null) {
      json["id"] = id;
    }
    if (image != null) {
      json["image"] = image;
    }
    if (opacity != null) {
      json["opacity"] = opacity;
    }
    if (path != null) {
      json["path"] = hcJsonValue(path);
    }
    if (patternTransform != null) {
      json["patternTransform"] = patternTransform;
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
