part of 'hc_options.dart';

/// (Gantt) Set options on specific levels in a tree grid axis. Takes precedence
class HCYAxisLabelsLevelsOptions implements HCOption {
  const HCYAxisLabelsLevelsOptions({
    this.level,
    this.style,
  });

  /// (Gantt) Specify the level which the options within this object applies
  final num? level;

  final HCCSSObject? style;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (level != null) {
      json["level"] = level;
    }
    if (style != null) {
      json["style"] = style!.toJson();
    }
    return json;
  }
}
