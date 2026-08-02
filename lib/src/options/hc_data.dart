part of 'hc_options.dart';

/// (Highstock) A custom data grouping object for each button.
class HCDataGroupingOptionsObject implements HCOption {
  const HCDataGroupingOptionsObject({
    this.anchor,
    this.approximation,
    this.dateTimeLabelFormats,
    this.enabled,
    this.firstAnchor,
    this.forced,
    this.groupAll,
    this.groupPixelWidth,
    this.lastAnchor,
    this.smoothed,
    this.units,
  });

  /// (Highstock) Specifies how the points should be located on the X axis inside the group. Points that are extremes can be set separately. Available options:
  final String? anchor;

  /// (Highstock) The method of approximation inside a group. When for example 30 days are grouped into one month, this determines what value should represent the group. Possible values are "average", "averages", "open", "high", "low", "close" and "sum". For OHLC and candlestick series the approximation i
  final dynamic approximation;

  /// (Highstock) Datetime formats for the header of the tooltip in a stock chart. The format can vary within a chart depending on the currently selected time range and the current data grouping.
  final dynamic dateTimeLabelFormats;

  /// (Highstock) Enable or disable data grouping.
  final bool? enabled;

  /// (Highstock) Specifies how the first grouped point is positioned on the xAxis. If firstAnchor and/or lastAnchor are defined, then those options take precedence over anchor for the first and/or last grouped points. Available options:
  final String? firstAnchor;

  /// (Highstock) When data grouping is forced, it runs no matter how small the intervals are. This can be handy for example when the sum should be calculated for values appearing at random times within each hour.
  final bool? forced;

  /// (Highstock) By default only points within the visible range are grouped. Enabling this option will force data grouping to calculate all grouped points for a given dataset. That option prevents for example a column series from calculating a grouped point partially. The effect is similar to Series.get
  final bool? groupAll;

  /// (Highstock) The approximate pixel width of each group. If for example a series with 30 points is displayed over a 600 pixel wide plot area, no grouping is performed. If however the series contains so many points that the spacing is less than the groupPixelWidth, Highcharts will try to group it into
  final num? groupPixelWidth;

  /// (Highstock) Specifies how the last grouped point is positioned on the xAxis. If firstAnchor and/or lastAnchor are defined, then those options take precedence over anchor for the first and/or last grouped points. Available options:
  final String? lastAnchor;

  /// (Highstock) Deprecated. Use anchor, or firstAnchor and lastAnchor instead.
  final bool? smoothed;

  /// (Highstock) An array determining what time intervals the data is allowed to be grouped to. Each array item is an array where the first value is the time unit and the second value another array of allowed multiples.
  final List<dynamic>? units;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (anchor != null) {
      json['anchor'] = anchor;
    }
    if (approximation != null) {
      json['approximation'] = hcJsonValue(approximation);
    }
    if (dateTimeLabelFormats != null) {
      json['dateTimeLabelFormats'] = hcJsonValue(dateTimeLabelFormats);
    }
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    if (firstAnchor != null) {
      json['firstAnchor'] = firstAnchor;
    }
    if (forced != null) {
      json['forced'] = forced;
    }
    if (groupAll != null) {
      json['groupAll'] = groupAll;
    }
    if (groupPixelWidth != null) {
      json['groupPixelWidth'] = groupPixelWidth;
    }
    if (lastAnchor != null) {
      json['lastAnchor'] = lastAnchor;
    }
    if (smoothed != null) {
      json['smoothed'] = smoothed;
    }
    if (units != null) {
      json['units'] = units!.map((e) => hcJsonValue(e)).toList();
    }
    return json;
  }
}

/// (Highcharts, Highstock, Gantt) A declarative filter to control of which data labels to display. The declarative filter is designed for use when callback functions are not available, like when the chart options require a pure JSON structure or for use with graphical editors. For programmatic control,
class HCDataLabelsFilterOptionsObject implements HCOption {
  const HCDataLabelsFilterOptionsObject({
    this.operator_,
    this.property,
    this.value,
  });

  /// (Highcharts, Highstock, Gantt) The operator to compare by. Can be one of `>`, `<`, `>=`, `<=`, `==`, `===`, `!=` and `!==`.
  final String? operator_;

  /// (Highcharts, Highstock, Gantt) The point property to filter by. Point options are passed directly to properties, additionally there are `y` value, `percentage` and others listed under Highcharts.Point members.
  final String? property;

  /// (Highcharts, Highstock, Gantt) The value to compare against.
  final num? value;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (operator_ != null) {
      json['operator'] = operator_;
    }
    if (property != null) {
      json['property'] = property;
    }
    if (value != null) {
      json['value'] = value;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Gantt) Individual data label for each point. The options are the same as the ones for plotOptions.series.dataLabels with exception of `zIndex` which is applied on the data label's parent group.
class HCDataLabelsOptions implements HCOption {
  const HCDataLabelsOptions({
    this.align,
    this.alignTo,
    this.allowOverlap,
    this.animation,
    this.backgroundColor,
    this.borderColor,
    this.borderRadius,
    this.borderWidth,
    this.className,
    this.color,
    this.crop,
    this.defer,
    this.distance,
    this.enabled,
    this.filter,
    this.format,
    this.inside,
    this.labelrank,
    this.nullFormat,
    this.overflow,
    this.padding,
    this.position,
    this.rotation,
    this.shadow,
    this.shape,
    this.style,
    this.textPath,
    this.useHTML,
    this.verticalAlign,
    this.x,
    this.xHigh,
    this.xLow,
    this.y,
    this.yHigh,
    this.yLow,
  });

  /// (Highcharts, Highstock, Gantt) The alignment of the data label compared to the point. If `right`, the right side of the label should be touching the point. For points with an extent, like columns, the alignments also dictates how to align it inside the box, as given with the inside option. Can be on
  final String? align;

  /// (Highcharts, Highstock, Gantt) Alignment method for data labels. If set to `plotEdges`, the labels are aligned within the plot area in the direction of the y-axis. So in a regular column chart, the labels are aligned vertically according to the `verticalAlign` setting. In a bar chart, which is inver
  final String? alignTo;

  /// (Highcharts, Highstock, Gantt) Whether to allow data labels to overlap. To make the labels less sensitive for overlapping, the dataLabels.padding can be set to 0.
  final bool? allowOverlap;

  /// (Highcharts, Highstock, Gantt) Enable or disable the initial animation when a series is displayed for the `dataLabels`. The animation can also be set as a configuration object. Please note that this option only applies to the initial animation.
  final dynamic animation;

  /// (Highcharts, Highstock, Gantt) The background color or gradient for the data label. In addition to regular colors, there are two special setting for this option:
  final dynamic backgroundColor;

  /// (Highcharts, Highstock, Gantt) The border color for the data label. Setting it to `auto` will use the point's color. Defaults to `undefined`.
  final dynamic borderColor;

  /// (Highcharts, Highstock, Gantt) The border radius in pixels for the data label.
  final num? borderRadius;

  /// (Highcharts, Highstock, Gantt) The border width in pixels for the data label.
  final num? borderWidth;

  /// (Highcharts, Highstock, Gantt) A class name for the data label. Particularly in styled mode, this can be used to give each series' or point's data label unique styling. In addition to this option, a default color class name is added so that we can give the labels a contrast text shadow.
  final String? className;

  /// (Highcharts, Highstock, Gantt) This options is deprecated. Use style.color instead.
  final dynamic color;

  /// (Highcharts, Highstock, Gantt) Whether to hide data labels that are outside the plot area. By default, the data label is moved inside the plot area according to the overflow option.
  final bool? crop;

  /// (Highcharts, Highstock, Gantt) Whether to defer displaying the data labels until the initial series animation has finished. Setting to `false` renders the data label immediately. If set to `true` inherits the defer time set in plotOptions.series.animation.
  final bool? defer;

  /// (Highcharts, Highstock, Gantt) The distance of the data label from the data point. Note that the `padding` setting also affects the rendered distance, but is not visible unless the data label has a border or background.
  final num? distance;

  /// (Highcharts, Highstock, Gantt) Enable or disable the data labels.
  final bool? enabled;

  /// (Highcharts, Highstock, Gantt) A declarative filter to control of which data labels to display. The declarative filter is designed for use when callback functions are not available, like when the chart options require a pure JSON structure or for use with graphical editors. For programmatic control,
  final HCDataLabelsFilterOptionsObject? filter;

  /// (Highcharts, Highstock, Gantt) A format string for the data label. Available variables are the same as for `formatter`.
  final String? format;

  /// (Highcharts, Highstock, Gantt) For points with an extent, like columns or map areas, whether to align the data label inside the box or to the actual value point. Defaults to `false` in most cases, `true` in stacked columns.
  final bool? inside;

  /// (Highcharts, Highstock, Gantt) The rank for this point's data label in case of collision. If two data labels are about to overlap, only the one with the highest `labelrank` will be drawn.
  final num? labelrank;

  /// (Highcharts, Highstock, Gantt) Format for points with the value of null. Works analogously to format. `nullFormat` can be applied only to series which support displaying null points. `heatmap` and `tilemap` supports `nullFormat` by default while the following series requires [#series.nullInteraction
  final dynamic nullFormat;

  /// (Highcharts, Highstock, Gantt) How to handle data labels that flow outside the plot area. The default is `"justify"`, which aligns them inside the plot area. For columns and bars, this means it will be moved inside the bar. To display data labels outside the plot area, set `crop` to `false` and `ove
  final String? overflow;

  /// (Highcharts, Highstock, Gantt) When either the `borderWidth` or the `backgroundColor` is set, this is the padding within the box.
  final dynamic padding;

  /// (Highcharts, Highstock, Gantt) Aligns data labels relative to points. If `center` alignment is not possible, it defaults to `right`.
  final String? position;

  /// (Highcharts, Highstock, Gantt) Text rotation in degrees. Note that due to a more complex structure, backgrounds, borders and padding will be lost on a rotated data label.
  final num? rotation;

  /// (Highcharts, Highstock, Gantt) The shadow of the box. Works best with `borderWidth` or `backgroundColor`. Since 2.3 the shadow can be an object configuration containing `color`, `offsetX`, `offsetY`, `opacity` and `width`.
  final dynamic shadow;

  /// (Highcharts, Highstock, Gantt) The name of a symbol to use for the border around the label. Symbols are predefined functions on the Renderer object.
  final String? shape;

  /// (Highcharts, Highstock, Gantt) Styles for the label. The default `color` setting is `"contrast"`, which is a pseudo color that Highcharts picks up and applies the maximum contrast to the underlying point item, for example the bar in a bar chart.
  final HCCSSObject? style;

  /// (Highcharts, Highstock, Gantt) Options for a label text which should follow marker's shape. Border and background are disabled for a label that follows a path.
  final HCDataLabelsTextPathOptionsObject? textPath;

  /// (Highcharts, Highstock, Gantt) Whether to use HTML to render the labels.
  final bool? useHTML;

  /// (Highcharts, Highstock, Gantt) The vertical alignment of a data label. Can be one of `top`, `middle` or `bottom`. The default value depends on the data, for instance in a column chart, the label is above positive values and below negative values.
  final String? verticalAlign;

  /// (Highcharts, Highstock, Gantt) The x position offset of the label relative to the point in pixels.
  final num? x;

  /// (Highcharts, Highstock) X offset of the higher data labels relative to the point value.
  final num? xHigh;

  /// (Highcharts, Highstock) X offset of the lower data labels relative to the point value.
  final num? xLow;

  /// (Highcharts, Highstock, Gantt) The y position offset of the label relative to the point in pixels.
  final num? y;

  /// (Highcharts, Highstock) Y offset of the higher data labels relative to the point value.
  final num? yHigh;

  /// (Highcharts, Highstock) Y offset of the lower data labels relative to the point value.
  final num? yLow;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (align != null) {
      json['align'] = align;
    }
    if (alignTo != null) {
      json['alignTo'] = alignTo;
    }
    if (allowOverlap != null) {
      json['allowOverlap'] = allowOverlap;
    }
    if (animation != null) {
      json['animation'] = hcJsonValue(animation);
    }
    if (backgroundColor != null) {
      json['backgroundColor'] = hcJsonValue(backgroundColor);
    }
    if (borderColor != null) {
      json['borderColor'] = hcJsonValue(borderColor);
    }
    if (borderRadius != null) {
      json['borderRadius'] = borderRadius;
    }
    if (borderWidth != null) {
      json['borderWidth'] = borderWidth;
    }
    if (className != null) {
      json['className'] = className;
    }
    if (color != null) {
      json['color'] = hcJsonValue(color);
    }
    if (crop != null) {
      json['crop'] = crop;
    }
    if (defer != null) {
      json['defer'] = defer;
    }
    if (distance != null) {
      json['distance'] = distance;
    }
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    if (filter != null) {
      json['filter'] = filter!.toJson();
    }
    if (format != null) {
      json['format'] = format;
    }
    if (inside != null) {
      json['inside'] = inside;
    }
    if (labelrank != null) {
      json['labelrank'] = labelrank;
    }
    if (nullFormat != null) {
      json['nullFormat'] = hcJsonValue(nullFormat);
    }
    if (overflow != null) {
      json['overflow'] = overflow;
    }
    if (padding != null) {
      json['padding'] = hcJsonValue(padding);
    }
    if (position != null) {
      json['position'] = position;
    }
    if (rotation != null) {
      json['rotation'] = rotation;
    }
    if (shadow != null) {
      json['shadow'] = hcJsonValue(shadow);
    }
    if (shape != null) {
      json['shape'] = shape;
    }
    if (style != null) {
      json['style'] = style!.toJson();
    }
    if (textPath != null) {
      json['textPath'] = textPath!.toJson();
    }
    if (useHTML != null) {
      json['useHTML'] = useHTML;
    }
    if (verticalAlign != null) {
      json['verticalAlign'] = verticalAlign;
    }
    if (x != null) {
      json['x'] = x;
    }
    if (xHigh != null) {
      json['xHigh'] = xHigh;
    }
    if (xLow != null) {
      json['xLow'] = xLow;
    }
    if (y != null) {
      json['y'] = y;
    }
    if (yHigh != null) {
      json['yHigh'] = yHigh;
    }
    if (yLow != null) {
      json['yLow'] = yLow;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Gantt) Options for a label text which should follow marker's shape. Border and background are disabled for a label that follows a path.
class HCDataLabelsTextPathOptionsObject implements HCOption {
  const HCDataLabelsTextPathOptionsObject({
    this.attributes,
    this.enabled,
  });

  /// (Highcharts, Highstock, Gantt) Presentation attributes for the text path.
  final dynamic attributes;

  /// (Highcharts, Highstock, Gantt) Enable or disable `textPath` option for link's or marker's data labels.
  final bool? enabled;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (attributes != null) {
      json['attributes'] = hcJsonValue(attributes);
    }
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    return json;
  }
}

/// Options for `dataMapping`. The data mapping options allow you to define how data from a data table should be mapped to series points. The object keys refer to the point property that should be mapped, and the values refer to the `dataTable` and `column` that should be used for the mapping.
class HCDataMappingOptionsObject implements HCOption {
  const HCDataMappingOptionsObject();

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) The Data module provides a simplified interface for adding data to a chart from sources like CVS, HTML tables or grid views. See also the tutorial article on the Data module.
class HCDataOptions implements HCOption {
  const HCDataOptions({
    this.columns,
    this.columnsURL,
    this.columnTypes,
    this.csv,
    this.csvURL,
    this.dataRefreshRate,
    this.dateFormat,
    this.decimalPoint,
    this.enablePolling,
    this.endColumn,
    this.endRow,
    this.firstRowAsNames,
    this.googleAPIKey,
    this.googleSpreadsheetKey,
    this.googleSpreadsheetRange,
    this.googleSpreadsheetWorksheet,
    this.itemDelimiter,
    this.lineDelimiter,
    this.parseDate,
    this.rows,
    this.rowsURL,
    this.seriesMapping,
    this.startColumn,
    this.startRow,
    this.switchRowsAndColumns,
    this.table,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) A two-dimensional array representing the input data on tabular form. This input can be used when the data is already parsed, for example from a grid view component. Each cell can be a string or number. If not switchRowsAndColumns is set, the columns are inter
  final List<List<dynamic>>? columns;

  /// (Highcharts, Highstock, Highmaps, Gantt) A URL to a remote JSON dataset, structured as a column array. Will be fetched when the chart is created using Ajax.
  final String? columnsURL;

  /// (Highcharts, Highstock, Highmaps, Gantt) An array option that specifies the data type for each column in the series loaded within the data module.
  final String? columnTypes;

  /// (Highcharts, Highstock, Highmaps, Gantt) A comma delimited string to be parsed. Related options are startRow, endRow, startColumn and endColumn to delimit what part of the table is used. The lineDelimiter and itemDelimiter options define the CSV delimiter formats.
  final String? csv;

  /// (Highcharts, Highstock, Highmaps, Gantt) An URL to a remote CSV dataset. Will be fetched when the chart is created using Ajax.
  final String? csvURL;

  /// (Highcharts, Highstock, Highmaps, Gantt) Sets the refresh rate for data polling when importing remote dataset by setting data.csvURL, data.rowsURL, data.columnsURL, or data.googleSpreadsheetKey.
  final num? dataRefreshRate;

  /// (Highcharts, Highstock, Highmaps, Gantt) Which of the predefined date formats in Date.prototype.dateFormats to use to parse date values. Defaults to a best guess based on what format gives valid and ordered dates. Valid options include: `YYYY/mm/dd`, `dd/mm/YYYY`, `mm/dd/YYYY`, `dd/mm/YY`, `mm/dd/YY
  final String? dateFormat;

  /// (Highcharts, Highstock, Highmaps, Gantt) The decimal point used for parsing numbers in the CSV.
  final String? decimalPoint;

  /// (Highcharts, Highstock, Highmaps, Gantt) Enables automatic refetching of remote datasets every _n_ seconds (defined by setting data.dataRefreshRate).
  final bool? enablePolling;

  /// (Highcharts, Highstock, Highmaps, Gantt) In tabular input data, the last column (indexed by 0) to use. Defaults to the last column containing data.
  final num? endColumn;

  /// (Highcharts, Highstock, Highmaps, Gantt) In tabular input data, the last row (indexed by 0) to use. Defaults to the last row containing data.
  final num? endRow;

  /// (Highcharts, Highstock, Gantt) Whether to use the first row in the data set as series names.
  final bool? firstRowAsNames;

  /// (Highcharts, Highstock, Highmaps, Gantt) The Google Spreadsheet API key required for access generated at API Services / Credentials. See a comprehensive tutorial for setting up the key at the Hands-On Data Visualization book website.
  final String? googleAPIKey;

  /// (Highcharts, Highstock, Highmaps, Gantt) The key or `spreadsheetId` value for a Google Spreadsheet to load. See developers.google.com for how to find the `spreadsheetId`.
  final String? googleSpreadsheetKey;

  /// (Highcharts, Highstock, Highmaps, Gantt) The Google Spreadsheet `range` to use in combination with googleSpreadsheetKey. See developers.google.com for details.
  final String? googleSpreadsheetRange;

  /// (Highcharts, Highstock, Highmaps, Gantt) No longer works since v9.2.2, that uses Google Sheets API v4. Instead, use the googleSpreadsheetRange option to load a specific sheet.
  final String? googleSpreadsheetWorksheet;

  /// (Highcharts, Highstock, Highmaps, Gantt) Item or cell delimiter for parsing CSV. Defaults to the tab character `\t` if a tab character is found in the CSV string, if not it defaults to `,`.
  final String? itemDelimiter;

  /// (Highcharts, Highstock, Highmaps, Gantt) Line delimiter for parsing CSV.
  final String? lineDelimiter;

  /// (Highcharts, Highstock, Highmaps, Gantt) A callback function to parse string representations of dates into JavaScript timestamps. Should return an integer timestamp on success.
  final dynamic parseDate;

  /// (Highcharts, Highstock, Highmaps, Gantt) The same as the columns input option, but defining rows instead of columns.
  final List<List<dynamic>>? rows;

  /// (Highcharts, Highstock, Highmaps, Gantt) A URL to a remote JSON dataset, structured as a row array. Will be fetched when the chart is created using Ajax.
  final String? rowsURL;

  /// (Highcharts, Highstock, Highmaps, Gantt) An array containing dictionaries for each series. A dictionary exists of Point property names as the key and the CSV column index as the value.
  final List<HCDictionary>? seriesMapping;

  /// (Highcharts, Highstock, Highmaps, Gantt) In tabular input data, the first column (indexed by 0) to use.
  final num? startColumn;

  /// (Highcharts, Highstock, Highmaps, Gantt) In tabular input data, the first row (indexed by 0) to use.
  final num? startRow;

  /// (Highcharts, Highstock, Highmaps, Gantt) Switch rows and columns of the input data, so that `this.columns` effectively becomes the rows of the data set, and the rows are interpreted as series.
  final bool? switchRowsAndColumns;

  /// (Highcharts, Highstock, Highmaps, Gantt) An HTML table or the id of such to be parsed as input data. Related options are `startRow`, `endRow`, `startColumn` and `endColumn` to delimit what part of the table is used.
  final dynamic table;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (columns != null) {
      json['columns'] =
          columns!.map((e) => e.map((e) => hcJsonValue(e)).toList()).toList();
    }
    if (columnsURL != null) {
      json['columnsURL'] = columnsURL;
    }
    if (columnTypes != null) {
      json['columnTypes'] = columnTypes;
    }
    if (csv != null) {
      json['csv'] = csv;
    }
    if (csvURL != null) {
      json['csvURL'] = csvURL;
    }
    if (dataRefreshRate != null) {
      json['dataRefreshRate'] = dataRefreshRate;
    }
    if (dateFormat != null) {
      json['dateFormat'] = dateFormat;
    }
    if (decimalPoint != null) {
      json['decimalPoint'] = decimalPoint;
    }
    if (enablePolling != null) {
      json['enablePolling'] = enablePolling;
    }
    if (endColumn != null) {
      json['endColumn'] = endColumn;
    }
    if (endRow != null) {
      json['endRow'] = endRow;
    }
    if (firstRowAsNames != null) {
      json['firstRowAsNames'] = firstRowAsNames;
    }
    if (googleAPIKey != null) {
      json['googleAPIKey'] = googleAPIKey;
    }
    if (googleSpreadsheetKey != null) {
      json['googleSpreadsheetKey'] = googleSpreadsheetKey;
    }
    if (googleSpreadsheetRange != null) {
      json['googleSpreadsheetRange'] = googleSpreadsheetRange;
    }
    if (googleSpreadsheetWorksheet != null) {
      json['googleSpreadsheetWorksheet'] = googleSpreadsheetWorksheet;
    }
    if (itemDelimiter != null) {
      json['itemDelimiter'] = itemDelimiter;
    }
    if (lineDelimiter != null) {
      json['lineDelimiter'] = lineDelimiter;
    }
    if (parseDate != null) {
      json['parseDate'] = hcJsonValue(parseDate);
    }
    if (rows != null) {
      json['rows'] =
          rows!.map((e) => e.map((e) => hcJsonValue(e)).toList()).toList();
    }
    if (rowsURL != null) {
      json['rowsURL'] = rowsURL;
    }
    if (seriesMapping != null) {
      json['seriesMapping'] = seriesMapping!.map((e) => e.toJson()).toList();
    }
    if (startColumn != null) {
      json['startColumn'] = startColumn;
    }
    if (startRow != null) {
      json['startRow'] = startRow;
    }
    if (switchRowsAndColumns != null) {
      json['switchRowsAndColumns'] = switchRowsAndColumns;
    }
    if (table != null) {
      json['table'] = hcJsonValue(table);
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Options for one or many chart-level data tables. The `dataTable` option, or its array members, can be either configuration objects or instances of the `DataTable` class. If a `DataTable` instance is passed, it will be used directly. If a configuration object
class HCDataTableOptions implements HCOption {
  const HCDataTableOptions({
    this.columns,
    this.id,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) A collection of data table columns defined by a object where the key is the column ID and the value is an array of the column values. Typed arrays are supported.
  final Map<String, dynamic>? columns;

  /// (Highcharts, Highstock, Highmaps, Gantt) Custom ID to identify the new DataTable instance.
  final String? id;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (columns != null) {
      json['columns'] = columns!.map((k, v) => MapEntry(k, hcJsonValue(v)));
    }
    if (id != null) {
      json['id'] = id;
    }
    return json;
  }
}

/// Options for the `DataTable` or `DataTableCore` classes.
class HCDataTableOptionsObject implements HCOption {
  const HCDataTableOptionsObject({
    this.columns,
    this.id,
  });

  /// The column options for the data table. The columns are defined by an object where the key is the column ID and the value is an array of the column values.
  final Map<String, dynamic>? columns;

  /// Custom ID to identify the new DataTable instance.
  final String? id;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (columns != null) {
      json['columns'] = columns!.map((k, v) => MapEntry(k, hcJsonValue(v)));
    }
    if (id != null) {
      json['id'] = id;
    }
    return json;
  }
}
