part of 'hc_options.dart';

class HCPlotPcTopLineOptions implements HCOption {
  const HCPlotPcTopLineOptions({
    this.styles,
  });

  final HCPlotPcTopLineStylesOptions? styles;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (styles != null) {
      json["styles"] = styles!.toJson();
    }
    return json;
  }
}
