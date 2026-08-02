part of 'hc_options.dart';

/// (Highstock) Bottom line options.
class HCPlotPriceenvelopesBottomLineOptions implements HCOption {
  const HCPlotPriceenvelopesBottomLineOptions({
    this.styles,
  });

  final HCPlotPriceenvelopesBottomLineStylesOptions? styles;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (styles != null) {
      json["styles"] = styles!.toJson();
    }
    return json;
  }
}
