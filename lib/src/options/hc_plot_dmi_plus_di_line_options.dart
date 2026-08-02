part of 'hc_options.dart';

/// (Highstock) +DI line options.
class HCPlotDmiPlusDILineOptions implements HCOption {
  const HCPlotDmiPlusDILineOptions({
    this.styles,
  });

  /// (Highstock) Styles for the +DI line.
  final HCPlotDmiPlusDILineStylesOptions? styles;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (styles != null) {
      json["styles"] = styles!.toJson();
    }
    return json;
  }
}
