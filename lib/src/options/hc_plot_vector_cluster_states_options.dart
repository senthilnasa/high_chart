part of 'hc_options.dart';

class HCPlotVectorClusterStatesOptions implements HCOption {
  const HCPlotVectorClusterStatesOptions({
    this.hover,
  });

  final HCPlotVectorClusterStatesHoverOptions? hover;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (hover != null) {
      json["hover"] = hover!.toJson();
    }
    return json;
  }
}
