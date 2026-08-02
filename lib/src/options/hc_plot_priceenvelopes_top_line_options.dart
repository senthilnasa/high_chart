part of 'hc_options.dart';

/// (Highstock) Top line options.
class HCPlotPriceenvelopesTopLineOptions implements HCOption {
  const HCPlotPriceenvelopesTopLineOptions({
    this.styles,
  });

  final HCPlotPriceenvelopesTopLineStylesOptions? styles;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (styles != null) {
      json["styles"] = styles!.toJson();
    }
    return json;
  }
}
