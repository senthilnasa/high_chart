import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:high_chart/high_chart.dart';

void main() {
  group('HighCharts widget configuration', () {
    test('exposes the values passed to its constructor', () {
      const data = '{"title": {"text": "Test"}}';
      const size = Size(400, 300);
      const networkScripts = ['https://code.highcharts.com/highcharts.js'];
      const localScripts = ['res/highcharts.js'];

      const chart = HighCharts(
        data: data,
        size: size,
        networkScripts: networkScripts,
        localScripts: localScripts,
        themeMode: ThemeMode.dark,
      );

      expect(chart.data, data);
      expect(chart.size, size);
      expect(chart.networkScripts, networkScripts);
      expect(chart.localScripts, localScripts);
      expect(chart.themeMode, ThemeMode.dark);
    });

    test(
        'defaults to empty script lists, system theme and a spinner loader',
        () {
      const chart = HighCharts(
        data: '{}',
        size: Size(100, 100),
      );

      expect(chart.networkScripts, isEmpty);
      expect(chart.localScripts, isEmpty);
      expect(chart.themeMode, ThemeMode.system);
      expect(chart.loader, isA<Center>());
    });

    test('accepts a custom loader widget', () {
      const loader = SizedBox(width: 10, height: 10);
      const chart = HighCharts(
        data: '{}',
        size: Size(100, 100),
        loader: loader,
      );

      expect(chart.loader, same(loader));
    });
  });
}
