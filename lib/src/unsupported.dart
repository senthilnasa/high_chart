import 'package:flutter/material.dart';

class HighCharts extends StatefulWidget {
  HighCharts(
      {required this.data,
      required this.size,
      this.loader = const CircularProgressIndicator(),
      this.scripts = const []});
  final Widget loader;
  final String data;
  final Size size;
  final List<String> scripts;
  @override
  _HighChartsState createState() => _HighChartsState();
}

class _HighChartsState extends State<HighCharts> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("UnSupported Platform"));
  }
}
