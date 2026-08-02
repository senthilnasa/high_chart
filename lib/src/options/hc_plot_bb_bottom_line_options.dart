part of 'hc_options.dart';

/// (Highstock) Bottom line options.
class HCPlotBbBottomLineOptions implements HCOption {
  const HCPlotBbBottomLineOptions({
    this.styles,
  });

  /// (Highstock) Styles for the bottom line.
  final HCPlotBbBottomLineStylesOptions? styles;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (styles != null) {
      json["styles"] = styles!.toJson();
    }
    return json;
  }
}
