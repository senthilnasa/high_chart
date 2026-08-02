part of 'hc_options.dart';

/// (Highstock) Smoothed line options.
class HCPlotStochasticSmoothedLineOptions implements HCOption {
  const HCPlotStochasticSmoothedLineOptions({
    this.styles,
  });

  /// (Highstock) Styles for a smoothed line.
  final HCPlotStochasticSmoothedLineStylesOptions? styles;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (styles != null) {
      json["styles"] = styles!.toJson();
    }
    return json;
  }
}
