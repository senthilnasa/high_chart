part of 'hc_options.dart';

/// (Highcharts, Highstock) Configure the Popup strings in the chart. Requires
class HCLangNavigationOptions implements HCOption {
  const HCLangNavigationOptions({
    this.popup,
  });

  /// (Highcharts, Highstock) Translations for all field names used in popup.
  final HCLangNavigationPopupOptions? popup;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (popup != null) {
      json["popup"] = popup!.toJson();
    }
    return json;
  }
}
