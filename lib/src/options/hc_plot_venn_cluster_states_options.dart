part of 'hc_options.dart';

class HCPlotVennClusterStatesOptions implements HCOption {
  const HCPlotVennClusterStatesOptions({
    this.hover,
  });

  final HCPlotVennClusterStatesHoverOptions? hover;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (hover != null) {
      json["hover"] = hover!.toJson();
    }
    return json;
  }
}
