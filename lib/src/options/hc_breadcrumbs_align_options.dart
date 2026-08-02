part of 'hc_options.dart';

/// Options for aligning breadcrumbs group.
class HCBreadcrumbsAlignOptions implements HCOption {
  const HCBreadcrumbsAlignOptions({
    this.align,
    this.verticalAlign,
    this.x,
    this.y,
  });

  /// Align of a Breadcrumb group.
  final String? align;

  /// Vertical align of a Breadcrumb group.
  final String? verticalAlign;

  /// X offset of a Breadcrumbs group.
  final num? x;

  /// Y offset of a Breadcrumbs group.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (align != null) {
      json["align"] = align;
    }
    if (verticalAlign != null) {
      json["verticalAlign"] = verticalAlign;
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
