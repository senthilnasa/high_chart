part of 'hc_options.dart';

/// (Highstock) The styles for Tenkan line
class HCPlotIkhTenkanLineOptions implements HCOption {
  const HCPlotIkhTenkanLineOptions({
    this.styles,
  });

  final HCPlotIkhTenkanLineStylesOptions? styles;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (styles != null) {
      json["styles"] = styles!.toJson();
    }
    return json;
  }
}
