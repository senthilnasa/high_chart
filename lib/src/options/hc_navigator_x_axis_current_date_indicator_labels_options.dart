part of 'hc_options.dart';

class HCNavigatorXAxisCurrentDateIndicatorLabelsOptions implements HCOption {
  const HCNavigatorXAxisCurrentDateIndicatorLabelsOptions({
    this.clip,
  });

  /// (Gantt) Whether to hide labels that are outside the plot area.
  final dynamic clip;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (clip != null) {
      json["clip"] = hcJsonValue(clip);
    }
    return json;
  }
}
