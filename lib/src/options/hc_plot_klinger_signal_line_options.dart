part of 'hc_options.dart';

class HCPlotKlingerSignalLineOptions implements HCOption {
  const HCPlotKlingerSignalLineOptions({
    this.styles,
  });

  /// (Highstock) Styles for a signal line.
  final HCPlotKlingerSignalLineStylesOptions? styles;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (styles != null) {
      json["styles"] = styles!.toJson();
    }
    return json;
  }
}
