part of 'hc_options.dart';

/// (Highstock) Accessibility options for an annotation label.
class HCAnnotationLabelAccessibilityOptionsObject implements HCOption {
  const HCAnnotationLabelAccessibilityOptionsObject({
    this.description,
  });

  /// (Highstock) Description of an annotation label for screen readers and
  final String? description;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (description != null) {
      json["description"] = description;
    }
    return json;
  }
}
