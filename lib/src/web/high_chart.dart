import 'dart:math';

import 'package:flutter/material.dart';
import 'dart:html' as html;
import 'dart:ui' as ui;

import 'js.dart';

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
  String _divId = (Random().nextInt(900000) + 100000).toString();

  @override
  void didUpdateWidget(covariant HighCharts oldWidget) {
    if (oldWidget.data != widget.data ||
        oldWidget.size != widget.size ||
        oldWidget.scripts != widget.scripts ||
        oldWidget.loader != widget.loader) {
      _load();
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void initState() {
    // print(_divId);
    // _genDiv();
    _load();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // void _genDiv() {
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory("$_divId", (int viewId) {
      final html.Element htmlElement = html.DivElement()
        ..style.width = '100%'
        ..style.backgroundColor = 'green'
        ..setAttribute("id", "HighChartsId$_divId")
        ..style.height = '100%';
      return htmlElement;
    });
    // }

    return SizedBox(
        height: widget.size.height,
        width: widget.size.width,
        child: HtmlElementView(viewType: "$_divId"));
  }

  void _load() {
    Future.delayed(Duration(milliseconds: 500), () {
      // print("trigg");
      eval("Highcharts.chart('HighChartsId$_divId',${widget.data});");
    });
  }
}
