export 'src/unsupported.dart'
    if (dart.library.html) 'src/web/high_chart.dart' // Web
    if (dart.library.io) 'src/io.dart'; // Mobile platforms

// For desktop platforms, use the following (optional):
//    if (platform.isWindows) 'src/windows/high_chart.dart'
//    if (platform.isLinux) 'src/linux/high_chart.dart'
//    if (platform.isMacOS) 'src/macos/high_chart.dart';
