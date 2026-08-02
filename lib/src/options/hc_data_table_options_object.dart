part of 'hc_options.dart';

/// Options for the `DataTable` or `DataTableCore` classes.
class HCDataTableOptionsObject implements HCOption {
  const HCDataTableOptionsObject({
    this.columns,
    this.id,
  });

  /// The column options for the data table. The columns are defined by an
  final Map<String, dynamic>? columns;

  /// Custom ID to identify the new DataTable instance.
  final String? id;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (columns != null) {
      json["columns"] = columns!.map((k, v) => MapEntry(k, hcJsonValue(v)));
    }
    if (id != null) {
      json["id"] = id;
    }
    return json;
  }
}
