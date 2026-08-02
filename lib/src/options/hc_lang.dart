part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Default announcement for new data in charts. If addPoint or addSeries is used, and only one series/point is added, the `newPointAnnounce` and `newSeriesAnnounce` strings are used. The `...Single` versions will be used if there is only one chart on the page, a
class HCLangAccessibilityAnnounceNewDataOptions implements HCOption {
  const HCLangAccessibilityAnnounceNewDataOptions({
    this.newDataAnnounce,
    this.newPointAnnounceMultiple,
    this.newPointAnnounceSingle,
    this.newSeriesAnnounceMultiple,
    this.newSeriesAnnounceSingle,
  });

  final String? newDataAnnounce;

  final String? newPointAnnounceMultiple;

  final String? newPointAnnounceSingle;

  final String? newSeriesAnnounceMultiple;

  final String? newSeriesAnnounceSingle;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (newDataAnnounce != null) {
      json['newDataAnnounce'] = newDataAnnounce;
    }
    if (newPointAnnounceMultiple != null) {
      json['newPointAnnounceMultiple'] = newPointAnnounceMultiple;
    }
    if (newPointAnnounceSingle != null) {
      json['newPointAnnounceSingle'] = newPointAnnounceSingle;
    }
    if (newSeriesAnnounceMultiple != null) {
      json['newSeriesAnnounceMultiple'] = newSeriesAnnounceMultiple;
    }
    if (newSeriesAnnounceSingle != null) {
      json['newSeriesAnnounceSingle'] = newSeriesAnnounceSingle;
    }
    return json;
  }
}

class HCLangAccessibilityAxisDefaultAxisNamesOptions implements HCOption {
  const HCLangAccessibilityAxisDefaultAxisNamesOptions({
    this.categories,
    this.time,
    this.values,
  });

  final String? categories;

  final String? time;

  final String? values;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (categories != null) {
      json['categories'] = categories;
    }
    if (time != null) {
      json['time'] = time;
    }
    if (values != null) {
      json['values'] = values;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Axis description format strings.
class HCLangAccessibilityAxisOptions implements HCOption {
  const HCLangAccessibilityAxisOptions({
    this.defaultAxisNames,
    this.rangeCategories,
    this.rangeFromTo,
    this.timeRangeDays,
    this.timeRangeHours,
    this.timeRangeMinutes,
    this.timeRangeSeconds,
    this.xAxisDescriptionPlural,
    this.xAxisDescriptionSingular,
    this.yAxisDescriptionPlural,
    this.yAxisDescriptionSingular,
  });

  final HCLangAccessibilityAxisDefaultAxisNamesOptions? defaultAxisNames;

  final String? rangeCategories;

  final String? rangeFromTo;

  final String? timeRangeDays;

  final String? timeRangeHours;

  final String? timeRangeMinutes;

  final String? timeRangeSeconds;

  final String? xAxisDescriptionPlural;

  final String? xAxisDescriptionSingular;

  final String? yAxisDescriptionPlural;

  final String? yAxisDescriptionSingular;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (defaultAxisNames != null) {
      json['defaultAxisNames'] = defaultAxisNames!.toJson();
    }
    if (rangeCategories != null) {
      json['rangeCategories'] = rangeCategories;
    }
    if (rangeFromTo != null) {
      json['rangeFromTo'] = rangeFromTo;
    }
    if (timeRangeDays != null) {
      json['timeRangeDays'] = timeRangeDays;
    }
    if (timeRangeHours != null) {
      json['timeRangeHours'] = timeRangeHours;
    }
    if (timeRangeMinutes != null) {
      json['timeRangeMinutes'] = timeRangeMinutes;
    }
    if (timeRangeSeconds != null) {
      json['timeRangeSeconds'] = timeRangeSeconds;
    }
    if (xAxisDescriptionPlural != null) {
      json['xAxisDescriptionPlural'] = xAxisDescriptionPlural;
    }
    if (xAxisDescriptionSingular != null) {
      json['xAxisDescriptionSingular'] = xAxisDescriptionSingular;
    }
    if (yAxisDescriptionPlural != null) {
      json['yAxisDescriptionPlural'] = yAxisDescriptionPlural;
    }
    if (yAxisDescriptionSingular != null) {
      json['yAxisDescriptionSingular'] = yAxisDescriptionSingular;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Chart type description strings. This is added to the chart information region.
class HCLangAccessibilityChartTypesOptions implements HCOption {
  const HCLangAccessibilityChartTypesOptions({
    this.barMultiple,
    this.barSingle,
    this.boxplotMultiple,
    this.boxplotSingle,
    this.bubbleMultiple,
    this.bubbleSingle,
    this.columnMultiple,
    this.columnSingle,
    this.combinationChart,
    this.defaultMultiple,
    this.defaultSingle,
    this.emptyChart,
    this.lineMultiple,
    this.lineSingle,
    this.mapTypeDescription,
    this.pieMultiple,
    this.pieSingle,
    this.scatterMultiple,
    this.scatterSingle,
    this.splineMultiple,
    this.splineSingle,
    this.unknownMap,
  });

  final String? barMultiple;

  final String? barSingle;

  final String? boxplotMultiple;

  final String? boxplotSingle;

  final String? bubbleMultiple;

  final String? bubbleSingle;

  final String? columnMultiple;

  final String? columnSingle;

  final String? combinationChart;

  final String? defaultMultiple;

  final String? defaultSingle;

  final String? emptyChart;

  final String? lineMultiple;

  final String? lineSingle;

  final String? mapTypeDescription;

  final String? pieMultiple;

  final String? pieSingle;

  final String? scatterMultiple;

  final String? scatterSingle;

  final String? splineMultiple;

  final String? splineSingle;

  final String? unknownMap;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (barMultiple != null) {
      json['barMultiple'] = barMultiple;
    }
    if (barSingle != null) {
      json['barSingle'] = barSingle;
    }
    if (boxplotMultiple != null) {
      json['boxplotMultiple'] = boxplotMultiple;
    }
    if (boxplotSingle != null) {
      json['boxplotSingle'] = boxplotSingle;
    }
    if (bubbleMultiple != null) {
      json['bubbleMultiple'] = bubbleMultiple;
    }
    if (bubbleSingle != null) {
      json['bubbleSingle'] = bubbleSingle;
    }
    if (columnMultiple != null) {
      json['columnMultiple'] = columnMultiple;
    }
    if (columnSingle != null) {
      json['columnSingle'] = columnSingle;
    }
    if (combinationChart != null) {
      json['combinationChart'] = combinationChart;
    }
    if (defaultMultiple != null) {
      json['defaultMultiple'] = defaultMultiple;
    }
    if (defaultSingle != null) {
      json['defaultSingle'] = defaultSingle;
    }
    if (emptyChart != null) {
      json['emptyChart'] = emptyChart;
    }
    if (lineMultiple != null) {
      json['lineMultiple'] = lineMultiple;
    }
    if (lineSingle != null) {
      json['lineSingle'] = lineSingle;
    }
    if (mapTypeDescription != null) {
      json['mapTypeDescription'] = mapTypeDescription;
    }
    if (pieMultiple != null) {
      json['pieMultiple'] = pieMultiple;
    }
    if (pieSingle != null) {
      json['pieSingle'] = pieSingle;
    }
    if (scatterMultiple != null) {
      json['scatterMultiple'] = scatterMultiple;
    }
    if (scatterSingle != null) {
      json['scatterSingle'] = scatterSingle;
    }
    if (splineMultiple != null) {
      json['splineMultiple'] = splineMultiple;
    }
    if (splineSingle != null) {
      json['splineSingle'] = splineSingle;
    }
    if (unknownMap != null) {
      json['unknownMap'] = unknownMap;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Exporting menu format strings for accessibility module.
class HCLangAccessibilityExportingOptions implements HCOption {
  const HCLangAccessibilityExportingOptions({
    this.chartMenuLabel,
    this.menuButtonLabel,
  });

  final String? chartMenuLabel;

  final String? menuButtonLabel;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (chartMenuLabel != null) {
      json['chartMenuLabel'] = chartMenuLabel;
    }
    if (menuButtonLabel != null) {
      json['menuButtonLabel'] = menuButtonLabel;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Language options for accessibility of the legend.
class HCLangAccessibilityLegendOptions implements HCOption {
  const HCLangAccessibilityLegendOptions({
    this.legendItem,
    this.legendLabel,
    this.legendLabelNoTitle,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Accessible label for individual legend items. `{itemName}` refers to the visual text in the legend for that item.
  final String? legendItem;

  /// (Highcharts, Highstock, Highmaps, Gantt) Accessible label for the legend, for charts where there is a legend title defined. `{legendTitle}` refers to the visual text in the legend title.
  final String? legendLabel;

  /// (Highcharts, Highstock, Highmaps, Gantt) Accessible label for the legend, for charts where there is no legend title defined.
  final String? legendLabelNoTitle;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (legendItem != null) {
      json['legendItem'] = legendItem;
    }
    if (legendLabel != null) {
      json['legendLabel'] = legendLabel;
    }
    if (legendLabelNoTitle != null) {
      json['legendLabelNoTitle'] = legendLabelNoTitle;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Navigator language options for accessibility.
class HCLangAccessibilityNavigatorOptions implements HCOption {
  const HCLangAccessibilityNavigatorOptions({
    this.changeAnnouncement,
    this.groupLabel,
    this.handleLabel,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Announcement for assistive technology when navigator values are changed.
  final String? changeAnnouncement;

  /// (Highcharts, Highstock, Highmaps, Gantt) Label for the navigator region.
  final String? groupLabel;

  /// (Highcharts, Highstock, Highmaps, Gantt) Label for the navigator handles.
  final String? handleLabel;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (changeAnnouncement != null) {
      json['changeAnnouncement'] = changeAnnouncement;
    }
    if (groupLabel != null) {
      json['groupLabel'] = groupLabel;
    }
    if (handleLabel != null) {
      json['handleLabel'] = handleLabel;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Configure the accessibility strings in the chart. Requires the accessibility module to be loaded. For a description of the module and information on its features, see Highcharts Accessibility.
class HCLangAccessibilityOptions implements HCOption {
  const HCLangAccessibilityOptions({
    this.announceNewData,
    this.axis,
    this.chartContainerLabel,
    this.chartTypes,
    this.credits,
    this.defaultChartTitle,
    this.drillUpButton,
    this.exporting,
    this.graphicContainerLabel,
    this.legend,
    this.navigator,
    this.rangeSelector,
    this.resetZoomButton,
    this.screenReaderSection,
    this.series,
    this.seriesTypeDescriptions,
    this.sonification,
    this.stockTools,
    this.svgContainerLabel,
    this.svgContainerTitle,
    this.table,
    this.thousandsSep,
    this.zoom,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Default announcement for new data in charts. If addPoint or addSeries is used, and only one series/point is added, the `newPointAnnounce` and `newSeriesAnnounce` strings are used. The `...Single` versions will be used if there is only one chart on the page, a
  final HCLangAccessibilityAnnounceNewDataOptions? announceNewData;

  /// (Highcharts, Highstock, Highmaps, Gantt) Axis description format strings.
  final HCLangAccessibilityAxisOptions? axis;

  /// (Highcharts, Highstock, Highmaps, Gantt) Accessible label for the chart container HTML element. `{title}` refers to the chart title.
  final String? chartContainerLabel;

  /// (Highcharts, Highstock, Highmaps, Gantt) Chart type description strings. This is added to the chart information region.
  final HCLangAccessibilityChartTypesOptions? chartTypes;

  /// (Highcharts, Highstock, Highmaps, Gantt) Accessible label for the chart credits. `{creditsStr}` refers to the visual text in the credits.
  final String? credits;

  /// (Highcharts, Highstock, Highmaps, Gantt) Default title of the chart for assistive technology, for charts without a chart title.
  final String? defaultChartTitle;

  /// (Highcharts, Highstock, Highmaps, Gantt) Accessible label for the drill-up button. `{buttonText}` refers to the visual text on the button.
  final String? drillUpButton;

  /// (Highcharts, Highstock, Highmaps, Gantt) Exporting menu format strings for accessibility module.
  final HCLangAccessibilityExportingOptions? exporting;

  /// (Highcharts, Highstock, Highmaps, Gantt) Set a label on the container wrapping the SVG.
  final String? graphicContainerLabel;

  /// (Highcharts, Highstock, Highmaps, Gantt) Language options for accessibility of the legend.
  final HCLangAccessibilityLegendOptions? legend;

  /// (Highcharts, Highstock, Highmaps, Gantt) Navigator language options for accessibility.
  final HCLangAccessibilityNavigatorOptions? navigator;

  /// (Highcharts, Highstock, Highmaps, Gantt) Range selector language options for accessibility.
  final HCLangAccessibilityRangeSelectorOptions? rangeSelector;

  final String? resetZoomButton;

  /// (Highcharts, Highstock, Highmaps, Gantt) Language options for the screen reader information sections added before and after the charts.
  final HCLangAccessibilityScreenReaderSectionOptions? screenReaderSection;

  /// (Highcharts, Highstock, Highmaps, Gantt) Lang configuration for different series types. For more dynamic control over the series element descriptions, see accessibility.seriesDescriptionFormatter.
  final HCLangAccessibilitySeriesOptions? series;

  /// (Highcharts, Highstock, Highmaps, Gantt) Descriptions of lesser known series types. The relevant description is added to the screen reader information region when these series types are used.
  final HCLangAccessibilitySeriesTypeDescriptionsOptions?
      seriesTypeDescriptions;

  /// (Highcharts, Highstock, Highmaps, Gantt) Language options for sonification.
  final HCLangAccessibilitySonificationOptions? sonification;

  /// (Highcharts, Highstock, Highmaps, Gantt) Stock tools language options for accessibility.
  final HCLangAccessibilityStockToolsOptions? stockTools;

  /// (Highcharts, Highstock, Highmaps, Gantt) Accessible label for the chart SVG element. `{chartTitle}` refers to the chart title.
  final String? svgContainerLabel;

  /// (Highcharts, Highstock, Highmaps, Gantt) Title element text for the chart SVG element. Leave this empty to disable adding the title element. Browsers will display this content when hovering over elements in the chart. Assistive technology may use this element to label the chart.
  final String? svgContainerTitle;

  /// (Highcharts, Highstock, Highmaps, Gantt) Accessibility language options for the data table.
  final HCLangAccessibilityTableOptions? table;

  /// (Highcharts, Highstock, Highmaps, Gantt) Thousands separator to use when formatting numbers for screen readers. Note that many screen readers will not handle space as a thousands separator, and will consider "11 700" as two numbers.
  final String? thousandsSep;

  /// (Highcharts, Highstock, Highmaps, Gantt) Chart and map zoom accessibility language options.
  final HCLangAccessibilityZoomOptions? zoom;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (announceNewData != null) {
      json['announceNewData'] = announceNewData!.toJson();
    }
    if (axis != null) {
      json['axis'] = axis!.toJson();
    }
    if (chartContainerLabel != null) {
      json['chartContainerLabel'] = chartContainerLabel;
    }
    if (chartTypes != null) {
      json['chartTypes'] = chartTypes!.toJson();
    }
    if (credits != null) {
      json['credits'] = credits;
    }
    if (defaultChartTitle != null) {
      json['defaultChartTitle'] = defaultChartTitle;
    }
    if (drillUpButton != null) {
      json['drillUpButton'] = drillUpButton;
    }
    if (exporting != null) {
      json['exporting'] = exporting!.toJson();
    }
    if (graphicContainerLabel != null) {
      json['graphicContainerLabel'] = graphicContainerLabel;
    }
    if (legend != null) {
      json['legend'] = legend!.toJson();
    }
    if (navigator != null) {
      json['navigator'] = navigator!.toJson();
    }
    if (rangeSelector != null) {
      json['rangeSelector'] = rangeSelector!.toJson();
    }
    if (resetZoomButton != null) {
      json['resetZoomButton'] = resetZoomButton;
    }
    if (screenReaderSection != null) {
      json['screenReaderSection'] = screenReaderSection!.toJson();
    }
    if (series != null) {
      json['series'] = series!.toJson();
    }
    if (seriesTypeDescriptions != null) {
      json['seriesTypeDescriptions'] = seriesTypeDescriptions!.toJson();
    }
    if (sonification != null) {
      json['sonification'] = sonification!.toJson();
    }
    if (stockTools != null) {
      json['stockTools'] = stockTools!.toJson();
    }
    if (svgContainerLabel != null) {
      json['svgContainerLabel'] = svgContainerLabel;
    }
    if (svgContainerTitle != null) {
      json['svgContainerTitle'] = svgContainerTitle;
    }
    if (table != null) {
      json['table'] = table!.toJson();
    }
    if (thousandsSep != null) {
      json['thousandsSep'] = thousandsSep;
    }
    if (zoom != null) {
      json['zoom'] = zoom!.toJson();
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Range selector language options for accessibility.
class HCLangAccessibilityRangeSelectorOptions implements HCOption {
  const HCLangAccessibilityRangeSelectorOptions({
    this.clickButtonAnnouncement,
    this.dropdownLabel,
    this.maxInputLabel,
    this.minInputLabel,
  });

  final String? clickButtonAnnouncement;

  final String? dropdownLabel;

  final String? maxInputLabel;

  final String? minInputLabel;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (clickButtonAnnouncement != null) {
      json['clickButtonAnnouncement'] = clickButtonAnnouncement;
    }
    if (dropdownLabel != null) {
      json['dropdownLabel'] = dropdownLabel;
    }
    if (maxInputLabel != null) {
      json['maxInputLabel'] = maxInputLabel;
    }
    if (minInputLabel != null) {
      json['minInputLabel'] = minInputLabel;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Language options for annotation descriptions.
class HCLangAccessibilityScreenReaderSectionAnnotationsOptions
    implements HCOption {
  const HCLangAccessibilityScreenReaderSectionAnnotationsOptions({
    this.descriptionMultiplePoints,
    this.descriptionNoPoints,
    this.descriptionSinglePoint,
    this.heading,
  });

  final String? descriptionMultiplePoints;

  final String? descriptionNoPoints;

  final String? descriptionSinglePoint;

  final String? heading;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (descriptionMultiplePoints != null) {
      json['descriptionMultiplePoints'] = descriptionMultiplePoints;
    }
    if (descriptionNoPoints != null) {
      json['descriptionNoPoints'] = descriptionNoPoints;
    }
    if (descriptionSinglePoint != null) {
      json['descriptionSinglePoint'] = descriptionSinglePoint;
    }
    if (heading != null) {
      json['heading'] = heading;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Language options for the screen reader information sections added before and after the charts.
class HCLangAccessibilityScreenReaderSectionOptions implements HCOption {
  const HCLangAccessibilityScreenReaderSectionOptions({
    this.afterRegionLabel,
    this.annotations,
    this.beforeRegionLabel,
    this.endOfChartMarker,
  });

  final String? afterRegionLabel;

  /// (Highcharts, Highstock, Highmaps, Gantt) Language options for annotation descriptions.
  final HCLangAccessibilityScreenReaderSectionAnnotationsOptions? annotations;

  final String? beforeRegionLabel;

  /// (Highcharts, Highstock, Highmaps, Gantt) Label for the end of the chart. Announced by screen readers.
  final String? endOfChartMarker;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (afterRegionLabel != null) {
      json['afterRegionLabel'] = afterRegionLabel;
    }
    if (annotations != null) {
      json['annotations'] = annotations!.toJson();
    }
    if (beforeRegionLabel != null) {
      json['beforeRegionLabel'] = beforeRegionLabel;
    }
    if (endOfChartMarker != null) {
      json['endOfChartMarker'] = endOfChartMarker;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Lang configuration for different series types. For more dynamic control over the series element descriptions, see accessibility.seriesDescriptionFormatter.
class HCLangAccessibilitySeriesOptions implements HCOption {
  const HCLangAccessibilitySeriesOptions({
    this.description,
    this.nullPointValue,
    this.pointAnnotationsDescription,
    this.summary,
    this.xAxisDescription,
    this.yAxisDescription,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) User supplied description text. This is added in the point comment description by default if present.
  final String? description;

  /// (Highcharts, Highstock, Highmaps, Gantt) Description for the value of null points.
  final String? nullPointValue;

  /// (Highcharts, Highstock, Highmaps, Gantt) Description for annotations on a point, as it is made available to assistive technology.
  final String? pointAnnotationsDescription;

  /// (Highcharts, Highstock, Highmaps, Gantt) Lang configuration for the series main summary. Each series type has two modes:
  final HCLangAccessibilitySeriesSummaryOptions? summary;

  /// (Highcharts, Highstock, Highmaps, Gantt) X-axis description for series if there are multiple xAxes in the chart.
  final String? xAxisDescription;

  /// (Highcharts, Highstock, Highmaps, Gantt) Y-axis description for series if there are multiple yAxes in the chart.
  final String? yAxisDescription;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (description != null) {
      json['description'] = description;
    }
    if (nullPointValue != null) {
      json['nullPointValue'] = nullPointValue;
    }
    if (pointAnnotationsDescription != null) {
      json['pointAnnotationsDescription'] = pointAnnotationsDescription;
    }
    if (summary != null) {
      json['summary'] = summary!.toJson();
    }
    if (xAxisDescription != null) {
      json['xAxisDescription'] = xAxisDescription;
    }
    if (yAxisDescription != null) {
      json['yAxisDescription'] = yAxisDescription;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Lang configuration for the series main summary. Each series type has two modes:
class HCLangAccessibilitySeriesSummaryOptions implements HCOption {
  const HCLangAccessibilitySeriesSummaryOptions({
    this.bar,
    this.barCombination,
    this.boxplot,
    this.boxplotCombination,
    this.bubble,
    this.bubbleCombination,
    this.column,
    this.columnCombination,
    this.default_,
    this.defaultCombination,
    this.line,
    this.lineCombination,
    this.map,
    this.mapbubble,
    this.mapbubbleCombination,
    this.mapCombination,
    this.mapline,
    this.maplineCombination,
    this.pie,
    this.pieCombination,
    this.scatter,
    this.scatterCombination,
    this.spline,
    this.splineCombination,
  });

  final String? bar;

  final String? barCombination;

  final String? boxplot;

  final String? boxplotCombination;

  final String? bubble;

  final String? bubbleCombination;

  final String? column;

  final String? columnCombination;

  final String? default_;

  final String? defaultCombination;

  final String? line;

  final String? lineCombination;

  final String? map;

  final String? mapbubble;

  final String? mapbubbleCombination;

  final String? mapCombination;

  final String? mapline;

  final String? maplineCombination;

  final String? pie;

  final String? pieCombination;

  final String? scatter;

  final String? scatterCombination;

  final String? spline;

  final String? splineCombination;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (bar != null) {
      json['bar'] = bar;
    }
    if (barCombination != null) {
      json['barCombination'] = barCombination;
    }
    if (boxplot != null) {
      json['boxplot'] = boxplot;
    }
    if (boxplotCombination != null) {
      json['boxplotCombination'] = boxplotCombination;
    }
    if (bubble != null) {
      json['bubble'] = bubble;
    }
    if (bubbleCombination != null) {
      json['bubbleCombination'] = bubbleCombination;
    }
    if (column != null) {
      json['column'] = column;
    }
    if (columnCombination != null) {
      json['columnCombination'] = columnCombination;
    }
    if (default_ != null) {
      json['default'] = default_;
    }
    if (defaultCombination != null) {
      json['defaultCombination'] = defaultCombination;
    }
    if (line != null) {
      json['line'] = line;
    }
    if (lineCombination != null) {
      json['lineCombination'] = lineCombination;
    }
    if (map != null) {
      json['map'] = map;
    }
    if (mapbubble != null) {
      json['mapbubble'] = mapbubble;
    }
    if (mapbubbleCombination != null) {
      json['mapbubbleCombination'] = mapbubbleCombination;
    }
    if (mapCombination != null) {
      json['mapCombination'] = mapCombination;
    }
    if (mapline != null) {
      json['mapline'] = mapline;
    }
    if (maplineCombination != null) {
      json['maplineCombination'] = maplineCombination;
    }
    if (pie != null) {
      json['pie'] = pie;
    }
    if (pieCombination != null) {
      json['pieCombination'] = pieCombination;
    }
    if (scatter != null) {
      json['scatter'] = scatter;
    }
    if (scatterCombination != null) {
      json['scatterCombination'] = scatterCombination;
    }
    if (spline != null) {
      json['spline'] = spline;
    }
    if (splineCombination != null) {
      json['splineCombination'] = splineCombination;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Descriptions of lesser known series types. The relevant description is added to the screen reader information region when these series types are used.
class HCLangAccessibilitySeriesTypeDescriptionsOptions implements HCOption {
  const HCLangAccessibilitySeriesTypeDescriptionsOptions({
    this.arearange,
    this.areasplinerange,
    this.boxplot,
    this.bubble,
    this.columnrange,
    this.errorbar,
    this.funnel,
    this.pyramid,
    this.waterfall,
  });

  final String? arearange;

  final String? areasplinerange;

  final String? boxplot;

  final String? bubble;

  final String? columnrange;

  final String? errorbar;

  final String? funnel;

  final String? pyramid;

  final String? waterfall;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (arearange != null) {
      json['arearange'] = arearange;
    }
    if (areasplinerange != null) {
      json['areasplinerange'] = areasplinerange;
    }
    if (boxplot != null) {
      json['boxplot'] = boxplot;
    }
    if (bubble != null) {
      json['bubble'] = bubble;
    }
    if (columnrange != null) {
      json['columnrange'] = columnrange;
    }
    if (errorbar != null) {
      json['errorbar'] = errorbar;
    }
    if (funnel != null) {
      json['funnel'] = funnel;
    }
    if (pyramid != null) {
      json['pyramid'] = pyramid;
    }
    if (waterfall != null) {
      json['waterfall'] = waterfall;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Language options for sonification.
class HCLangAccessibilitySonificationOptions implements HCOption {
  const HCLangAccessibilitySonificationOptions({
    this.playAsSoundButtonText,
    this.playAsSoundClickAnnouncement,
  });

  final String? playAsSoundButtonText;

  final String? playAsSoundClickAnnouncement;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (playAsSoundButtonText != null) {
      json['playAsSoundButtonText'] = playAsSoundButtonText;
    }
    if (playAsSoundClickAnnouncement != null) {
      json['playAsSoundClickAnnouncement'] = playAsSoundClickAnnouncement;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Stock tools language options for accessibility.
class HCLangAccessibilityStockToolsOptions implements HCOption {
  const HCLangAccessibilityStockToolsOptions({
    this.arrowLabel,
    this.groupLabel,
  });

  final String? arrowLabel;

  final String? groupLabel;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (arrowLabel != null) {
      json['arrowLabel'] = arrowLabel;
    }
    if (groupLabel != null) {
      json['groupLabel'] = groupLabel;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Accessibility language options for the data table.
class HCLangAccessibilityTableOptions implements HCOption {
  const HCLangAccessibilityTableOptions({
    this.tableSummary,
    this.viewAsDataTableButtonText,
  });

  final String? tableSummary;

  final String? viewAsDataTableButtonText;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (tableSummary != null) {
      json['tableSummary'] = tableSummary;
    }
    if (viewAsDataTableButtonText != null) {
      json['viewAsDataTableButtonText'] = viewAsDataTableButtonText;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Chart and map zoom accessibility language options.
class HCLangAccessibilityZoomOptions implements HCOption {
  const HCLangAccessibilityZoomOptions({
    this.mapZoomIn,
    this.mapZoomOut,
    this.resetZoomButton,
  });

  final String? mapZoomIn;

  final String? mapZoomOut;

  final String? resetZoomButton;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (mapZoomIn != null) {
      json['mapZoomIn'] = mapZoomIn;
    }
    if (mapZoomOut != null) {
      json['mapZoomOut'] = mapZoomOut;
    }
    if (resetZoomButton != null) {
      json['resetZoomButton'] = resetZoomButton;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) The text for exported table.
class HCLangExportDataOptions implements HCOption {
  const HCLangExportDataOptions({
    this.annotationHeader,
    this.categoryDatetimeHeader,
    this.categoryHeader,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) The annotation column title.
  final String? annotationHeader;

  /// (Highcharts, Highstock, Highmaps, Gantt) The category column title when axis type set to "datetime".
  final String? categoryDatetimeHeader;

  /// (Highcharts, Highstock, Highmaps, Gantt) The category column title.
  final String? categoryHeader;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (annotationHeader != null) {
      json['annotationHeader'] = annotationHeader;
    }
    if (categoryDatetimeHeader != null) {
      json['categoryDatetimeHeader'] = categoryDatetimeHeader;
    }
    if (categoryHeader != null) {
      json['categoryHeader'] = categoryHeader;
    }
    return json;
  }
}

/// (Highcharts, Highstock) Configure the Popup strings in the chart. Requires the `annotations.js` or `annotations-advanced.src.js` module to be loaded.
class HCLangNavigationOptions implements HCOption {
  const HCLangNavigationOptions({
    this.popup,
  });

  /// (Highcharts, Highstock) Translations for all field names used in popup.
  final HCLangNavigationPopupOptions? popup;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (popup != null) {
      json['popup'] = popup!.toJson();
    }
    return json;
  }
}

/// (Highstock) Configure the aliases for indicator names.
class HCLangNavigationPopupIndicatorAliasesOptions implements HCOption {
  const HCLangNavigationPopupIndicatorAliasesOptions({
    this.abands,
    this.ad,
    this.ao,
    this.apo,
    this.aroon,
    this.aroonoscillator,
    this.atr,
    this.bb,
    this.cci,
    this.chaikin,
    this.cmf,
    this.cmo,
    this.dema,
    this.disparityindex,
    this.dmi,
    this.dpo,
    this.ema,
    this.ikh,
    this.keltnerchannels,
    this.klinger,
    this.linearRegression,
    this.linearRegressionAngle,
    this.linearRegressionIntercept,
    this.linearRegressionSlope,
    this.macd,
    this.mfi,
    this.momentum,
    this.natr,
    this.obv,
    this.pc,
    this.pivotpoints,
    this.ppo,
    this.priceenvelopes,
    this.psar,
    this.roc,
    this.rsi,
    this.slowstochastic,
    this.sma,
    this.stochastic,
    this.supertrend,
    this.tema,
    this.trix,
    this.vbp,
    this.vwap,
    this.williamsr,
    this.wma,
    this.zigzag,
  });

  /// (Highstock) Acceleration Bands alias.
  final List<String>? abands;

  /// (Highstock) Accumulation/Distribution alias.
  final List<String>? ad;

  /// (Highstock) Awesome oscillator alias.
  final List<String>? ao;

  /// (Highstock) Absolute price indicator alias.
  final List<String>? apo;

  /// (Highstock) Aroon alias.
  final List<String>? aroon;

  /// (Highstock) Aroon oscillator alias.
  final List<String>? aroonoscillator;

  /// (Highstock) Average True Range alias.
  final List<String>? atr;

  /// (Highstock) Bollinger Bands alias.
  final List<String>? bb;

  /// (Highstock) Commodity Channel Index alias.
  final List<String>? cci;

  /// (Highstock) Chaikin alias.
  final List<String>? chaikin;

  /// (Highstock) Chaikin Money Flow alias.
  final List<String>? cmf;

  /// (Highstock) Chande Momentum Oscillator alias.
  final List<String>? cmo;

  /// (Highstock) Double Exponential Moving Average alias.
  final List<String>? dema;

  /// (Highstock) Disparity Index alias.
  final List<String>? disparityindex;

  /// (Highstock) Directional Movement Index alias.
  final List<String>? dmi;

  /// (Highstock) Detrended price oscillator alias.
  final List<String>? dpo;

  /// (Highstock) Exponential Moving Average alias.
  final List<String>? ema;

  /// (Highstock) Ichimoku Kinko Hyo alias.
  final List<String>? ikh;

  /// (Highstock) Keltner Channels alias.
  final List<String>? keltnerchannels;

  /// (Highstock) Klinger Oscillator alias.
  final List<String>? klinger;

  /// (Highstock) Linear Regression alias.
  final List<String>? linearRegression;

  /// (Highstock) Linear Regression Angle alias.
  final List<String>? linearRegressionAngle;

  /// (Highstock) Linear Regression Intercept alias.
  final List<String>? linearRegressionIntercept;

  /// (Highstock) Linear Regression Slope alias.
  final List<String>? linearRegressionSlope;

  /// (Highstock) Moving Average Convergence Divergence alias.
  final List<String>? macd;

  /// (Highstock) Money Flow Index alias.
  final List<String>? mfi;

  /// (Highstock) Momentum alias.
  final List<String>? momentum;

  /// (Highstock) Normalized Average True Range alias.
  final List<String>? natr;

  /// (Highstock) On-Balance Volume alias.
  final List<String>? obv;

  /// (Highstock) Price Channel alias.
  final List<String>? pc;

  /// (Highstock) Pivot Points alias.
  final List<String>? pivotpoints;

  /// (Highstock) Percentage Price oscillator alias.
  final List<String>? ppo;

  /// (Highstock) Price Envelopes alias.
  final List<String>? priceenvelopes;

  /// (Highstock) Parabolic SAR alias.
  final List<String>? psar;

  /// (Highstock) Rate of Change alias.
  final List<String>? roc;

  /// (Highstock) Relative Strength Index alias.
  final List<String>? rsi;

  /// (Highstock) Slow Stochastic alias.
  final List<String>? slowstochastic;

  /// (Highstock) Simple Moving Average alias.
  final List<String>? sma;

  /// (Highstock) Stochastic alias.
  final List<String>? stochastic;

  /// (Highstock) Super Trend alias.
  final List<String>? supertrend;

  /// (Highstock) Triple Exponential Moving Average alias.
  final List<String>? tema;

  /// (Highstock) TRIX alias.
  final List<String>? trix;

  /// (Highstock) Volume by Price alias.
  final List<String>? vbp;

  /// (Highstock) Volume Weighted Moving Average alias.
  final List<String>? vwap;

  /// (Highstock) Williams %R alias.
  final List<String>? williamsr;

  /// (Highstock) Weighted Moving Average alias.
  final List<String>? wma;

  /// (Highstock) Zig Zagalias.
  final List<String>? zigzag;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (abands != null) {
      json['abands'] = abands;
    }
    if (ad != null) {
      json['ad'] = ad;
    }
    if (ao != null) {
      json['ao'] = ao;
    }
    if (apo != null) {
      json['apo'] = apo;
    }
    if (aroon != null) {
      json['aroon'] = aroon;
    }
    if (aroonoscillator != null) {
      json['aroonoscillator'] = aroonoscillator;
    }
    if (atr != null) {
      json['atr'] = atr;
    }
    if (bb != null) {
      json['bb'] = bb;
    }
    if (cci != null) {
      json['cci'] = cci;
    }
    if (chaikin != null) {
      json['chaikin'] = chaikin;
    }
    if (cmf != null) {
      json['cmf'] = cmf;
    }
    if (cmo != null) {
      json['cmo'] = cmo;
    }
    if (dema != null) {
      json['dema'] = dema;
    }
    if (disparityindex != null) {
      json['disparityindex'] = disparityindex;
    }
    if (dmi != null) {
      json['dmi'] = dmi;
    }
    if (dpo != null) {
      json['dpo'] = dpo;
    }
    if (ema != null) {
      json['ema'] = ema;
    }
    if (ikh != null) {
      json['ikh'] = ikh;
    }
    if (keltnerchannels != null) {
      json['keltnerchannels'] = keltnerchannels;
    }
    if (klinger != null) {
      json['klinger'] = klinger;
    }
    if (linearRegression != null) {
      json['linearRegression'] = linearRegression;
    }
    if (linearRegressionAngle != null) {
      json['linearRegressionAngle'] = linearRegressionAngle;
    }
    if (linearRegressionIntercept != null) {
      json['linearRegressionIntercept'] = linearRegressionIntercept;
    }
    if (linearRegressionSlope != null) {
      json['linearRegressionSlope'] = linearRegressionSlope;
    }
    if (macd != null) {
      json['macd'] = macd;
    }
    if (mfi != null) {
      json['mfi'] = mfi;
    }
    if (momentum != null) {
      json['momentum'] = momentum;
    }
    if (natr != null) {
      json['natr'] = natr;
    }
    if (obv != null) {
      json['obv'] = obv;
    }
    if (pc != null) {
      json['pc'] = pc;
    }
    if (pivotpoints != null) {
      json['pivotpoints'] = pivotpoints;
    }
    if (ppo != null) {
      json['ppo'] = ppo;
    }
    if (priceenvelopes != null) {
      json['priceenvelopes'] = priceenvelopes;
    }
    if (psar != null) {
      json['psar'] = psar;
    }
    if (roc != null) {
      json['roc'] = roc;
    }
    if (rsi != null) {
      json['rsi'] = rsi;
    }
    if (slowstochastic != null) {
      json['slowstochastic'] = slowstochastic;
    }
    if (sma != null) {
      json['sma'] = sma;
    }
    if (stochastic != null) {
      json['stochastic'] = stochastic;
    }
    if (supertrend != null) {
      json['supertrend'] = supertrend;
    }
    if (tema != null) {
      json['tema'] = tema;
    }
    if (trix != null) {
      json['trix'] = trix;
    }
    if (vbp != null) {
      json['vbp'] = vbp;
    }
    if (vwap != null) {
      json['vwap'] = vwap;
    }
    if (williamsr != null) {
      json['williamsr'] = williamsr;
    }
    if (wma != null) {
      json['wma'] = wma;
    }
    if (zigzag != null) {
      json['zigzag'] = zigzag;
    }
    return json;
  }
}

/// (Highcharts, Highstock) Translations for all field names used in popup.
class HCLangNavigationPopupOptions implements HCOption {
  const HCLangNavigationPopupOptions({
    this.addButton,
    this.algorithm,
    this.arrowInfinityLine,
    this.arrowRay,
    this.arrowSegment,
    this.average,
    this.background,
    this.backgroundColor,
    this.backgroundColors,
    this.borderColor,
    this.borderRadius,
    this.borderWidth,
    this.bottomBand,
    this.circle,
    this.clearFilter,
    this.color,
    this.connector,
    this.crooked3,
    this.crooked5,
    this.crosshairX,
    this.crosshairY,
    this.decimals,
    this.deviation,
    this.editButton,
    this.elliott3,
    this.elliott5,
    this.ellipse,
    this.factor,
    this.fastAvgPeriod,
    this.fibonacci,
    this.fibonacciTimeZones,
    this.fill,
    this.flags,
    this.fontSize,
    this.format,
    this.height,
    this.highIndex,
    this.horizontalLine,
    this.increment,
    this.index,
    this.indicatorAliases,
    this.infinityLine,
    this.initialAccelerationFactor,
    this.innerBackground,
    this.label,
    this.labelOptions,
    this.labels,
    this.line,
    this.lines,
    this.longPeriod,
    this.lowIndex,
    this.maxAccelerationFactor,
    this.measure,
    this.measureX,
    this.measureXY,
    this.measureY,
    this.multiplier,
    this.multiplierATR,
    this.name,
    this.noFilterMatch,
    this.outerBackground,
    this.padding,
    this.parallelChannel,
    this.period,
    this.periodATR,
    this.periods,
    this.periodSenkouSpanB,
    this.periodTenkan,
    this.pitchfork,
    this.ranges,
    this.ray,
    this.rectangle,
    this.removeButton,
    this.saveButton,
    this.searchIndicators,
    this.segment,
    this.series,
    this.shapeOptions,
    this.shapes,
    this.shortPeriod,
    this.signalPeriod,
    this.simpleShapes,
    this.slowAvgPeriod,
    this.standardDeviation,
    this.stroke,
    this.strokeWidth,
    this.style,
    this.timeCycles,
    this.title,
    this.topBand,
    this.tunnel,
    this.typeOptions,
    this.verticalArrow,
    this.verticalCounter,
    this.verticalLabel,
    this.verticalLine,
    this.volume,
    this.xAxisUnit,
  });

  final String? addButton;

  final String? algorithm;

  final String? arrowInfinityLine;

  final String? arrowRay;

  final String? arrowSegment;

  final String? average;

  final String? background;

  final String? backgroundColor;

  final String? backgroundColors;

  final String? borderColor;

  final String? borderRadius;

  final String? borderWidth;

  final String? bottomBand;

  final String? circle;

  final String? clearFilter;

  final String? color;

  final String? connector;

  final String? crooked3;

  final String? crooked5;

  final String? crosshairX;

  final String? crosshairY;

  final String? decimals;

  final String? deviation;

  final String? editButton;

  final String? elliott3;

  final String? elliott5;

  final String? ellipse;

  final String? factor;

  final String? fastAvgPeriod;

  final String? fibonacci;

  final String? fibonacciTimeZones;

  final String? fill;

  final String? flags;

  final String? fontSize;

  final String? format;

  final String? height;

  final String? highIndex;

  final String? horizontalLine;

  final String? increment;

  final String? index;

  /// (Highstock) Configure the aliases for indicator names.
  final HCLangNavigationPopupIndicatorAliasesOptions? indicatorAliases;

  final String? infinityLine;

  final String? initialAccelerationFactor;

  final String? innerBackground;

  final String? label;

  final String? labelOptions;

  final String? labels;

  final String? line;

  final String? lines;

  final String? longPeriod;

  final String? lowIndex;

  final String? maxAccelerationFactor;

  final String? measure;

  final String? measureX;

  final String? measureXY;

  final String? measureY;

  final String? multiplier;

  final String? multiplierATR;

  final String? name;

  final String? noFilterMatch;

  final String? outerBackground;

  final String? padding;

  final String? parallelChannel;

  final String? period;

  final String? periodATR;

  final String? periods;

  final String? periodSenkouSpanB;

  final String? periodTenkan;

  final String? pitchfork;

  final String? ranges;

  final String? ray;

  final String? rectangle;

  final String? removeButton;

  final String? saveButton;

  final String? searchIndicators;

  final String? segment;

  final String? series;

  final String? shapeOptions;

  final String? shapes;

  final String? shortPeriod;

  final String? signalPeriod;

  final String? simpleShapes;

  final String? slowAvgPeriod;

  final String? standardDeviation;

  final String? stroke;

  final String? strokeWidth;

  final String? style;

  final String? timeCycles;

  final String? title;

  final String? topBand;

  final String? tunnel;

  final String? typeOptions;

  final String? verticalArrow;

  final String? verticalCounter;

  final String? verticalLabel;

  final String? verticalLine;

  final String? volume;

  final String? xAxisUnit;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (addButton != null) {
      json['addButton'] = addButton;
    }
    if (algorithm != null) {
      json['algorithm'] = algorithm;
    }
    if (arrowInfinityLine != null) {
      json['arrowInfinityLine'] = arrowInfinityLine;
    }
    if (arrowRay != null) {
      json['arrowRay'] = arrowRay;
    }
    if (arrowSegment != null) {
      json['arrowSegment'] = arrowSegment;
    }
    if (average != null) {
      json['average'] = average;
    }
    if (background != null) {
      json['background'] = background;
    }
    if (backgroundColor != null) {
      json['backgroundColor'] = backgroundColor;
    }
    if (backgroundColors != null) {
      json['backgroundColors'] = backgroundColors;
    }
    if (borderColor != null) {
      json['borderColor'] = borderColor;
    }
    if (borderRadius != null) {
      json['borderRadius'] = borderRadius;
    }
    if (borderWidth != null) {
      json['borderWidth'] = borderWidth;
    }
    if (bottomBand != null) {
      json['bottomBand'] = bottomBand;
    }
    if (circle != null) {
      json['circle'] = circle;
    }
    if (clearFilter != null) {
      json['clearFilter'] = clearFilter;
    }
    if (color != null) {
      json['color'] = color;
    }
    if (connector != null) {
      json['connector'] = connector;
    }
    if (crooked3 != null) {
      json['crooked3'] = crooked3;
    }
    if (crooked5 != null) {
      json['crooked5'] = crooked5;
    }
    if (crosshairX != null) {
      json['crosshairX'] = crosshairX;
    }
    if (crosshairY != null) {
      json['crosshairY'] = crosshairY;
    }
    if (decimals != null) {
      json['decimals'] = decimals;
    }
    if (deviation != null) {
      json['deviation'] = deviation;
    }
    if (editButton != null) {
      json['editButton'] = editButton;
    }
    if (elliott3 != null) {
      json['elliott3'] = elliott3;
    }
    if (elliott5 != null) {
      json['elliott5'] = elliott5;
    }
    if (ellipse != null) {
      json['ellipse'] = ellipse;
    }
    if (factor != null) {
      json['factor'] = factor;
    }
    if (fastAvgPeriod != null) {
      json['fastAvgPeriod'] = fastAvgPeriod;
    }
    if (fibonacci != null) {
      json['fibonacci'] = fibonacci;
    }
    if (fibonacciTimeZones != null) {
      json['fibonacciTimeZones'] = fibonacciTimeZones;
    }
    if (fill != null) {
      json['fill'] = fill;
    }
    if (flags != null) {
      json['flags'] = flags;
    }
    if (fontSize != null) {
      json['fontSize'] = fontSize;
    }
    if (format != null) {
      json['format'] = format;
    }
    if (height != null) {
      json['height'] = height;
    }
    if (highIndex != null) {
      json['highIndex'] = highIndex;
    }
    if (horizontalLine != null) {
      json['horizontalLine'] = horizontalLine;
    }
    if (increment != null) {
      json['increment'] = increment;
    }
    if (index != null) {
      json['index'] = index;
    }
    if (indicatorAliases != null) {
      json['indicatorAliases'] = indicatorAliases!.toJson();
    }
    if (infinityLine != null) {
      json['infinityLine'] = infinityLine;
    }
    if (initialAccelerationFactor != null) {
      json['initialAccelerationFactor'] = initialAccelerationFactor;
    }
    if (innerBackground != null) {
      json['innerBackground'] = innerBackground;
    }
    if (label != null) {
      json['label'] = label;
    }
    if (labelOptions != null) {
      json['labelOptions'] = labelOptions;
    }
    if (labels != null) {
      json['labels'] = labels;
    }
    if (line != null) {
      json['line'] = line;
    }
    if (lines != null) {
      json['lines'] = lines;
    }
    if (longPeriod != null) {
      json['longPeriod'] = longPeriod;
    }
    if (lowIndex != null) {
      json['lowIndex'] = lowIndex;
    }
    if (maxAccelerationFactor != null) {
      json['maxAccelerationFactor'] = maxAccelerationFactor;
    }
    if (measure != null) {
      json['measure'] = measure;
    }
    if (measureX != null) {
      json['measureX'] = measureX;
    }
    if (measureXY != null) {
      json['measureXY'] = measureXY;
    }
    if (measureY != null) {
      json['measureY'] = measureY;
    }
    if (multiplier != null) {
      json['multiplier'] = multiplier;
    }
    if (multiplierATR != null) {
      json['multiplierATR'] = multiplierATR;
    }
    if (name != null) {
      json['name'] = name;
    }
    if (noFilterMatch != null) {
      json['noFilterMatch'] = noFilterMatch;
    }
    if (outerBackground != null) {
      json['outerBackground'] = outerBackground;
    }
    if (padding != null) {
      json['padding'] = padding;
    }
    if (parallelChannel != null) {
      json['parallelChannel'] = parallelChannel;
    }
    if (period != null) {
      json['period'] = period;
    }
    if (periodATR != null) {
      json['periodATR'] = periodATR;
    }
    if (periods != null) {
      json['periods'] = periods;
    }
    if (periodSenkouSpanB != null) {
      json['periodSenkouSpanB'] = periodSenkouSpanB;
    }
    if (periodTenkan != null) {
      json['periodTenkan'] = periodTenkan;
    }
    if (pitchfork != null) {
      json['pitchfork'] = pitchfork;
    }
    if (ranges != null) {
      json['ranges'] = ranges;
    }
    if (ray != null) {
      json['ray'] = ray;
    }
    if (rectangle != null) {
      json['rectangle'] = rectangle;
    }
    if (removeButton != null) {
      json['removeButton'] = removeButton;
    }
    if (saveButton != null) {
      json['saveButton'] = saveButton;
    }
    if (searchIndicators != null) {
      json['searchIndicators'] = searchIndicators;
    }
    if (segment != null) {
      json['segment'] = segment;
    }
    if (series != null) {
      json['series'] = series;
    }
    if (shapeOptions != null) {
      json['shapeOptions'] = shapeOptions;
    }
    if (shapes != null) {
      json['shapes'] = shapes;
    }
    if (shortPeriod != null) {
      json['shortPeriod'] = shortPeriod;
    }
    if (signalPeriod != null) {
      json['signalPeriod'] = signalPeriod;
    }
    if (simpleShapes != null) {
      json['simpleShapes'] = simpleShapes;
    }
    if (slowAvgPeriod != null) {
      json['slowAvgPeriod'] = slowAvgPeriod;
    }
    if (standardDeviation != null) {
      json['standardDeviation'] = standardDeviation;
    }
    if (stroke != null) {
      json['stroke'] = stroke;
    }
    if (strokeWidth != null) {
      json['strokeWidth'] = strokeWidth;
    }
    if (style != null) {
      json['style'] = style;
    }
    if (timeCycles != null) {
      json['timeCycles'] = timeCycles;
    }
    if (title != null) {
      json['title'] = title;
    }
    if (topBand != null) {
      json['topBand'] = topBand;
    }
    if (tunnel != null) {
      json['tunnel'] = tunnel;
    }
    if (typeOptions != null) {
      json['typeOptions'] = typeOptions;
    }
    if (verticalArrow != null) {
      json['verticalArrow'] = verticalArrow;
    }
    if (verticalCounter != null) {
      json['verticalCounter'] = verticalCounter;
    }
    if (verticalLabel != null) {
      json['verticalLabel'] = verticalLabel;
    }
    if (verticalLine != null) {
      json['verticalLine'] = verticalLine;
    }
    if (volume != null) {
      json['volume'] = volume;
    }
    if (xAxisUnit != null) {
      json['xAxisUnit'] = xAxisUnit;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) An object containing language-related strings and settings. A typical setup uses `Highcharts.setOptions` to make the options apply to all charts in the same page. (see online documentation for example)
class HCLangOptions implements HCOption {
  const HCLangOptions({
    this.accessibility,
    this.chartTitle,
    this.contextButtonTitle,
    this.decimalPoint,
    this.downloadCSV,
    this.downloadJPEG,
    this.downloadMIDI,
    this.downloadPDF,
    this.downloadPNG,
    this.downloadSVG,
    this.downloadXLS,
    this.drillUpText,
    this.exitFullscreen,
    this.exportData,
    this.exportInProgress,
    this.hideData,
    this.invalidDate,
    this.loading,
    this.locale,
    this.mainBreadcrumb,
    this.months,
    this.navigation,
    this.noData,
    this.numericSymbolMagnitude,
    this.numericSymbols,
    this.pieSliceName,
    this.playAsSound,
    this.printChart,
    this.rangeSelector,
    this.rangeSelectorFrom,
    this.rangeSelectorTo,
    this.rangeSelectorZoom,
    this.resetZoom,
    this.resetZoomTitle,
    this.seriesName,
    this.shortMonths,
    this.shortWeekdays,
    this.stockTools,
    this.thousandsSep,
    this.viewData,
    this.viewFullscreen,
    this.weekdays,
    this.weekFrom,
    this.yAxisTitle,
    this.zoomIn,
    this.zoomOut,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Configure the accessibility strings in the chart. Requires the accessibility module to be loaded. For a description of the module and information on its features, see Highcharts Accessibility.
  final HCLangAccessibilityOptions? accessibility;

  /// (Highcharts, Highstock, Highmaps, Gantt) The default chart title.
  final String? chartTitle;

  /// (Highcharts, Highstock, Highmaps, Gantt) Exporting module menu. The tooltip title for the context menu holding print and export menu items.
  final String? contextButtonTitle;

  /// (Highcharts, Highstock, Highmaps, Gantt) The default decimal point used in the `Highcharts.numberFormat` method unless otherwise specified in the function arguments. Defaults to the locale decimal point as determined by `lang.locale`.
  final String? decimalPoint;

  /// (Highcharts, Highstock, Highmaps, Gantt) The text for the menu item.
  final String? downloadCSV;

  /// (Highcharts, Highstock, Highmaps, Gantt) Exporting module only. The text for the JPEG download menu item.
  final String? downloadJPEG;

  /// (Highcharts, Highstock, Highmaps, Gantt) The text for the MIDI download menu item in the export menu.
  final String? downloadMIDI;

  /// (Highcharts, Highstock, Highmaps, Gantt) Exporting module only. The text for the PDF download menu item.
  final String? downloadPDF;

  /// (Highcharts, Highstock, Highmaps, Gantt) Exporting module only. The text for the PNG download menu item.
  final String? downloadPNG;

  /// (Highcharts, Highstock, Highmaps, Gantt) Exporting module only. The text for the SVG download menu item.
  final String? downloadSVG;

  /// (Highcharts, Highstock, Highmaps, Gantt) The text for the menu item.
  final String? downloadXLS;

  /// (Highcharts, Highmaps) Drill up button is deprecated since Highcharts v9.3.2. Use drilldown.breadcrumbs instead.
  final dynamic drillUpText;

  /// (Highcharts, Highstock, Highmaps, Gantt) Exporting module only. The text for the menu item to exit the chart from full screen.
  final String? exitFullscreen;

  /// (Highcharts, Highstock, Highmaps, Gantt) The text for exported table.
  final HCLangExportDataOptions? exportData;

  /// (Highcharts, Highstock, Highmaps, Gantt) Text to show when export is in progress.
  final String? exportInProgress;

  /// (Highcharts, Highstock, Highmaps, Gantt) The text for the menu item.
  final String? hideData;

  /// (Highcharts, Highstock) What to show in a date field for invalid dates. Defaults to an empty string.
  final String? invalidDate;

  /// (Highcharts, Highstock, Highmaps, Gantt) The loading text that appears when the chart is set into the loading state following a call to `chart.showLoading`.
  final String? loading;

  /// (Highcharts, Highstock, Highmaps, Gantt) The browser locale to use for date and number formatting. The actual locale used for each chart is determined in three steps:
  final dynamic locale;

  /// (Highcharts, Highmaps) The text for the main breadcrumb.
  final String? mainBreadcrumb;

  /// (Highcharts, Highstock, Highmaps, Gantt) An array containing the months names. Corresponds to the `%B` format in `Highcharts.dateFormat()`. Defaults to 'undefined', meaning the default month names are used according to the `lang.locale` or browser settings.
  final List<String>? months;

  /// (Highcharts, Highstock) Configure the Popup strings in the chart. Requires the `annotations.js` or `annotations-advanced.src.js` module to be loaded.
  final HCLangNavigationOptions? navigation;

  /// (Highcharts, Highstock) The text to display when the chart contains no data.
  final String? noData;

  /// (Highcharts, Highstock, Highmaps, Gantt) The magnitude of numericSymbols replacements. Use 10000 for Japanese, Korean and various Chinese locales, which use symbols for 10^4, 10^8 and 10^12.
  final num? numericSymbolMagnitude;

  /// (Highcharts, Highstock, Highmaps, Gantt) Metric prefixes used to shorten high numbers in axis labels. Replacing any of the positions with `null` causes the full number to be written. Setting `numericSymbols` to `undefined` disables shortening altogether.
  final List<String>? numericSymbols;

  /// (Highcharts, Highstock, Highmaps, Gantt) The default name for a pie slice (point).
  final String? pieSliceName;

  /// (Highcharts, Highstock, Highmaps, Gantt) The text for the Play as sound menu item in the export menu.
  final String? playAsSound;

  /// (Highcharts, Highstock, Highmaps, Gantt) Exporting module only. The text for the menu item to print the chart.
  final String? printChart;

  /// (Highcharts, Highstock, Highmaps, Gantt) The default text for the rangeselector buttons.
  final HCLangRangeSelectorOptions? rangeSelector;

  /// (Highstock, Gantt) The text for the label for the "from" input box in the range selector. Since v9.0, this string is empty as the label is not rendered by default.
  final String? rangeSelectorFrom;

  /// (Highstock, Gantt) The text for the label for the "to" input box in the range selector.
  final String? rangeSelectorTo;

  /// (Highstock, Gantt) The text for the label for the range selector buttons.
  final String? rangeSelectorZoom;

  /// (Highcharts, Highstock, Highmaps, Gantt) The text for the label appearing when a chart is zoomed.
  final String? resetZoom;

  /// (Highcharts, Highstock, Highmaps, Gantt) The tooltip title for the label appearing when a chart is zoomed.
  final String? resetZoomTitle;

  /// (Highcharts, Highstock, Highmaps, Gantt) Format string for the default series name.
  final String? seriesName;

  /// (Highcharts, Highstock, Highmaps, Gantt) An array containing the months names in abbreviated form. Corresponds to the `%b` format in `Highcharts.dateFormat()`. Defaults to 'undefined', meaning the default short month names are used according to the `lang.locale` or browser settings.
  final List<String>? shortMonths;

  /// (Highcharts, Highstock, Highmaps, Gantt) Short week days, starting Sunday. Corresponds to the `%a` format in `Highcharts.dateFormat()`. Defaults to 'undefined', meaning the default short weekday names are used according to the `lang.locale` or browser settings.
  final List<String>? shortWeekdays;

  /// (Highstock) Configure the stockTools GUI titles(hints) in the chart. Requires the `stock-tools.js` module to be loaded.
  final HCLangStockToolsOptions? stockTools;

  /// (Highcharts, Highstock, Highmaps, Gantt) The default thousands separator used in the `Highcharts.numberFormat` method unless otherwise specified in the function arguments. Defaults to the locale thousands separator as determined by `lang.locale`.
  final String? thousandsSep;

  /// (Highcharts, Highstock, Highmaps, Gantt) The text for the menu item.
  final String? viewData;

  /// (Highcharts, Highstock, Highmaps, Gantt) Exporting module only. The text for the menu item to view the chart in full screen.
  final String? viewFullscreen;

  /// (Highcharts, Highstock, Highmaps, Gantt) An array containing the weekday names. Corresponds to the `%A` format in `Highcharts.dateFormat()`. Defaults to 'undefined', meaning the default weekday names are used according to the `lang.locale` or browser settings.
  final List<String>? weekdays;

  final String? weekFrom;

  /// (Highcharts, Highstock, Highmaps, Gantt) The default title of the Y axis
  final String? yAxisTitle;

  /// (Highmaps) The title appearing on hovering the zoom in button. The text itself defaults to "+" and can be changed in the button options.
  final String? zoomIn;

  /// (Highmaps) The title appearing on hovering the zoom out button. The text itself defaults to "-" and can be changed in the button options.
  final String? zoomOut;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (accessibility != null) {
      json['accessibility'] = accessibility!.toJson();
    }
    if (chartTitle != null) {
      json['chartTitle'] = chartTitle;
    }
    if (contextButtonTitle != null) {
      json['contextButtonTitle'] = contextButtonTitle;
    }
    if (decimalPoint != null) {
      json['decimalPoint'] = decimalPoint;
    }
    if (downloadCSV != null) {
      json['downloadCSV'] = downloadCSV;
    }
    if (downloadJPEG != null) {
      json['downloadJPEG'] = downloadJPEG;
    }
    if (downloadMIDI != null) {
      json['downloadMIDI'] = downloadMIDI;
    }
    if (downloadPDF != null) {
      json['downloadPDF'] = downloadPDF;
    }
    if (downloadPNG != null) {
      json['downloadPNG'] = downloadPNG;
    }
    if (downloadSVG != null) {
      json['downloadSVG'] = downloadSVG;
    }
    if (downloadXLS != null) {
      json['downloadXLS'] = downloadXLS;
    }
    if (drillUpText != null) {
      json['drillUpText'] = hcJsonValue(drillUpText);
    }
    if (exitFullscreen != null) {
      json['exitFullscreen'] = exitFullscreen;
    }
    if (exportData != null) {
      json['exportData'] = exportData!.toJson();
    }
    if (exportInProgress != null) {
      json['exportInProgress'] = exportInProgress;
    }
    if (hideData != null) {
      json['hideData'] = hideData;
    }
    if (invalidDate != null) {
      json['invalidDate'] = invalidDate;
    }
    if (loading != null) {
      json['loading'] = loading;
    }
    if (locale != null) {
      json['locale'] = hcJsonValue(locale);
    }
    if (mainBreadcrumb != null) {
      json['mainBreadcrumb'] = mainBreadcrumb;
    }
    if (months != null) {
      json['months'] = months;
    }
    if (navigation != null) {
      json['navigation'] = navigation!.toJson();
    }
    if (noData != null) {
      json['noData'] = noData;
    }
    if (numericSymbolMagnitude != null) {
      json['numericSymbolMagnitude'] = numericSymbolMagnitude;
    }
    if (numericSymbols != null) {
      json['numericSymbols'] = numericSymbols;
    }
    if (pieSliceName != null) {
      json['pieSliceName'] = pieSliceName;
    }
    if (playAsSound != null) {
      json['playAsSound'] = playAsSound;
    }
    if (printChart != null) {
      json['printChart'] = printChart;
    }
    if (rangeSelector != null) {
      json['rangeSelector'] = rangeSelector!.toJson();
    }
    if (rangeSelectorFrom != null) {
      json['rangeSelectorFrom'] = rangeSelectorFrom;
    }
    if (rangeSelectorTo != null) {
      json['rangeSelectorTo'] = rangeSelectorTo;
    }
    if (rangeSelectorZoom != null) {
      json['rangeSelectorZoom'] = rangeSelectorZoom;
    }
    if (resetZoom != null) {
      json['resetZoom'] = resetZoom;
    }
    if (resetZoomTitle != null) {
      json['resetZoomTitle'] = resetZoomTitle;
    }
    if (seriesName != null) {
      json['seriesName'] = seriesName;
    }
    if (shortMonths != null) {
      json['shortMonths'] = shortMonths;
    }
    if (shortWeekdays != null) {
      json['shortWeekdays'] = shortWeekdays;
    }
    if (stockTools != null) {
      json['stockTools'] = stockTools!.toJson();
    }
    if (thousandsSep != null) {
      json['thousandsSep'] = thousandsSep;
    }
    if (viewData != null) {
      json['viewData'] = viewData;
    }
    if (viewFullscreen != null) {
      json['viewFullscreen'] = viewFullscreen;
    }
    if (weekdays != null) {
      json['weekdays'] = weekdays;
    }
    if (weekFrom != null) {
      json['weekFrom'] = weekFrom;
    }
    if (yAxisTitle != null) {
      json['yAxisTitle'] = yAxisTitle;
    }
    if (zoomIn != null) {
      json['zoomIn'] = zoomIn;
    }
    if (zoomOut != null) {
      json['zoomOut'] = zoomOut;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) The default text for the rangeselector buttons.
class HCLangRangeSelectorOptions implements HCOption {
  const HCLangRangeSelectorOptions({
    this.allText,
    this.allTitle,
    this.monthText,
    this.monthTitle,
    this.yearText,
    this.yearTitle,
    this.ytdText,
    this.ytdTitle,
  });

  final String? allText;

  final String? allTitle;

  final String? monthText;

  final String? monthTitle;

  final String? yearText;

  final String? yearTitle;

  final String? ytdText;

  final String? ytdTitle;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (allText != null) {
      json['allText'] = allText;
    }
    if (allTitle != null) {
      json['allTitle'] = allTitle;
    }
    if (monthText != null) {
      json['monthText'] = monthText;
    }
    if (monthTitle != null) {
      json['monthTitle'] = monthTitle;
    }
    if (yearText != null) {
      json['yearText'] = yearText;
    }
    if (yearTitle != null) {
      json['yearTitle'] = yearTitle;
    }
    if (ytdText != null) {
      json['ytdText'] = ytdText;
    }
    if (ytdTitle != null) {
      json['ytdTitle'] = ytdTitle;
    }
    return json;
  }
}

class HCLangStockToolsGuiOptions implements HCOption {
  const HCLangStockToolsGuiOptions({
    this.advanced,
    this.arrowInfinityLine,
    this.arrowRay,
    this.arrowSegment,
    this.circle,
    this.crooked3,
    this.crooked5,
    this.crookedLines,
    this.currentPriceIndicator,
    this.elliott3,
    this.elliott5,
    this.ellipse,
    this.fibonacci,
    this.fibonacciTimeZones,
    this.flagCirclepin,
    this.flagDiamondpin,
    this.flags,
    this.flagSimplepin,
    this.flagSquarepin,
    this.fullScreen,
    this.horizontalLine,
    this.indicators,
    this.infinityLine,
    this.label,
    this.line,
    this.lines,
    this.measure,
    this.measureX,
    this.measureXY,
    this.measureY,
    this.parallelChannel,
    this.pitchfork,
    this.ray,
    this.rectangle,
    this.saveChart,
    this.segment,
    this.simpleShapes,
    this.timeCycles,
    this.toggleAnnotations,
    this.typeCandlestick,
    this.typeChange,
    this.typeHeikinAshi,
    this.typeHLC,
    this.typeHollowCandlestick,
    this.typeLine,
    this.typeOHLC,
    this.verticalArrow,
    this.verticalCounter,
    this.verticalLabel,
    this.verticalLabels,
    this.verticalLine,
    this.zoomChange,
    this.zoomX,
    this.zoomXY,
    this.zoomY,
  });

  final String? advanced;

  final String? arrowInfinityLine;

  final String? arrowRay;

  final String? arrowSegment;

  final String? circle;

  final String? crooked3;

  final String? crooked5;

  final String? crookedLines;

  final String? currentPriceIndicator;

  final String? elliott3;

  final String? elliott5;

  final String? ellipse;

  final String? fibonacci;

  final String? fibonacciTimeZones;

  final String? flagCirclepin;

  final String? flagDiamondpin;

  final String? flags;

  final String? flagSimplepin;

  final String? flagSquarepin;

  final String? fullScreen;

  final String? horizontalLine;

  final String? indicators;

  final String? infinityLine;

  final String? label;

  final String? line;

  final String? lines;

  final String? measure;

  final String? measureX;

  final String? measureXY;

  final String? measureY;

  final String? parallelChannel;

  final String? pitchfork;

  final String? ray;

  final String? rectangle;

  final String? saveChart;

  final String? segment;

  final String? simpleShapes;

  final String? timeCycles;

  final String? toggleAnnotations;

  final String? typeCandlestick;

  final String? typeChange;

  final String? typeHeikinAshi;

  final String? typeHLC;

  final String? typeHollowCandlestick;

  final String? typeLine;

  final String? typeOHLC;

  final String? verticalArrow;

  final String? verticalCounter;

  final String? verticalLabel;

  final String? verticalLabels;

  final String? verticalLine;

  final String? zoomChange;

  final String? zoomX;

  final String? zoomXY;

  final String? zoomY;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (advanced != null) {
      json['advanced'] = advanced;
    }
    if (arrowInfinityLine != null) {
      json['arrowInfinityLine'] = arrowInfinityLine;
    }
    if (arrowRay != null) {
      json['arrowRay'] = arrowRay;
    }
    if (arrowSegment != null) {
      json['arrowSegment'] = arrowSegment;
    }
    if (circle != null) {
      json['circle'] = circle;
    }
    if (crooked3 != null) {
      json['crooked3'] = crooked3;
    }
    if (crooked5 != null) {
      json['crooked5'] = crooked5;
    }
    if (crookedLines != null) {
      json['crookedLines'] = crookedLines;
    }
    if (currentPriceIndicator != null) {
      json['currentPriceIndicator'] = currentPriceIndicator;
    }
    if (elliott3 != null) {
      json['elliott3'] = elliott3;
    }
    if (elliott5 != null) {
      json['elliott5'] = elliott5;
    }
    if (ellipse != null) {
      json['ellipse'] = ellipse;
    }
    if (fibonacci != null) {
      json['fibonacci'] = fibonacci;
    }
    if (fibonacciTimeZones != null) {
      json['fibonacciTimeZones'] = fibonacciTimeZones;
    }
    if (flagCirclepin != null) {
      json['flagCirclepin'] = flagCirclepin;
    }
    if (flagDiamondpin != null) {
      json['flagDiamondpin'] = flagDiamondpin;
    }
    if (flags != null) {
      json['flags'] = flags;
    }
    if (flagSimplepin != null) {
      json['flagSimplepin'] = flagSimplepin;
    }
    if (flagSquarepin != null) {
      json['flagSquarepin'] = flagSquarepin;
    }
    if (fullScreen != null) {
      json['fullScreen'] = fullScreen;
    }
    if (horizontalLine != null) {
      json['horizontalLine'] = horizontalLine;
    }
    if (indicators != null) {
      json['indicators'] = indicators;
    }
    if (infinityLine != null) {
      json['infinityLine'] = infinityLine;
    }
    if (label != null) {
      json['label'] = label;
    }
    if (line != null) {
      json['line'] = line;
    }
    if (lines != null) {
      json['lines'] = lines;
    }
    if (measure != null) {
      json['measure'] = measure;
    }
    if (measureX != null) {
      json['measureX'] = measureX;
    }
    if (measureXY != null) {
      json['measureXY'] = measureXY;
    }
    if (measureY != null) {
      json['measureY'] = measureY;
    }
    if (parallelChannel != null) {
      json['parallelChannel'] = parallelChannel;
    }
    if (pitchfork != null) {
      json['pitchfork'] = pitchfork;
    }
    if (ray != null) {
      json['ray'] = ray;
    }
    if (rectangle != null) {
      json['rectangle'] = rectangle;
    }
    if (saveChart != null) {
      json['saveChart'] = saveChart;
    }
    if (segment != null) {
      json['segment'] = segment;
    }
    if (simpleShapes != null) {
      json['simpleShapes'] = simpleShapes;
    }
    if (timeCycles != null) {
      json['timeCycles'] = timeCycles;
    }
    if (toggleAnnotations != null) {
      json['toggleAnnotations'] = toggleAnnotations;
    }
    if (typeCandlestick != null) {
      json['typeCandlestick'] = typeCandlestick;
    }
    if (typeChange != null) {
      json['typeChange'] = typeChange;
    }
    if (typeHeikinAshi != null) {
      json['typeHeikinAshi'] = typeHeikinAshi;
    }
    if (typeHLC != null) {
      json['typeHLC'] = typeHLC;
    }
    if (typeHollowCandlestick != null) {
      json['typeHollowCandlestick'] = typeHollowCandlestick;
    }
    if (typeLine != null) {
      json['typeLine'] = typeLine;
    }
    if (typeOHLC != null) {
      json['typeOHLC'] = typeOHLC;
    }
    if (verticalArrow != null) {
      json['verticalArrow'] = verticalArrow;
    }
    if (verticalCounter != null) {
      json['verticalCounter'] = verticalCounter;
    }
    if (verticalLabel != null) {
      json['verticalLabel'] = verticalLabel;
    }
    if (verticalLabels != null) {
      json['verticalLabels'] = verticalLabels;
    }
    if (verticalLine != null) {
      json['verticalLine'] = verticalLine;
    }
    if (zoomChange != null) {
      json['zoomChange'] = zoomChange;
    }
    if (zoomX != null) {
      json['zoomX'] = zoomX;
    }
    if (zoomXY != null) {
      json['zoomXY'] = zoomXY;
    }
    if (zoomY != null) {
      json['zoomY'] = zoomY;
    }
    return json;
  }
}

/// (Highstock) Configure the stockTools GUI titles(hints) in the chart. Requires the `stock-tools.js` module to be loaded.
class HCLangStockToolsOptions implements HCOption {
  const HCLangStockToolsOptions({
    this.gui,
  });

  final HCLangStockToolsGuiOptions? gui;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (gui != null) {
      json['gui'] = gui!.toJson();
    }
    return json;
  }
}
