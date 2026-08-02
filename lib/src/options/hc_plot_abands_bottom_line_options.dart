part of 'hc_options.dart';

class HCPlotAbandsBottomLineOptions implements HCOption {
  const HCPlotAbandsBottomLineOptions({
    this.styles,
  });

  final HCPlotAbandsBottomLineStylesOptions? styles;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (styles != null) {
      json["styles"] = styles!.toJson();
    }
    return json;
  }
}
