import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:high_chart/high_chart.dart';

void main() {
  testWidgets('HighCharts widget test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(
      home: HighCharts(
        data: 'your_data',
        size: Size(200.0, 200.0),
        scripts: ['script1', 'script2'],
        localScripts: ['localScript1', 'localScript2'],
      ),
    ));

    // Verify that HighCharts widget is displayed.
    expect(find.byType(HighCharts), findsOneWidget);
  });
}
