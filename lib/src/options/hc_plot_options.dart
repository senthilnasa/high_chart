part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) The plotOptions is a wrapper object
class HCPlotOptions implements HCOption {
  const HCPlotOptions({
    this.abands,
    this.ad,
    this.ao,
    this.apo,
    this.arcdiagram,
    this.area,
    this.arearange,
    this.areaspline,
    this.areasplinerange,
    this.aroon,
    this.aroonoscillator,
    this.atr,
    this.bar,
    this.bb,
    this.bellcurve,
    this.boxplot,
    this.bubble,
    this.bullet,
    this.candlestick,
    this.cci,
    this.chaikin,
    this.cmf,
    this.cmo,
    this.column,
    this.columnpyramid,
    this.columnrange,
    this.contour,
    this.cylinder,
    this.dema,
    this.dependencywheel,
    this.disparityindex,
    this.dmi,
    this.dpo,
    this.dumbbell,
    this.ema,
    this.errorbar,
    this.flags,
    this.flowmap,
    this.funnel,
    this.funnel3d,
    this.gantt,
    this.gauge,
    this.geoheatmap,
    this.heatmap,
    this.heikinashi,
    this.histogram,
    this.hlc,
    this.hollowcandlestick,
    this.ikh,
    this.item,
    this.keltnerchannels,
    this.klinger,
    this.line,
    this.linearregression,
    this.linearregressionangle,
    this.linearregressionintercept,
    this.linearregressionslope,
    this.lollipop,
    this.macd,
    this.map,
    this.mapbubble,
    this.mapline,
    this.mappoint,
    this.mfi,
    this.momentum,
    this.natr,
    this.networkgraph,
    this.obv,
    this.ohlc,
    this.organization,
    this.packedbubble,
    this.pareto,
    this.pc,
    this.pictorial,
    this.pie,
    this.pivotpoints,
    this.pointandfigure,
    this.polygon,
    this.ppo,
    this.priceenvelopes,
    this.psar,
    this.pyramid,
    this.pyramid3d,
    this.renko,
    this.roc,
    this.rsi,
    this.sankey,
    this.scatter,
    this.scatter3d,
    this.series,
    this.slowstochastic,
    this.sma,
    this.solidgauge,
    this.spline,
    this.stochastic,
    this.streamgraph,
    this.sunburst,
    this.supertrend,
    this.tema,
    this.tiledwebmap,
    this.tilemap,
    this.timeline,
    this.treegraph,
    this.treemap,
    this.trendline,
    this.trix,
    this.variablepie,
    this.variwide,
    this.vbp,
    this.vector,
    this.venn,
    this.vwap,
    this.waterfall,
    this.williamsr,
    this.windbarb,
    this.wma,
    this.wordcloud,
    this.xrange,
    this.zigzag,
  });

  /// (Highstock) Acceleration bands (ABANDS). This series requires the
  final HCPlotAbandsOptions? abands;

  /// (Highstock) Accumulation Distribution (AD). This series requires
  final HCPlotAdOptions? ad;

  /// (Highstock) Awesome Oscillator. This series requires the `linkedTo`
  final HCPlotAoOptions? ao;

  /// (Highstock) Absolute Price Oscillator. This series requires the
  final HCPlotApoOptions? apo;

  /// (Highcharts) Arc diagram series is a chart drawing style in which the
  final HCPlotArcdiagramOptions? arcdiagram;

  /// (Highcharts, Highstock) The area series type.
  final HCPlotAreaOptions? area;

  /// (Highcharts, Highstock) The area range series is a cartesian series with
  final HCPlotArearangeOptions? arearange;

  /// (Highcharts, Highstock) The area spline series is an area series where
  final HCPlotAreasplineOptions? areaspline;

  /// (Highcharts, Highstock) The area spline range is a cartesian series type
  final HCPlotAreasplinerangeOptions? areasplinerange;

  /// (Highstock) Aroon. This series requires the `linkedTo` option to be set
  final HCPlotAroonOptions? aroon;

  /// (Highstock) Aroon Oscillator. This series requires the `linkedTo` option
  final HCPlotAroonoscillatorOptions? aroonoscillator;

  /// (Highstock) Average true range indicator (ATR). This series requires
  final HCPlotAtrOptions? atr;

  /// (Highcharts) A bar series is a special type of column series where the
  final HCPlotBarOptions? bar;

  /// (Highstock) Bollinger bands (BB). This series requires the `linkedTo`
  final HCPlotBbOptions? bb;

  /// (Highcharts) A bell curve is an areaspline series which represents the
  final HCPlotBellcurveOptions? bellcurve;

  /// (Highcharts) A box plot is a convenient way of depicting groups of data
  final HCPlotBoxplotOptions? boxplot;

  /// (Highcharts, Highstock) A bubble series is a three dimensional series
  final HCPlotBubbleOptions? bubble;

  /// (Highcharts) A bullet graph is a variation of a bar graph. The bullet
  final HCPlotBulletOptions? bullet;

  /// (Highstock) A candlestick chart is a style of financial chart used to
  final HCPlotCandlestickOptions? candlestick;

  /// (Highstock) Commodity Channel Index (CCI). This series requires
  final HCPlotCciOptions? cci;

  /// (Highstock) Chaikin Oscillator. This series requires the `linkedTo`
  final HCPlotChaikinOptions? chaikin;

  /// (Highstock) Chaikin Money Flow indicator (cmf).
  final HCPlotCmfOptions? cmf;

  /// (Highstock) Chande Momentum Oscillator (CMO) technical indicator. This
  final HCPlotCmoOptions? cmo;

  /// (Highcharts, Highstock) Column series display one column per value along
  final HCPlotColumnOptions? column;

  /// (Highcharts, Highstock) Column pyramid series display one pyramid per
  final HCPlotColumnpyramidOptions? columnpyramid;

  /// (Highcharts, Highstock) The column range is a cartesian series type with
  final HCPlotColumnrangeOptions? columnrange;

  /// (Highcharts, Highmaps) A contour plot is a graphical representation of
  final HCPlotContourOptions? contour;

  /// (Highcharts) A cylinder graph is a variation of a 3d column graph. The
  final HCPlotCylinderOptions? cylinder;

  /// (Highstock) Double exponential moving average (DEMA) indicator. This
  final HCPlotDemaOptions? dema;

  /// (Highcharts) A dependency wheel chart is a type of flow diagram, where
  final HCPlotDependencywheelOptions? dependencywheel;

  /// (Highstock) Disparity Index. This series requires the `linkedTo` option
  final HCPlotDisparityindexOptions? disparityindex;

  /// (Highstock) Directional Movement Index (DMI). This series requires the
  final HCPlotDmiOptions? dmi;

  /// (Highstock) Detrended Price Oscillator. This series requires the
  final HCPlotDpoOptions? dpo;

  /// (Highcharts, Highstock) The dumbbell series is a cartesian series with
  final HCPlotDumbbellOptions? dumbbell;

  /// (Highstock) Exponential moving average indicator (EMA). This series
  final HCPlotEmaOptions? ema;

  /// (Highcharts) Error bars are a graphical representation of the variability
  final HCPlotErrorbarOptions? errorbar;

  /// (Highstock) Flags are used to mark events in stock charts. They can be
  final HCPlotFlagsOptions? flags;

  /// (Highmaps) A flowmap series is a series laid out on top of a map series
  final HCPlotFlowmapOptions? flowmap;

  /// (Highcharts) Funnel charts are a type of chart often used to visualize
  final HCPlotFunnelOptions? funnel;

  /// (Highcharts) A funnel3d is a 3d version of funnel series type. Funnel
  final HCPlotFunnel3dOptions? funnel3d;

  /// (Gantt) A `gantt` series. If the type option is not specified, it is
  final HCPlotGanttOptions? gantt;

  /// (Highcharts) Gauges are circular plots displaying one or more values with
  final HCPlotGaugeOptions? gauge;

  /// (Highmaps) A `geoheatmap` series is a variety of heatmap series, composed
  final HCPlotGeoheatmapOptions? geoheatmap;

  /// (Highcharts, Highmaps) A heatmap is a graphical representation of data
  final HCPlotHeatmapOptions? heatmap;

  /// (Highstock) An HeikinAshi series is a style of financial chart used to
  final HCPlotHeikinashiOptions? heikinashi;

  /// (Highcharts) A histogram is a column series which represents the
  final HCPlotHistogramOptions? histogram;

  /// (Highstock) An HLC chart is a style of financial chart used to describe
  final HCPlotHlcOptions? hlc;

  /// (Highstock) A hollow candlestick chart is a style of financial chart used
  final HCPlotHollowcandlestickOptions? hollowcandlestick;

  /// (Highstock) Ichimoku Kinko Hyo (IKH). This series requires `linkedTo`
  final HCPlotIkhOptions? ikh;

  /// (Highcharts) An item chart is an infographic chart where a number of
  final HCPlotItemOptions? item;

  /// (Highstock) Keltner Channels. This series requires the `linkedTo` option
  final HCPlotKeltnerchannelsOptions? keltnerchannels;

  /// (Highstock) Klinger oscillator. This series requires the `linkedTo`
  final HCPlotKlingerOptions? klinger;

  /// (Highcharts, Highstock) A line series displays information as a series of
  final HCPlotLineOptions? line;

  /// (Highstock) Linear regression indicator. This series requires `linkedTo`
  final HCPlotLinearregressionOptions? linearregression;

  /// (Highstock) Linear regression angle indicator. This series requires
  final HCPlotLinearregressionangleOptions? linearregressionangle;

  /// (Highstock) Linear regression intercept indicator. This series requires
  final HCPlotLinearregressioninterceptOptions? linearregressionintercept;

  /// (Highstock) Linear regression slope indicator. This series requires
  final HCPlotLinearregressionslopeOptions? linearregressionslope;

  /// (Highcharts, Highstock) The lollipop series is a cartesian series with a
  final HCPlotLollipopOptions? lollipop;

  /// (Highstock) Moving Average Convergence Divergence (MACD). This series
  final HCPlotMacdOptions? macd;

  /// (Highmaps) The map series is used for basic choropleth maps, where each
  final HCPlotMapOptions? map;

  /// (Highmaps) A map bubble series is a bubble series laid out on top of a
  final HCPlotMapbubbleOptions? mapbubble;

  /// (Highmaps) A mapline series is a special case of the map series where the
  final HCPlotMaplineOptions? mapline;

  /// (Highmaps) A mappoint series is a special form of scatter series where
  final dynamic mappoint;

  /// (Highstock) Money Flow Index. This series requires `linkedTo` option to
  final HCPlotMfiOptions? mfi;

  /// (Highstock) Momentum. This series requires `linkedTo` option to be set.
  final HCPlotMomentumOptions? momentum;

  /// (Highstock) Normalized average true range indicator (NATR). This series
  final HCPlotNatrOptions? natr;

  /// (Highcharts) A networkgraph is a type of relationship chart, where
  final HCPlotNetworkgraphOptions? networkgraph;

  /// (Highstock) On-Balance Volume (OBV) technical indicator. This series
  final HCPlotObvOptions? obv;

  /// (Highstock) An OHLC chart is a style of financial chart used to describe
  final HCPlotOhlcOptions? ohlc;

  /// (Highcharts) An organization chart is a diagram that shows the structure
  final HCPlotOrganizationOptions? organization;

  /// (Highcharts) A packed bubble series is a two dimensional series type,
  final HCPlotPackedbubbleOptions? packedbubble;

  /// (Highcharts) A pareto diagram is a type of chart that contains both bars
  final HCPlotParetoOptions? pareto;

  /// (Highstock) Price channel (PC). This series requires the `linkedTo`
  final HCPlotPcOptions? pc;

  /// (Highcharts) A pictorial chart uses vector images to represents the data.
  final HCPlotPictorialOptions? pictorial;

  /// (Highcharts, Highmaps) A pie chart is a circular graphic which is divided
  final HCPlotPieOptions? pie;

  /// (Highstock) Pivot points indicator. This series requires the `linkedTo`
  final HCPlotPivotpointsOptions? pivotpoints;

  /// (Highstock) The Point and Figure series represents changes in stock price
  final HCPlotPointandfigureOptions? pointandfigure;

  /// (Highcharts, Highstock) A polygon series can be used to draw any freeform
  final HCPlotPolygonOptions? polygon;

  /// (Highstock) Percentage Price Oscillator. This series requires the
  final HCPlotPpoOptions? ppo;

  /// (Highstock) Price envelopes indicator based on SMA calculations. This
  final HCPlotPriceenvelopesOptions? priceenvelopes;

  /// (Highstock) Parabolic SAR. This series requires `linkedTo` option to be
  final HCPlotPsarOptions? psar;

  /// (Highcharts) A pyramid series is a special type of funnel, without neck
  final HCPlotPyramidOptions? pyramid;

  /// (Highcharts) A pyramid3d is a 3d version of pyramid series type. Pyramid
  final HCPlotPyramid3dOptions? pyramid3d;

  /// (Highstock) A Renko series is a style of financial chart used to describe
  final HCPlotRenkoOptions? renko;

  /// (Highstock) Rate of change indicator (ROC). The indicator value for each
  final HCPlotRocOptions? roc;

  /// (Highstock) Relative strength index (RSI) technical indicator. This
  final HCPlotRsiOptions? rsi;

  /// (Highcharts) A sankey diagram is a type of flow diagram, in which the
  final HCPlotSankeyOptions? sankey;

  /// (Highcharts, Highstock) A scatter plot uses cartesian coordinates to
  final HCPlotScatterOptions? scatter;

  /// (Highcharts) A 3D scatter plot uses x, y and z coordinates to display
  final HCPlotScatter3dOptions? scatter3d;

  /// (Highcharts, Highstock, Highmaps, Gantt) General options for all series
  final HCPlotSeriesOptions? series;

  /// (Highstock) Slow Stochastic oscillator. This series requires the
  final HCPlotSlowstochasticOptions? slowstochastic;

  /// (Highstock) Simple moving average indicator (SMA). This series requires
  final HCPlotSmaOptions? sma;

  /// (Highcharts) A solid gauge is a circular gauge where the value is
  final HCPlotSolidgaugeOptions? solidgauge;

  /// (Highcharts, Highstock) A spline series is a special type of line series,
  final HCPlotSplineOptions? spline;

  /// (Highstock) Stochastic oscillator. This series requires the `linkedTo`
  final HCPlotStochasticOptions? stochastic;

  /// (Highcharts, Highstock) A streamgraph is a type of stacked area graph
  final HCPlotStreamgraphOptions? streamgraph;

  /// (Highcharts) A Sunburst displays hierarchical data, where a level in the
  final HCPlotSunburstOptions? sunburst;

  /// (Highstock) Supertrend indicator. This series requires the `linkedTo`
  final HCPlotSupertrendOptions? supertrend;

  /// (Highstock) Triple exponential moving average (TEMA) indicator. This
  final HCPlotTemaOptions? tema;

  /// (Highmaps) A tiledwebmap series allows user to display dynamically joined
  final HCPlotTiledwebmapOptions? tiledwebmap;

  /// (Highcharts, Highmaps) A tilemap series is a type of heatmap where the
  final HCPlotTilemapOptions? tilemap;

  /// (Highcharts) The timeline series presents given events along a drawn
  final HCPlotTimelineOptions? timeline;

  /// (Highcharts) A treegraph series is a diagram, which shows a relation
  final HCPlotTreegraphOptions? treegraph;

  /// (Highcharts) A treemap displays hierarchical data using nested
  final HCPlotTreemapOptions? treemap;

  /// (Highstock) Trendline (linear regression) fits a straight line to the
  final HCPlotTrendlineOptions? trendline;

  /// (Highstock) Triple exponential average (TRIX) oscillator. This series
  final HCPlotTrixOptions? trix;

  /// (Highcharts) A variable pie series is a two dimensional series type,
  final HCPlotVariablepieOptions? variablepie;

  /// (Highcharts) A variwide chart (related to marimekko chart) is a column
  final HCPlotVariwideOptions? variwide;

  /// (Highstock) Volume By Price indicator.
  final HCPlotVbpOptions? vbp;

  /// (Highcharts, Highstock) A vector plot is a type of cartesian chart where
  final HCPlotVectorOptions? vector;

  /// (Highcharts) A Venn diagram displays all possible logical relations
  final HCPlotVennOptions? venn;

  /// (Highstock) Volume Weighted Average Price indicator.
  final HCPlotVwapOptions? vwap;

  /// (Highcharts) A waterfall chart displays sequentially introduced positive
  final HCPlotWaterfallOptions? waterfall;

  /// (Highstock) Williams %R. This series requires the `linkedTo` option to be
  final HCPlotWilliamsrOptions? williamsr;

  /// (Highcharts, Highstock) Wind barbs are a convenient way to represent wind
  final HCPlotWindbarbOptions? windbarb;

  /// (Highstock) Weighted moving average indicator (WMA). This series requires
  final HCPlotWmaOptions? wma;

  /// (Highcharts) A word cloud is a visualization of a set of words, where the
  final HCPlotWordcloudOptions? wordcloud;

  /// (Highcharts, Highstock, Gantt) The X-range series displays ranges on the
  final HCPlotXrangeOptions? xrange;

  /// (Highstock) Zig Zag indicator.
  final HCPlotZigzagOptions? zigzag;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (abands != null) {
      json["abands"] = abands!.toJson();
    }
    if (ad != null) {
      json["ad"] = ad!.toJson();
    }
    if (ao != null) {
      json["ao"] = ao!.toJson();
    }
    if (apo != null) {
      json["apo"] = apo!.toJson();
    }
    if (arcdiagram != null) {
      json["arcdiagram"] = arcdiagram!.toJson();
    }
    if (area != null) {
      json["area"] = area!.toJson();
    }
    if (arearange != null) {
      json["arearange"] = arearange!.toJson();
    }
    if (areaspline != null) {
      json["areaspline"] = areaspline!.toJson();
    }
    if (areasplinerange != null) {
      json["areasplinerange"] = areasplinerange!.toJson();
    }
    if (aroon != null) {
      json["aroon"] = aroon!.toJson();
    }
    if (aroonoscillator != null) {
      json["aroonoscillator"] = aroonoscillator!.toJson();
    }
    if (atr != null) {
      json["atr"] = atr!.toJson();
    }
    if (bar != null) {
      json["bar"] = bar!.toJson();
    }
    if (bb != null) {
      json["bb"] = bb!.toJson();
    }
    if (bellcurve != null) {
      json["bellcurve"] = bellcurve!.toJson();
    }
    if (boxplot != null) {
      json["boxplot"] = boxplot!.toJson();
    }
    if (bubble != null) {
      json["bubble"] = bubble!.toJson();
    }
    if (bullet != null) {
      json["bullet"] = bullet!.toJson();
    }
    if (candlestick != null) {
      json["candlestick"] = candlestick!.toJson();
    }
    if (cci != null) {
      json["cci"] = cci!.toJson();
    }
    if (chaikin != null) {
      json["chaikin"] = chaikin!.toJson();
    }
    if (cmf != null) {
      json["cmf"] = cmf!.toJson();
    }
    if (cmo != null) {
      json["cmo"] = cmo!.toJson();
    }
    if (column != null) {
      json["column"] = column!.toJson();
    }
    if (columnpyramid != null) {
      json["columnpyramid"] = columnpyramid!.toJson();
    }
    if (columnrange != null) {
      json["columnrange"] = columnrange!.toJson();
    }
    if (contour != null) {
      json["contour"] = contour!.toJson();
    }
    if (cylinder != null) {
      json["cylinder"] = cylinder!.toJson();
    }
    if (dema != null) {
      json["dema"] = dema!.toJson();
    }
    if (dependencywheel != null) {
      json["dependencywheel"] = dependencywheel!.toJson();
    }
    if (disparityindex != null) {
      json["disparityindex"] = disparityindex!.toJson();
    }
    if (dmi != null) {
      json["dmi"] = dmi!.toJson();
    }
    if (dpo != null) {
      json["dpo"] = dpo!.toJson();
    }
    if (dumbbell != null) {
      json["dumbbell"] = dumbbell!.toJson();
    }
    if (ema != null) {
      json["ema"] = ema!.toJson();
    }
    if (errorbar != null) {
      json["errorbar"] = errorbar!.toJson();
    }
    if (flags != null) {
      json["flags"] = flags!.toJson();
    }
    if (flowmap != null) {
      json["flowmap"] = flowmap!.toJson();
    }
    if (funnel != null) {
      json["funnel"] = funnel!.toJson();
    }
    if (funnel3d != null) {
      json["funnel3d"] = funnel3d!.toJson();
    }
    if (gantt != null) {
      json["gantt"] = gantt!.toJson();
    }
    if (gauge != null) {
      json["gauge"] = gauge!.toJson();
    }
    if (geoheatmap != null) {
      json["geoheatmap"] = geoheatmap!.toJson();
    }
    if (heatmap != null) {
      json["heatmap"] = heatmap!.toJson();
    }
    if (heikinashi != null) {
      json["heikinashi"] = heikinashi!.toJson();
    }
    if (histogram != null) {
      json["histogram"] = histogram!.toJson();
    }
    if (hlc != null) {
      json["hlc"] = hlc!.toJson();
    }
    if (hollowcandlestick != null) {
      json["hollowcandlestick"] = hollowcandlestick!.toJson();
    }
    if (ikh != null) {
      json["ikh"] = ikh!.toJson();
    }
    if (item != null) {
      json["item"] = item!.toJson();
    }
    if (keltnerchannels != null) {
      json["keltnerchannels"] = keltnerchannels!.toJson();
    }
    if (klinger != null) {
      json["klinger"] = klinger!.toJson();
    }
    if (line != null) {
      json["line"] = line!.toJson();
    }
    if (linearregression != null) {
      json["linearregression"] = linearregression!.toJson();
    }
    if (linearregressionangle != null) {
      json["linearregressionangle"] = linearregressionangle!.toJson();
    }
    if (linearregressionintercept != null) {
      json["linearregressionintercept"] = linearregressionintercept!.toJson();
    }
    if (linearregressionslope != null) {
      json["linearregressionslope"] = linearregressionslope!.toJson();
    }
    if (lollipop != null) {
      json["lollipop"] = lollipop!.toJson();
    }
    if (macd != null) {
      json["macd"] = macd!.toJson();
    }
    if (map != null) {
      json["map"] = map!.toJson();
    }
    if (mapbubble != null) {
      json["mapbubble"] = mapbubble!.toJson();
    }
    if (mapline != null) {
      json["mapline"] = mapline!.toJson();
    }
    if (mappoint != null) {
      json["mappoint"] = hcJsonValue(mappoint);
    }
    if (mfi != null) {
      json["mfi"] = mfi!.toJson();
    }
    if (momentum != null) {
      json["momentum"] = momentum!.toJson();
    }
    if (natr != null) {
      json["natr"] = natr!.toJson();
    }
    if (networkgraph != null) {
      json["networkgraph"] = networkgraph!.toJson();
    }
    if (obv != null) {
      json["obv"] = obv!.toJson();
    }
    if (ohlc != null) {
      json["ohlc"] = ohlc!.toJson();
    }
    if (organization != null) {
      json["organization"] = organization!.toJson();
    }
    if (packedbubble != null) {
      json["packedbubble"] = packedbubble!.toJson();
    }
    if (pareto != null) {
      json["pareto"] = pareto!.toJson();
    }
    if (pc != null) {
      json["pc"] = pc!.toJson();
    }
    if (pictorial != null) {
      json["pictorial"] = pictorial!.toJson();
    }
    if (pie != null) {
      json["pie"] = pie!.toJson();
    }
    if (pivotpoints != null) {
      json["pivotpoints"] = pivotpoints!.toJson();
    }
    if (pointandfigure != null) {
      json["pointandfigure"] = pointandfigure!.toJson();
    }
    if (polygon != null) {
      json["polygon"] = polygon!.toJson();
    }
    if (ppo != null) {
      json["ppo"] = ppo!.toJson();
    }
    if (priceenvelopes != null) {
      json["priceenvelopes"] = priceenvelopes!.toJson();
    }
    if (psar != null) {
      json["psar"] = psar!.toJson();
    }
    if (pyramid != null) {
      json["pyramid"] = pyramid!.toJson();
    }
    if (pyramid3d != null) {
      json["pyramid3d"] = pyramid3d!.toJson();
    }
    if (renko != null) {
      json["renko"] = renko!.toJson();
    }
    if (roc != null) {
      json["roc"] = roc!.toJson();
    }
    if (rsi != null) {
      json["rsi"] = rsi!.toJson();
    }
    if (sankey != null) {
      json["sankey"] = sankey!.toJson();
    }
    if (scatter != null) {
      json["scatter"] = scatter!.toJson();
    }
    if (scatter3d != null) {
      json["scatter3d"] = scatter3d!.toJson();
    }
    if (series != null) {
      json["series"] = series!.toJson();
    }
    if (slowstochastic != null) {
      json["slowstochastic"] = slowstochastic!.toJson();
    }
    if (sma != null) {
      json["sma"] = sma!.toJson();
    }
    if (solidgauge != null) {
      json["solidgauge"] = solidgauge!.toJson();
    }
    if (spline != null) {
      json["spline"] = spline!.toJson();
    }
    if (stochastic != null) {
      json["stochastic"] = stochastic!.toJson();
    }
    if (streamgraph != null) {
      json["streamgraph"] = streamgraph!.toJson();
    }
    if (sunburst != null) {
      json["sunburst"] = sunburst!.toJson();
    }
    if (supertrend != null) {
      json["supertrend"] = supertrend!.toJson();
    }
    if (tema != null) {
      json["tema"] = tema!.toJson();
    }
    if (tiledwebmap != null) {
      json["tiledwebmap"] = tiledwebmap!.toJson();
    }
    if (tilemap != null) {
      json["tilemap"] = tilemap!.toJson();
    }
    if (timeline != null) {
      json["timeline"] = timeline!.toJson();
    }
    if (treegraph != null) {
      json["treegraph"] = treegraph!.toJson();
    }
    if (treemap != null) {
      json["treemap"] = treemap!.toJson();
    }
    if (trendline != null) {
      json["trendline"] = trendline!.toJson();
    }
    if (trix != null) {
      json["trix"] = trix!.toJson();
    }
    if (variablepie != null) {
      json["variablepie"] = variablepie!.toJson();
    }
    if (variwide != null) {
      json["variwide"] = variwide!.toJson();
    }
    if (vbp != null) {
      json["vbp"] = vbp!.toJson();
    }
    if (vector != null) {
      json["vector"] = vector!.toJson();
    }
    if (venn != null) {
      json["venn"] = venn!.toJson();
    }
    if (vwap != null) {
      json["vwap"] = vwap!.toJson();
    }
    if (waterfall != null) {
      json["waterfall"] = waterfall!.toJson();
    }
    if (williamsr != null) {
      json["williamsr"] = williamsr!.toJson();
    }
    if (windbarb != null) {
      json["windbarb"] = windbarb!.toJson();
    }
    if (wma != null) {
      json["wma"] = wma!.toJson();
    }
    if (wordcloud != null) {
      json["wordcloud"] = wordcloud!.toJson();
    }
    if (xrange != null) {
      json["xrange"] = xrange!.toJson();
    }
    if (zigzag != null) {
      json["zigzag"] = zigzag!.toJson();
    }
    return json;
  }
}
