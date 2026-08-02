part of 'hc_options.dart';

class HCPlotAbandsTopLineOptions implements HCOption {
  const HCPlotAbandsTopLineOptions({
    this.styles,
  });

  final HCPlotAbandsTopLineStylesOptions? styles;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (styles != null) {
      json["styles"] = styles!.toJson();
    }
    return json;
  }
}
