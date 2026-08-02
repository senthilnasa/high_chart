part of 'hc_options.dart';

/// Holds a pattern definition.
class HCPatternObject implements HCOption {
  const HCPatternObject({
    this.animation,
    this.pattern,
    this.patternIndex,
  });

  /// Animation options for the image pattern loading.
  final dynamic animation;

  /// Pattern options
  final HCPatternOptionsObject? pattern;

  /// Optionally an index referencing which pattern to use. Highcharts adds 10
  final num? patternIndex;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (animation != null) {
      json["animation"] = hcJsonValue(animation);
    }
    if (pattern != null) {
      json["pattern"] = pattern!.toJson();
    }
    if (patternIndex != null) {
      json["patternIndex"] = patternIndex;
    }
    return json;
  }
}
