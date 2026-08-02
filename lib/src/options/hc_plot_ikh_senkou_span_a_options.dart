part of 'hc_options.dart';

/// (Highstock) The styles for Senkou Span A line
class HCPlotIkhSenkouSpanAOptions implements HCOption {
  const HCPlotIkhSenkouSpanAOptions({
    this.styles,
  });

  final HCPlotIkhSenkouSpanAStylesOptions? styles;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (styles != null) {
      json["styles"] = styles!.toJson();
    }
    return json;
  }
}
