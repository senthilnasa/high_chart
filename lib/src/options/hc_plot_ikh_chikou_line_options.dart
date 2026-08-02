part of 'hc_options.dart';

/// (Highstock) The styles for Chikou line
class HCPlotIkhChikouLineOptions implements HCOption {
  const HCPlotIkhChikouLineOptions({
    this.styles,
  });

  final HCPlotIkhChikouLineStylesOptions? styles;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (styles != null) {
      json["styles"] = styles!.toJson();
    }
    return json;
  }
}
