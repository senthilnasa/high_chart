part of 'hc_options.dart';

/// (Highstock) The styles for bars when volume is divided into
class HCPlotVbpVolumeDivisionOptions implements HCOption {
  const HCPlotVbpVolumeDivisionOptions({
    this.enabled,
    this.styles,
  });

  /// (Highstock) Option to control if volume is divided.
  final dynamic enabled;

  final HCPlotVbpVolumeDivisionStylesOptions? styles;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (enabled != null) {
      json["enabled"] = hcJsonValue(enabled);
    }
    if (styles != null) {
      json["styles"] = styles!.toJson();
    }
    return json;
  }
}
