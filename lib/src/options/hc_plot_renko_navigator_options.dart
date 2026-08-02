part of 'hc_options.dart';

/// (Highstock) Options for the corresponding navigator series if
class HCPlotRenkoNavigatorOptions implements HCOption {
  const HCPlotRenkoNavigatorOptions({
    this.type,
  });

  final String? type;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (type != null) {
      json["type"] = type;
    }
    return json;
  }
}
