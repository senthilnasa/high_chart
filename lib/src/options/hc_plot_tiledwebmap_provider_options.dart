part of 'hc_options.dart';

/// (Highmaps) Provider options for the series.
class HCPlotTiledwebmapProviderOptions implements HCOption {
  const HCPlotTiledwebmapProviderOptions({
    this.apiKey,
    this.subdomain,
    this.theme,
    this.type,
    this.url,
  });

  /// (Highmaps) API key for providers that require using one.
  final String? apiKey;

  /// (Highmaps) Subdomain required by each provider. Check the providers
  final String? subdomain;

  /// (Highmaps) Set a tiles theme. Check the providers documentation for
  final String? theme;

  /// (Highmaps) Provider type to pull data (tiles) from.
  final String? type;

  /// (Highmaps) Custom URL for providers not specified in providers type.
  final String? url;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (apiKey != null) {
      json["apiKey"] = apiKey;
    }
    if (subdomain != null) {
      json["subdomain"] = subdomain;
    }
    if (theme != null) {
      json["theme"] = theme;
    }
    if (type != null) {
      json["type"] = type;
    }
    if (url != null) {
      json["url"] = url;
    }
    return json;
  }
}
