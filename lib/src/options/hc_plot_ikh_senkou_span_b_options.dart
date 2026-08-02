part of 'hc_options.dart';

/// (Highstock) The styles for Senkou Span B line
class HCPlotIkhSenkouSpanBOptions implements HCOption {
  const HCPlotIkhSenkouSpanBOptions({
    this.styles,
  });

  final HCPlotIkhSenkouSpanBStylesOptions? styles;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (styles != null) {
      json["styles"] = styles!.toJson();
    }
    return json;
  }
}
