part of 'hc_options.dart';

/// (Highstock) AroonDown line options.
class HCPlotAroonAroonDownOptions implements HCOption {
  const HCPlotAroonAroonDownOptions({
    this.styles,
  });

  /// (Highstock) Styles for an aroonDown line.
  final HCPlotAroonAroonDownStylesOptions? styles;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (styles != null) {
      json["styles"] = styles!.toJson();
    }
    return json;
  }
}
