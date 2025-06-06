import 'package:flutter/material.dart';
import 'package:high_chart/high_chart.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: ExampleChart());
  }
}

class ExampleChart extends StatefulWidget {
  const ExampleChart({super.key});

  @override
  ExampleChartState createState() => ExampleChartState();
}

class ExampleChartState extends State<ExampleChart> {
  final String _chartData = '''{
      title: {
          text: 'Combination chart'
      },    
      xAxis: {
          categories: ['Apples', 'Oranges', 'Pears', 'Bananas', 'Plums']
      },
      labels: {
          items: [{
              html: 'Total fruit consumption',
              style: {
                  left: '50px',
                  top: '18px',
                  color: ( // theme
                      Highcharts.defaultOptions.title.style &&
                      Highcharts.defaultOptions.title.style.color
                  ) || 'black'
              }
          }]
      },
      series: [{
          type: 'column',
          name: 'Jane',
          data: [3, 2, 1, 3, 3]
      }, {
          type: 'column',
          name: 'John',
          data: [2, 4, 5, 7, 6]
      }, {
          type: 'column',
          name: 'Joe',
          data: [4, 3, 3, 5, 0]
      }, {
          type: 'spline',
          name: 'Average',
          data: [3, 2.67, 3, 6.33, 3.33],
          marker: {
              lineWidth: 2,
              lineColor: Highcharts.getOptions().colors[3],
              fillColor: 'white'
          }
      }, {
          type: 'pie',
          name: 'Total consumption',
          data: [{
              name: 'Jane',
              y: 13,
              color: Highcharts.getOptions().colors[0] // Jane's color
          }, {
              name: 'John',
              y: 23,
              color: Highcharts.getOptions().colors[1] // John's color
          }, {
              name: 'Joe',
              y: 19,
              color: Highcharts.getOptions().colors[2] // Joe's color
          }],
          center: [100, 80],
          size: 100,
          showInLegend: false,
          dataLabels: {
              enabled: false
          }
        }]
    }''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('High Charts Example App'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HighCharts(
              loader: const SizedBox(
                width: 200,
                child: LinearProgressIndicator(),
              ),
              size: const Size(700, 450),
              data: _chartData,
              networkScripts: const [
                "https://code.highcharts.com/highcharts.js",
                'https://code.highcharts.com/modules/networkgraph.js',
                'https://code.highcharts.com/modules/exporting.js',
              ],
            ),
            HighCharts(
              loader: const SizedBox(
                width: 200,
                child: LinearProgressIndicator(),
              ),
              size: const Size(700, 450),
              data: _chartData,
              localScripts: const [
                'res/highcharts.js',
                'res/exporting.js',
                'res/networkgraph.js',
              ],
            ),
            HighCharts(
              loader: const SizedBox(
                width: 200,
                child: LinearProgressIndicator(),
              ),
              size: const Size(700, 450),
              data: _chartData,
              localScripts: const [
                'res/highcharts.js',
                'res/exporting.js',
                'res/networkgraph.js',
              ],
              themeMode: ThemeMode.light,
            ),
          ],
        ),
      ),
    );
  }
}
