part of 'hc_options.dart';

class HCPlotMappointClusterStatesOptions implements HCOption {
  const HCPlotMappointClusterStatesOptions({
    this.hover,
  });

  final HCPlotMappointClusterStatesHoverOptions? hover;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (hover != null) {
      json["hover"] = hover!.toJson();
    }
    return json;
  }
}
