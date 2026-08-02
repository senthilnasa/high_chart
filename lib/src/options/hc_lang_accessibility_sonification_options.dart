part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Language options for sonification.
class HCLangAccessibilitySonificationOptions implements HCOption {
  const HCLangAccessibilitySonificationOptions({
    this.playAsSoundButtonText,
    this.playAsSoundClickAnnouncement,
  });

  final String? playAsSoundButtonText;

  final String? playAsSoundClickAnnouncement;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (playAsSoundButtonText != null) {
      json["playAsSoundButtonText"] = playAsSoundButtonText;
    }
    if (playAsSoundClickAnnouncement != null) {
      json["playAsSoundClickAnnouncement"] = playAsSoundClickAnnouncement;
    }
    return json;
  }
}
