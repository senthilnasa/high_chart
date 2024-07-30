library highchart;

export 'src/unsupported.dart'
    if (dart.library.js_interop) 'src/web/high_chart.dart'
    if (dart.library.io) 'src/mobile/high_chart.dart';
