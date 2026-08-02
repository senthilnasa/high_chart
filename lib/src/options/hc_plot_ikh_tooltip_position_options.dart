part of 'hc_options.dart';

/// (Highstock) Positioning options for fixed tooltip, taking effect only when
class HCPlotIkhTooltipPositionOptions implements HCOption {
  const HCPlotIkhTooltipPositionOptions({
    this.align,
    this.relativeTo,
    this.verticalAlign,
    this.x,
    this.y,
  });

  /// (Highstock) The horizontal alignment of the fixed tooltip.
  final String? align;

  /// (Highstock) What the fixed tooltip alignment should be relative to.
  final String? relativeTo;

  /// (Highstock) The vertical alignment of the fixed tooltip.
  final String? verticalAlign;

  /// (Highstock) X pixel offset from the given position. Can be used to shy
  final num? x;

  /// (Highstock) Y pixel offset from the given position. Can be used to shy
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (align != null) {
      json["align"] = align;
    }
    if (relativeTo != null) {
      json["relativeTo"] = relativeTo;
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
