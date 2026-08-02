part of 'hc_options.dart';

class HCConnectorsAnimationOptionsObject implements HCOption {
  const HCConnectorsAnimationOptionsObject({
    this.reversed,
  });

  final dynamic reversed;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (reversed != null) {
      json["reversed"] = hcJsonValue(reversed);
    }
    return json;
  }
}
