part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) The default text for the
class HCLangRangeSelectorOptions implements HCOption {
  const HCLangRangeSelectorOptions({
    this.allText,
    this.allTitle,
    this.monthText,
    this.monthTitle,
    this.yearText,
    this.yearTitle,
    this.ytdText,
    this.ytdTitle,
  });

  final String? allText;

  final String? allTitle;

  final String? monthText;

  final String? monthTitle;

  final String? yearText;

  final String? yearTitle;

  final String? ytdText;

  final String? ytdTitle;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (allText != null) {
      json["allText"] = allText;
    }
    if (allTitle != null) {
      json["allTitle"] = allTitle;
    }
    if (monthText != null) {
      json["monthText"] = monthText;
    }
    if (monthTitle != null) {
      json["monthTitle"] = monthTitle;
    }
    if (yearText != null) {
      json["yearText"] = yearText;
    }
    if (yearTitle != null) {
      json["yearTitle"] = yearTitle;
    }
    if (ytdText != null) {
      json["ytdText"] = ytdText;
    }
    if (ytdTitle != null) {
      json["ytdTitle"] = ytdTitle;
    }
    return json;
  }
}
