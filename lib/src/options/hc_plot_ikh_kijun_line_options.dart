part of 'hc_options.dart';

/// (Highstock) The styles for Kijun line
class HCPlotIkhKijunLineOptions implements HCOption {
  const HCPlotIkhKijunLineOptions({
    this.styles,
  });

  final HCPlotIkhKijunLineStylesOptions? styles;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (styles != null) {
      json["styles"] = styles!.toJson();
    }
    return json;
  }
}
