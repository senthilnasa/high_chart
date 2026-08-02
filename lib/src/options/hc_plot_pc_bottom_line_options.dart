part of 'hc_options.dart';

class HCPlotPcBottomLineOptions implements HCOption {
  const HCPlotPcBottomLineOptions({
    this.styles,
  });

  final HCPlotPcBottomLineStylesOptions? styles;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (styles != null) {
      json["styles"] = styles!.toJson();
    }
    return json;
  }
}
