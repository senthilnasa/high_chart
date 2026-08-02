part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Accessibility options for the exporting menu. Requires the Accessibility module.
class HCExportingAccessibilityOptions implements HCOption {
  const HCExportingAccessibilityOptions({
    this.enabled,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Enable accessibility support for the export menu.
  final bool? enabled;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) A configuration object for the button theme. The object accepts SVG properties like `stroke-width`, `stroke` and `fill`. Tri-state button styles are supported by the `states.hover` and `states.select` objects.
class HCExportingButtonsContextButtonThemeOptions implements HCOption {
  const HCExportingButtonsContextButtonThemeOptions({
    this.fill,
    this.padding,
    this.stroke,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) The default fill exists only to capture hover events.
  final dynamic fill;

  /// (Highcharts, Highstock, Highmaps, Gantt) Padding for the button.
  final num? padding;

  /// (Highcharts, Highstock, Highmaps, Gantt) Default stroke for the buttons.
  final String? stroke;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (fill != null) {
      json['fill'] = hcJsonValue(fill);
    }
    if (padding != null) {
      json['padding'] = padding;
    }
    if (stroke != null) {
      json['stroke'] = stroke;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Options for the export related buttons, print and export. In addition to the default buttons listed here, custom buttons can be added. See navigation.buttonOptions for general options.
class HCExportingButtonsOptions implements HCOption {
  const HCExportingButtonsOptions({
    this.contextButton,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for the export button.
  final HCExportingButtonsOptionsObject? contextButton;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (contextButton != null) {
      json['contextButton'] = contextButton!.toJson();
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Options for the export button.
class HCExportingButtonsOptionsObject implements HCOption {
  const HCExportingButtonsOptionsObject({
    this.align,
    this.buttonSpacing,
    this.className,
    this.enabled,
    this.height,
    this.menuClassName,
    this.menuItems,
    this.onclick,
    this.symbol,
    this.symbolFill,
    this.symbolSize,
    this.symbolStroke,
    this.symbolStrokeWidth,
    this.symbolX,
    this.symbolY,
    this.text,
    this.theme,
    this.titleKey,
    this.useHTML,
    this.verticalAlign,
    this.width,
    this.x,
    this.y,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Alignment for the buttons.
  final String? align;

  /// (Highcharts, Highstock, Highmaps, Gantt) The pixel spacing between buttons, and between the context button and the title.
  final num? buttonSpacing;

  /// (Highcharts, Highstock, Highmaps, Gantt) The class name of the context button.
  final String? className;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to enable buttons.
  final bool? enabled;

  /// (Highcharts, Highstock, Highmaps, Gantt) Pixel height of the buttons.
  final num? height;

  /// (Highcharts, Highstock, Highmaps, Gantt) The class name of the menu appearing from the button.
  final String? menuClassName;

  /// (Highcharts, Highstock, Highmaps, Gantt) A collection of strings pointing to config options for the menu items. The config options are defined in the `menuItemDefinitions` option.
  final List<String>? menuItems;

  /// (Highcharts, Highstock, Highmaps, Gantt) A click handler callback to use on the button directly instead of the popup menu.
  final dynamic onclick;

  /// (Highcharts, Highstock, Highmaps, Gantt) The symbol for the button. Points to a definition function in the `Highcharts.Renderer.symbols` collection. The default `menu` function is part of the exporting module. Possible values are "circle", "square", "diamond", "triangle", "triangle-down", "menu", "m
  final String? symbol;

  /// (Highcharts, Highstock, Highmaps, Gantt) Fill color for the symbol within the button.
  final dynamic symbolFill;

  /// (Highcharts, Highstock, Highmaps, Gantt) The pixel size of the symbol on the button.
  final num? symbolSize;

  /// (Highcharts, Highstock, Highmaps, Gantt) The color of the symbol's stroke or line.
  final String? symbolStroke;

  /// (Highcharts, Highstock, Highmaps, Gantt) The pixel stroke width of the symbol on the button.
  final num? symbolStrokeWidth;

  /// (Highcharts, Highstock, Highmaps, Gantt) The x position of the center of the symbol inside the button.
  final num? symbolX;

  /// (Highcharts, Highstock, Highmaps, Gantt) The y position of the center of the symbol inside the button.
  final num? symbolY;

  /// (Highcharts, Highstock, Highmaps, Gantt) A text string to add to the individual button.
  final String? text;

  /// (Highcharts, Highstock, Highmaps, Gantt) A configuration object for the button theme. The object accepts SVG properties like `stroke-width`, `stroke` and `fill`. Tri-state button styles are supported by the `states.hover` and `states.select` objects.
  final HCExportingButtonsContextButtonThemeOptions? theme;

  /// (Highcharts, Highstock, Highmaps, Gantt) The key to a lang option setting that is used for the button's title tooltip. When the key is `contextButtonTitle`, it refers to lang.contextButtonTitle that defaults to "Chart context menu".
  final String? titleKey;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to use HTML for rendering the button. HTML allows for things like inline CSS or image-based icons.
  final bool? useHTML;

  /// (Highcharts, Highstock, Highmaps, Gantt) The vertical alignment of the buttons. Can be one of `"top"`, `"middle"` or `"bottom"`.
  final String? verticalAlign;

  /// (Highcharts, Highstock, Highmaps, Gantt) The pixel width of the button.
  final num? width;

  /// (Highcharts, Highstock, Highmaps, Gantt) The horizontal position of the button relative to the `align` option.
  final num? x;

  /// (Highcharts, Highstock, Highmaps, Gantt) The vertical offset of the button's position relative to its `verticalAlign`. By default adjusted for the chart title alignment.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (align != null) {
      json['align'] = align;
    }
    if (buttonSpacing != null) {
      json['buttonSpacing'] = buttonSpacing;
    }
    if (className != null) {
      json['className'] = className;
    }
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    if (height != null) {
      json['height'] = height;
    }
    if (menuClassName != null) {
      json['menuClassName'] = menuClassName;
    }
    if (menuItems != null) {
      json['menuItems'] = menuItems;
    }
    if (onclick != null) {
      json['onclick'] = hcJsonValue(onclick);
    }
    if (symbol != null) {
      json['symbol'] = symbol;
    }
    if (symbolFill != null) {
      json['symbolFill'] = hcJsonValue(symbolFill);
    }
    if (symbolSize != null) {
      json['symbolSize'] = symbolSize;
    }
    if (symbolStroke != null) {
      json['symbolStroke'] = symbolStroke;
    }
    if (symbolStrokeWidth != null) {
      json['symbolStrokeWidth'] = symbolStrokeWidth;
    }
    if (symbolX != null) {
      json['symbolX'] = symbolX;
    }
    if (symbolY != null) {
      json['symbolY'] = symbolY;
    }
    if (text != null) {
      json['text'] = text;
    }
    if (theme != null) {
      json['theme'] = theme!.toJson();
    }
    if (titleKey != null) {
      json['titleKey'] = titleKey;
    }
    if (useHTML != null) {
      json['useHTML'] = useHTML;
    }
    if (verticalAlign != null) {
      json['verticalAlign'] = verticalAlign;
    }
    if (width != null) {
      json['width'] = width;
    }
    if (x != null) {
      json['x'] = x;
    }
    if (y != null) {
      json['y'] = y;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Options for annotations in the export-data table.
class HCExportingCsvAnnotationsOptions implements HCOption {
  const HCExportingCsvAnnotationsOptions({
    this.itemDelimiter,
    this.join,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) The way to mark the separator for annotations combined in one export-data table cell.
  final String? itemDelimiter;

  /// (Highcharts, Highstock, Highmaps, Gantt) When several labels are assigned to a specific point, they will be displayed in one field in the table.
  final bool? join;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (itemDelimiter != null) {
      json['itemDelimiter'] = itemDelimiter;
    }
    if (join != null) {
      json['join'] = join;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Options for exporting data to CSV or Excel, or displaying the data in a HTML table or a JavaScript structure.
class HCExportingCsvOptions implements HCOption {
  const HCExportingCsvOptions({
    this.annotations,
    this.columnHeaderFormatter,
    this.dateFormat,
    this.decimalPoint,
    this.itemDelimiter,
    this.lineDelimiter,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for annotations in the export-data table.
  final HCExportingCsvAnnotationsOptions? annotations;

  /// (Highcharts, Highstock, Highmaps, Gantt) Formatter callback for the column headers. Parameters are:
  final dynamic columnHeaderFormatter;

  /// (Highcharts, Highstock, Highmaps, Gantt) Which date format to use for exported dates on a datetime X axis. See `Highcharts.dateFormat`.
  final String? dateFormat;

  /// (Highcharts, Highstock, Highmaps, Gantt) Which decimal point to use for exported CSV. Defaults to the same as the browser locale, typically `.` (English) or `,` (German, French etc).
  final String? decimalPoint;

  /// (Highcharts, Highstock, Highmaps, Gantt) The item delimiter in the exported data. Use `;` for direct exporting to Excel. Defaults to a best guess based on the browser locale. If the locale _decimal point_ is `,`, the `itemDelimiter` defaults to `;`, otherwise the `itemDelimiter` defaults to `,`.
  final String? itemDelimiter;

  /// (Highcharts, Highstock, Highmaps, Gantt) The line delimiter in the exported data, defaults to a newline.
  final String? lineDelimiter;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (annotations != null) {
      json['annotations'] = annotations!.toJson();
    }
    if (columnHeaderFormatter != null) {
      json['columnHeaderFormatter'] = hcJsonValue(columnHeaderFormatter);
    }
    if (dateFormat != null) {
      json['dateFormat'] = dateFormat;
    }
    if (decimalPoint != null) {
      json['decimalPoint'] = decimalPoint;
    }
    if (itemDelimiter != null) {
      json['itemDelimiter'] = itemDelimiter;
    }
    if (lineDelimiter != null) {
      json['lineDelimiter'] = lineDelimiter;
    }
    return json;
  }
}

class HCExportingMenuItemDefinitionsDownloadCSVOptions implements HCOption {
  const HCExportingMenuItemDefinitionsDownloadCSVOptions({
    this.textKey,
  });

  final String? textKey;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (textKey != null) {
      json['textKey'] = textKey;
    }
    return json;
  }
}

class HCExportingMenuItemDefinitionsDownloadJPEGOptions implements HCOption {
  const HCExportingMenuItemDefinitionsDownloadJPEGOptions({
    this.textKey,
  });

  final String? textKey;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (textKey != null) {
      json['textKey'] = textKey;
    }
    return json;
  }
}

class HCExportingMenuItemDefinitionsDownloadPDFOptions implements HCOption {
  const HCExportingMenuItemDefinitionsDownloadPDFOptions({
    this.textKey,
  });

  final String? textKey;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (textKey != null) {
      json['textKey'] = textKey;
    }
    return json;
  }
}

class HCExportingMenuItemDefinitionsDownloadPNGOptions implements HCOption {
  const HCExportingMenuItemDefinitionsDownloadPNGOptions({
    this.textKey,
  });

  final String? textKey;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (textKey != null) {
      json['textKey'] = textKey;
    }
    return json;
  }
}

class HCExportingMenuItemDefinitionsDownloadSVGOptions implements HCOption {
  const HCExportingMenuItemDefinitionsDownloadSVGOptions({
    this.textKey,
  });

  final String? textKey;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (textKey != null) {
      json['textKey'] = textKey;
    }
    return json;
  }
}

class HCExportingMenuItemDefinitionsDownloadXLSOptions implements HCOption {
  const HCExportingMenuItemDefinitionsDownloadXLSOptions({
    this.textKey,
  });

  final String? textKey;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (textKey != null) {
      json['textKey'] = textKey;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) An object consisting of definitions for the menu items in the context menu. Each key value pair has a `key` that is referenced in the menuItems setting, and a `value`, which is an object with the following properties:
class HCExportingMenuItemDefinitionsOptions implements HCOption {
  const HCExportingMenuItemDefinitionsOptions({
    this.downloadCSV,
    this.downloadJPEG,
    this.downloadPDF,
    this.downloadPNG,
    this.downloadSVG,
    this.downloadXLS,
    this.printChart,
    this.separator,
    this.viewData,
    this.viewFullscreen,
  });

  final HCExportingMenuItemDefinitionsDownloadCSVOptions? downloadCSV;

  final HCExportingMenuItemDefinitionsDownloadJPEGOptions? downloadJPEG;

  final HCExportingMenuItemDefinitionsDownloadPDFOptions? downloadPDF;

  final HCExportingMenuItemDefinitionsDownloadPNGOptions? downloadPNG;

  final HCExportingMenuItemDefinitionsDownloadSVGOptions? downloadSVG;

  final HCExportingMenuItemDefinitionsDownloadXLSOptions? downloadXLS;

  final HCExportingMenuItemDefinitionsPrintChartOptions? printChart;

  final HCExportingMenuItemDefinitionsSeparatorOptions? separator;

  final HCExportingMenuItemDefinitionsViewDataOptions? viewData;

  final HCExportingMenuItemDefinitionsViewFullscreenOptions? viewFullscreen;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (downloadCSV != null) {
      json['downloadCSV'] = downloadCSV!.toJson();
    }
    if (downloadJPEG != null) {
      json['downloadJPEG'] = downloadJPEG!.toJson();
    }
    if (downloadPDF != null) {
      json['downloadPDF'] = downloadPDF!.toJson();
    }
    if (downloadPNG != null) {
      json['downloadPNG'] = downloadPNG!.toJson();
    }
    if (downloadSVG != null) {
      json['downloadSVG'] = downloadSVG!.toJson();
    }
    if (downloadXLS != null) {
      json['downloadXLS'] = downloadXLS!.toJson();
    }
    if (printChart != null) {
      json['printChart'] = printChart!.toJson();
    }
    if (separator != null) {
      json['separator'] = separator!.toJson();
    }
    if (viewData != null) {
      json['viewData'] = viewData!.toJson();
    }
    if (viewFullscreen != null) {
      json['viewFullscreen'] = viewFullscreen!.toJson();
    }
    return json;
  }
}

class HCExportingMenuItemDefinitionsPrintChartOptions implements HCOption {
  const HCExportingMenuItemDefinitionsPrintChartOptions({
    this.textKey,
  });

  final String? textKey;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (textKey != null) {
      json['textKey'] = textKey;
    }
    return json;
  }
}

class HCExportingMenuItemDefinitionsSeparatorOptions implements HCOption {
  const HCExportingMenuItemDefinitionsSeparatorOptions({
    this.separator,
  });

  final bool? separator;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (separator != null) {
      json['separator'] = separator;
    }
    return json;
  }
}

class HCExportingMenuItemDefinitionsViewDataOptions implements HCOption {
  const HCExportingMenuItemDefinitionsViewDataOptions({
    this.textKey,
  });

  final String? textKey;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (textKey != null) {
      json['textKey'] = textKey;
    }
    return json;
  }
}

class HCExportingMenuItemDefinitionsViewFullscreenOptions implements HCOption {
  const HCExportingMenuItemDefinitionsViewFullscreenOptions({
    this.textKey,
  });

  final String? textKey;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (textKey != null) {
      json['textKey'] = textKey;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Options for the exporting module. For an overview on the matter, see the docs and read our Fair Usage Policy.
class HCExportingOptions implements HCOption {
  const HCExportingOptions({
    this.accessibility,
    this.allowHTML,
    this.allowTableSorting,
    this.applyStyleSheets,
    this.buttons,
    this.chartOptions,
    this.csv,
    this.enabled,
    this.fallbackToExportServer,
    this.fetchOptions,
    this.filename,
    this.formAttributes,
    this.libURL,
    this.local,
    this.menuItemDefinitions,
    this.pdfFont,
    this.printMaxWidth,
    this.scale,
    this.showExportInProgress,
    this.showTable,
    this.sourceHeight,
    this.sourceWidth,
    this.tableCaption,
    this.type,
    this.url,
    this.useMultiLevelHeaders,
    this.useRowspanHeaders,
    this.width,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Accessibility options for the exporting menu. Requires the Accessibility module.
  final HCExportingAccessibilityOptions? accessibility;

  /// (Highcharts, Highstock, Highmaps, Gantt) Allow HTML inside the chart (added through the `useHTML` options), directly in the exported image. This allows you to preserve complicated HTML structures like tables or bi-directional text in exported charts.
  final bool? allowHTML;

  /// (Highcharts, Highstock, Highmaps, Gantt) Allows the end user to sort the data table by clicking on column headers.
  final bool? allowTableSorting;

  /// (Highcharts, Highstock, Highmaps, Gantt) Allow exporting a chart retaining any user-applied CSS.
  final bool? applyStyleSheets;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for the export related buttons, print and export. In addition to the default buttons listed here, custom buttons can be added. See navigation.buttonOptions for general options.
  final dynamic buttons;

  /// (Highcharts, Highstock, Highmaps, Gantt) Additional chart options to be merged into the chart before exporting to an image format. This does not apply to printing the chart via the export menu.
  final HCOptions? chartOptions;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for exporting data to CSV or Excel, or displaying the data in a HTML table or a JavaScript structure.
  final HCExportingCsvOptions? csv;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to enable the exporting module. Disabling the module will hide the context button, but API methods will still be available.
  final bool? enabled;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether or not to fall back to the export server if the offline-exporting module is unable to export the chart on the client side. This happens for certain browsers, and certain features (e.g. allowHTML), depending on the image type exporting to. For very com
  final bool? fallbackToExportServer;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for the fetch request used when sending the SVG to the export server.
  final dynamic fetchOptions;

  /// (Highcharts, Highstock, Highmaps, Gantt) The filename, without extension, to use for the exported chart.
  final String? filename;

  /// (Highcharts, Highstock, Highmaps, Gantt) Highcharts v11.2.0 and older. An object containing additional key value data for the POST form that sends the SVG to the export server. For example, a `target` can be set to make sure the generated image is received in another frame, or a custom `enctype` or
  final HCDictionary? formAttributes;

  /// (Highcharts, Highstock, Highmaps, Gantt) Path where Highcharts will look for export module dependencies to load on demand if they don't already exist on `window`. Should currently point to location of CanVG library, jsPDF and svg2pdf.js, required for client side export in certain browsers.
  final String? libURL;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether the chart should be exported using the browser's built-in capabilities, allowing offline exports without requiring access to the Highcharts export server, or sent directly to the export server for processing and downloading.
  final bool? local;

  /// (Highcharts, Highstock, Highmaps, Gantt) An object consisting of definitions for the menu items in the context menu. Each key value pair has a `key` that is referenced in the menuItems setting, and a `value`, which is an object with the following properties:
  final dynamic menuItemDefinitions;

  /// (Highcharts, Highstock, Highmaps, Gantt) Settings for a custom font for the exported PDF, when using the `offline-exporting` module. This is used for languages containing non-ASCII characters, like Chinese, Russian, Japanese etc.
  final HCExportingPdfFontOptions? pdfFont;

  /// (Highcharts, Highstock, Highmaps, Gantt) When printing the chart from the menu item in the burger menu, if the on-screen chart exceeds this width, it is resized. After printing or cancelled, it is restored. The default width makes the chart fit into typical paper format. Note that this does not affe
  final num? printMaxWidth;

  /// (Highcharts, Highstock, Highmaps, Gantt) Defines the scale or zoom factor for the exported image compared to the on-screen display. While for instance a 600px wide chart may look good on a website, it will look bad in print. The default scale of 2 makes this chart export to a 1200px PNG or JPG.
  final num? scale;

  /// (Highcharts, Highstock, Highmaps, Gantt) Display a message when export is in progress. Uses Chart.showLoading().
  final bool? showExportInProgress;

  /// (Highcharts, Highstock, Highmaps, Gantt) Show a HTML table below the chart with the chart's current data.
  final bool? showTable;

  /// (Highcharts, Highstock, Highmaps, Gantt) Analogous to sourceWidth.
  final num? sourceHeight;

  /// (Highcharts, Highstock, Highmaps, Gantt) The width of the original chart when exported, unless an explicit chart.width is set, or a pixel width is set on the container. The width exported raster image is then multiplied by scale.
  final num? sourceWidth;

  /// (Highcharts, Highstock, Highmaps, Gantt) Caption for the data table. Same as chart title by default. Set to `false` to disable.
  final dynamic tableCaption;

  /// (Highcharts, Highstock, Highmaps, Gantt) Default MIME type for exporting if `chart.exportChart()` is called without specifying a `type` option. Possible values are `image/png`, `image/jpeg`, `application/pdf` and `image/svg+xml`.
  final String? type;

  /// (Highcharts, Highstock, Highmaps, Gantt) The URL for the server module converting the SVG string to an image format. By default this points to Highcharts free web service.
  final dynamic url;

  /// (Highcharts, Highstock, Highmaps, Gantt) Use multi level headers in data table. If csv.columnHeaderFormatter is defined, it has to return objects in order for multi level headers to work.
  final bool? useMultiLevelHeaders;

  /// (Highcharts, Highstock, Highmaps, Gantt) If using multi level table headers, use rowspans for headers that have only one level.
  final bool? useRowspanHeaders;

  /// (Highcharts, Highstock, Highmaps, Gantt) The pixel width of charts exported to PNG or JPG. As of Highcharts 3.0, the default pixel width is a function of the chart.width or exporting.sourceWidth and the exporting.scale.
  final num? width;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (accessibility != null) {
      json['accessibility'] = accessibility!.toJson();
    }
    if (allowHTML != null) {
      json['allowHTML'] = allowHTML;
    }
    if (allowTableSorting != null) {
      json['allowTableSorting'] = allowTableSorting;
    }
    if (applyStyleSheets != null) {
      json['applyStyleSheets'] = applyStyleSheets;
    }
    if (buttons != null) {
      json['buttons'] = hcJsonValue(buttons);
    }
    if (chartOptions != null) {
      json['chartOptions'] = chartOptions!.toJson();
    }
    if (csv != null) {
      json['csv'] = csv!.toJson();
    }
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    if (fallbackToExportServer != null) {
      json['fallbackToExportServer'] = fallbackToExportServer;
    }
    if (fetchOptions != null) {
      json['fetchOptions'] = hcJsonValue(fetchOptions);
    }
    if (filename != null) {
      json['filename'] = filename;
    }
    if (formAttributes != null) {
      json['formAttributes'] = formAttributes!.toJson();
    }
    if (libURL != null) {
      json['libURL'] = libURL;
    }
    if (local != null) {
      json['local'] = local;
    }
    if (menuItemDefinitions != null) {
      json['menuItemDefinitions'] = hcJsonValue(menuItemDefinitions);
    }
    if (pdfFont != null) {
      json['pdfFont'] = pdfFont!.toJson();
    }
    if (printMaxWidth != null) {
      json['printMaxWidth'] = printMaxWidth;
    }
    if (scale != null) {
      json['scale'] = scale;
    }
    if (showExportInProgress != null) {
      json['showExportInProgress'] = showExportInProgress;
    }
    if (showTable != null) {
      json['showTable'] = showTable;
    }
    if (sourceHeight != null) {
      json['sourceHeight'] = sourceHeight;
    }
    if (sourceWidth != null) {
      json['sourceWidth'] = sourceWidth;
    }
    if (tableCaption != null) {
      json['tableCaption'] = hcJsonValue(tableCaption);
    }
    if (type != null) {
      json['type'] = type;
    }
    if (url != null) {
      json['url'] = hcJsonValue(url);
    }
    if (useMultiLevelHeaders != null) {
      json['useMultiLevelHeaders'] = useMultiLevelHeaders;
    }
    if (useRowspanHeaders != null) {
      json['useRowspanHeaders'] = useRowspanHeaders;
    }
    if (width != null) {
      json['width'] = width;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Settings for a custom font for the exported PDF, when using the `offline-exporting` module. This is used for languages containing non-ASCII characters, like Chinese, Russian, Japanese etc.
class HCExportingPdfFontOptions implements HCOption {
  const HCExportingPdfFontOptions({
    this.bold,
    this.bolditalic,
    this.italic,
    this.normal,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) The TTF font file for bold text.
  final String? bold;

  /// (Highcharts, Highstock, Highmaps, Gantt) The TTF font file for bold and italic text.
  final String? bolditalic;

  /// (Highcharts, Highstock, Highmaps, Gantt) The TTF font file for italic text.
  final String? italic;

  /// (Highcharts, Highstock, Highmaps, Gantt) The TTF font file for normal `font-style`. If font variations like `bold` or `italic` are not defined, the `normal` font will be used for those too.
  final String? normal;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (bold != null) {
      json['bold'] = bold;
    }
    if (bolditalic != null) {
      json['bolditalic'] = bolditalic;
    }
    if (italic != null) {
      json['italic'] = italic;
    }
    if (normal != null) {
      json['normal'] = normal;
    }
    return json;
  }
}
