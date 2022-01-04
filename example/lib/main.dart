import 'package:flutter/material.dart';

import 'package:high_chart/high_chart.dart';

void main() {
  runApp(Example());
}

class Example extends StatelessWidget {
  const Example({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyApp());
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  int count = 0;
  String _chart_data() => '''{
      title: {
          text: 'Combination chart ${count}'
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
          data: [3, 2, 1, 3, 4]
      }, {
          type: 'column',
          name: 'John',
          data: [2, 3, 5, 7, 6]
      }, {
          type: 'column',
          name: 'Joe',
          data: [4, 3, 3, 9, 0]
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
      appBar: AppBar(
        centerTitle: true,
        title: const Text('High Charts Example App'),
        actions: [
          IconButton(
              onPressed: () {
                count++;
                if (count % 2 == 0) {
                  setState(() {});
                }
                // print(count);
              },
              icon: Icon(Icons.refresh)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HighCharts(
              size: Size(MediaQuery.of(context).size.width,
                  MediaQuery.of(context).size.height / 2),
              data: _chart_data(),
              scripts: [
                'https://code.highcharts.com/modules/networkgraph.js',
                'https://code.highcharts.com/modules/exporting.js',
              ],
            ),
            HighCharts(
              size: Size(MediaQuery.of(context).size.width,
                  MediaQuery.of(context).size.height / 2),
              data: _chart_data(),
              scripts: [
                'https://code.highcharts.com/modules/networkgraph.js',
                'https://code.highcharts.com/modules/exporting.js',
              ],
            ),
          ],
        ),
      ),
    );
  }
}
