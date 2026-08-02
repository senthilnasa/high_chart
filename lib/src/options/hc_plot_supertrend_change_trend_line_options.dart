part of 'hc_options.dart';

/// (Highstock) The styles for the Supertrend line that intersect main
class HCPlotSupertrendChangeTrendLineOptions implements HCOption {
  const HCPlotSupertrendChangeTrendLineOptions({
    this.styles,
  });

  final HCPlotSupertrendChangeTrendLineStylesOptions? styles;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (styles != null) {
      json["styles"] = styles!.toJson();
    }
    return json;
  }
}
