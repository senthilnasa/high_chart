import 'package:flutter/material.dart';
import 'package:high_chart/high_chart.dart';

import 'chart_data.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: ExampleChart());
  }
}

class ExampleChart extends StatefulWidget {
  const ExampleChart({Key? key}) : super(key: key);

  @override
  _ExampleChartState createState() => _ExampleChartState();
}

class _ExampleChartState extends State<ExampleChart> {
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
          children: [
            const SizedBox(height: 40),
            //  Line Chart Data
            HighCharts(
              loader: const SizedBox(
                child: LinearProgressIndicator(),
                width: 200,
              ),
              size: Size(MediaQuery.of(context).size.width, 500),
              data: lineChartData,
            ),
            const SizedBox(height: 40),
            // Area Charts Data
            HighCharts(
              loader: const SizedBox(
                child: LinearProgressIndicator(),
                width: 200,
              ),
              size: Size(MediaQuery.of(context).size.width, 500),
              data: areaChartData,
            ),
            const SizedBox(height: 40),
            // Area Charts Data
            HighCharts(
              loader: const SizedBox(
                child: LinearProgressIndicator(),
                width: 200,
              ),
              size: Size(MediaQuery.of(context).size.width, 500),
              data: areaChartData,
            ),
            const SizedBox(height: 40),

            // Column And Bar Charts Data

            HighCharts(
              loader: const SizedBox(
                child: LinearProgressIndicator(),
                width: 200,
              ),
              size: Size(MediaQuery.of(context).size.width, 500),
              data: columnAndBarCharts,
            ),

            const SizedBox(height: 40),
            HighCharts(
              loader: const SizedBox(
                child: LinearProgressIndicator(),
                width: 200,
              ),
              size: Size(MediaQuery.of(context).size.width, 500),
              data: dripDownChart,
              // scripts: [""],
            ),
          ],
        ),
      ),
    );
  }
}
