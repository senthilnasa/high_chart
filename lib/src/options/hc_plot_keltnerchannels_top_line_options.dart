part of 'hc_options.dart';

/// (Highstock) Top line options.
class HCPlotKeltnerchannelsTopLineOptions implements HCOption {
  const HCPlotKeltnerchannelsTopLineOptions({
    this.styles,
  });

  /// (Highstock) Styles for a bottom line.
  final HCPlotKeltnerchannelsTopLineStylesOptions? styles;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (styles != null) {
      json["styles"] = styles!.toJson();
    }
    return json;
  }
}
