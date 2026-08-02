part of 'hc_options.dart';

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
      json["abands"] = abands;
    }
    if (ad != null) {
      json["ad"] = ad;
    }
    if (ao != null) {
      json["ao"] = ao;
    }
    if (apo != null) {
      json["apo"] = apo;
    }
    if (aroon != null) {
      json["aroon"] = aroon;
    }
    if (aroonoscillator != null) {
      json["aroonoscillator"] = aroonoscillator;
    }
    if (atr != null) {
      json["atr"] = atr;
    }
    if (bb != null) {
      json["bb"] = bb;
    }
    if (cci != null) {
      json["cci"] = cci;
    }
    if (chaikin != null) {
      json["chaikin"] = chaikin;
    }
    if (cmf != null) {
      json["cmf"] = cmf;
    }
    if (cmo != null) {
      json["cmo"] = cmo;
    }
    if (dema != null) {
      json["dema"] = dema;
    }
    if (disparityindex != null) {
      json["disparityindex"] = disparityindex;
    }
    if (dmi != null) {
      json["dmi"] = dmi;
    }
    if (dpo != null) {
      json["dpo"] = dpo;
    }
    if (ema != null) {
      json["ema"] = ema;
    }
    if (ikh != null) {
      json["ikh"] = ikh;
    }
    if (keltnerchannels != null) {
      json["keltnerchannels"] = keltnerchannels;
    }
    if (klinger != null) {
      json["klinger"] = klinger;
    }
    if (linearRegression != null) {
      json["linearRegression"] = linearRegression;
    }
    if (linearRegressionAngle != null) {
      json["linearRegressionAngle"] = linearRegressionAngle;
    }
    if (linearRegressionIntercept != null) {
      json["linearRegressionIntercept"] = linearRegressionIntercept;
    }
    if (linearRegressionSlope != null) {
      json["linearRegressionSlope"] = linearRegressionSlope;
    }
    if (macd != null) {
      json["macd"] = macd;
    }
    if (mfi != null) {
      json["mfi"] = mfi;
    }
    if (momentum != null) {
      json["momentum"] = momentum;
    }
    if (natr != null) {
      json["natr"] = natr;
    }
    if (obv != null) {
      json["obv"] = obv;
    }
    if (pc != null) {
      json["pc"] = pc;
    }
    if (pivotpoints != null) {
      json["pivotpoints"] = pivotpoints;
    }
    if (ppo != null) {
      json["ppo"] = ppo;
    }
    if (priceenvelopes != null) {
      json["priceenvelopes"] = priceenvelopes;
    }
    if (psar != null) {
      json["psar"] = psar;
    }
    if (roc != null) {
      json["roc"] = roc;
    }
    if (rsi != null) {
      json["rsi"] = rsi;
    }
    if (slowstochastic != null) {
      json["slowstochastic"] = slowstochastic;
    }
    if (sma != null) {
      json["sma"] = sma;
    }
    if (stochastic != null) {
      json["stochastic"] = stochastic;
    }
    if (supertrend != null) {
      json["supertrend"] = supertrend;
    }
    if (tema != null) {
      json["tema"] = tema;
    }
    if (trix != null) {
      json["trix"] = trix;
    }
    if (vbp != null) {
      json["vbp"] = vbp;
    }
    if (vwap != null) {
      json["vwap"] = vwap;
    }
    if (williamsr != null) {
      json["williamsr"] = williamsr;
    }
    if (wma != null) {
      json["wma"] = wma;
    }
    if (zigzag != null) {
      json["zigzag"] = zigzag;
    }
    return json;
  }
}
