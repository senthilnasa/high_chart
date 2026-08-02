part of 'hc_options.dart';

/// (Highstock) Top line options.
class HCPlotBbTopLineOptions implements HCOption {
  const HCPlotBbTopLineOptions({
    this.styles,
  });

  /// (Highstock) Styles for the top line.
  final HCPlotBbTopLineStylesOptions? styles;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (styles != null) {
      json["styles"] = styles!.toJson();
    }
    return json;
  }
}
