export 'src/unsupported.dart'
    if (dart.library.html) 'src/web/high_chart.dart' // Web platform
    if (dart.library.io) 'src/io.dart'; // Mobile and Desktop platforms
