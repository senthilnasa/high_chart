part of 'hc_options.dart';

/// (Highstock, Gantt) Positioning for the input boxes. Allowed properties are
class HCRangeSelectorInputPositionOptions implements HCOption {
  const HCRangeSelectorInputPositionOptions({
    this.align,
    this.x,
    this.y,
  });

  /// (Highstock, Gantt) The alignment of the input box. Allowed properties are
  final String? align;

  /// (Highstock, Gantt) X offset of the input row.
  final num? x;

  /// (Highstock, Gantt) Y offset of the input row.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (align != null) {
      json["align"] = align;
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
