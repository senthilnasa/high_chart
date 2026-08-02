part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Position configuration for the
class HCCreditsPositionOptions implements HCOption {
  const HCCreditsPositionOptions({
    this.align,
    this.verticalAlign,
    this.x,
    this.y,
  });

  final String? align;

  final String? verticalAlign;

  final num? x;

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
