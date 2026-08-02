part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Settings for a custom font for the
class HCExportingPdfFontOptions implements HCOption {
  const HCExportingPdfFontOptions({
    this.bold,
    this.bolditalic,
    this.italic,
    this.normal,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) The TTF font file for bold text.
  final String? bold;

  /// (Highcharts, Highstock, Highmaps, Gantt) The TTF font file for bold and
  final String? bolditalic;

  /// (Highcharts, Highstock, Highmaps, Gantt) The TTF font file for italic
  final String? italic;

  /// (Highcharts, Highstock, Highmaps, Gantt) The TTF font file for normal
  final String? normal;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (bold != null) {
      json["bold"] = bold;
    }
    if (bolditalic != null) {
      json["bolditalic"] = bolditalic;
    }
    if (italic != null) {
      json["italic"] = italic;
    }
    if (normal != null) {
      json["normal"] = normal;
    }
    return json;
  }
}
