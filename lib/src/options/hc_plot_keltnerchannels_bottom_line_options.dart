part of 'hc_options.dart';

/// (Highstock) Bottom line options.
class HCPlotKeltnerchannelsBottomLineOptions implements HCOption {
  const HCPlotKeltnerchannelsBottomLineOptions({
    this.styles,
  });

  /// (Highstock) Styles for a bottom line.
  final HCPlotKeltnerchannelsBottomLineStylesOptions? styles;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (styles != null) {
      json["styles"] = styles!.toJson();
    }
    return json;
  }
}
