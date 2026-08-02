part of 'hc_options.dart';

class HCPlotScatterClusterStatesOptions implements HCOption {
  const HCPlotScatterClusterStatesOptions({
    this.hover,
  });

  final HCPlotScatterClusterStatesHoverOptions? hover;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (hover != null) {
      json["hover"] = hover!.toJson();
    }
    return json;
  }
}
