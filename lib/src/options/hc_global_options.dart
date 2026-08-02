part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Global options that don't apply to
class HCGlobalOptions implements HCOption {
  const HCGlobalOptions({
    this.buttonTheme,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) General theme for buttons. This
  final HCGlobalButtonThemeOptions? buttonTheme;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (buttonTheme != null) {
      json["buttonTheme"] = buttonTheme!.toJson();
    }
    return json;
  }
}
