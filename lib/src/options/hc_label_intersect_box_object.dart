part of 'hc_options.dart';

/// Containing the position of a box that should be avoided by labels.
class HCLabelIntersectBoxObject implements HCOption {
  const HCLabelIntersectBoxObject({
    this.bottom,
    this.left,
    this.right,
    this.top,
  });

  final num? bottom;

  final num? left;

  final num? right;

  final num? top;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (bottom != null) {
      json["bottom"] = bottom;
    }
    if (left != null) {
      json["left"] = left;
    }
    if (right != null) {
      json["right"] = right;
    }
    if (top != null) {
      json["top"] = top;
    }
    return json;
  }
}
