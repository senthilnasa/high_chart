part of 'hc_options.dart';

class HCPlotAoParamsOptions implements HCOption {
  const HCPlotAoParamsOptions({
    this.index,
    this.period,
  });

  final String? index;

  final String? period;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (index != null) {
      json["index"] = index;
    }
    if (period != null) {
      json["period"] = period;
    }
    return json;
  }
}
