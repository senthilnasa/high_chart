part of 'hc_options.dart';

/// (Highcharts) Rotation options for the words in the wordcloud.
class HCPlotWordcloudRotationOptions implements HCOption {
  const HCPlotWordcloudRotationOptions({
    this.from,
    this.orientations,
    this.to,
  });

  /// (Highcharts) The smallest degree of rotation for a word.
  final num? from;

  /// (Highcharts) The number of possible orientations for a word, within the
  final num? orientations;

  /// (Highcharts) The largest degree of rotation for a word.
  final num? to;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (from != null) {
      json["from"] = from;
    }
    if (orientations != null) {
      json["orientations"] = orientations;
    }
    if (to != null) {
      json["to"] = to;
    }
    return json;
  }
}
