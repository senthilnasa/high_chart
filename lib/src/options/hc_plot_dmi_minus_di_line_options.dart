part of 'hc_options.dart';

/// (Highstock) -DI line options.
class HCPlotDmiMinusDILineOptions implements HCOption {
  const HCPlotDmiMinusDILineOptions({
    this.styles,
  });

  /// (Highstock) Styles for the -DI line.
  final HCPlotDmiMinusDILineStylesOptions? styles;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (styles != null) {
      json["styles"] = styles!.toJson();
    }
    return json;
  }
}
