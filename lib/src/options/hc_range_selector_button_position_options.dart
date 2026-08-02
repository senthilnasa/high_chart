part of 'hc_options.dart';

/// (Highstock, Gantt) Positioning for the button row.
class HCRangeSelectorButtonPositionOptions implements HCOption {
  const HCRangeSelectorButtonPositionOptions({
    this.align,
    this.x,
    this.y,
  });

  /// (Highstock, Gantt) The alignment of the input box. Allowed properties are
  final String? align;

  /// (Highstock, Gantt) X offset of the button row.
  final num? x;

  /// (Highstock, Gantt) Y offset of the button row.
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
