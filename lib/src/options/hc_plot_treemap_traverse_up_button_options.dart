part of 'hc_options.dart';

/// (Highcharts) Options for the button appearing when traversing down in a
class HCPlotTreemapTraverseUpButtonOptions implements HCOption {
  const HCPlotTreemapTraverseUpButtonOptions({
    this.position,
  });

  /// (Highcharts) The position of the button.
  final HCPlotTreemapTraverseUpButtonPositionOptions? position;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (position != null) {
      json["position"] = position!.toJson();
    }
    return json;
  }
}
