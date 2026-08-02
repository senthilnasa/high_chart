part of 'hc_options.dart';

/// (Gantt) The symbol for the collapse and expand icon in a treegrid.
class HCYAxisLabelsSymbolOptions implements HCOption {
  const HCYAxisLabelsSymbolOptions({
    this.height,
    this.type,
    this.width,
    this.x,
    this.y,
  });

  final num? height;

  /// (Gantt) The symbol type. Points to a definition function in the
  final String? type;

  final num? width;

  final num? x;

  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (height != null) {
      json["height"] = height;
    }
    if (type != null) {
      json["type"] = type;
    }
    if (width != null) {
      json["width"] = width;
    }
    if (x != null) {
      json["x"] = x;
    }
    if (y != null) {
      json["y"] = y;
    }
    return json;
  }
}
