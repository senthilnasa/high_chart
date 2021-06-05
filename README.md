<p align="center">
<img src="https://i.ibb.co/GnKh9tp/kisspng-highsoft-highcharts-data-visualization-technology-crisp-5b0bc0d5cc2c53-729988461527496917836.jpg" />
</p>

[![pub](https://img.shields.io/pub/v/high_chart)](https://www.highcharts.com/)

*A chart library based on<a href="https://github.com/highcharts/highcharts"> High Charts (.JS)</a>, able to build advanced charts like Pie chart, linear chart, etc* 

<div align="center">
<img src="https://i.ibb.co/4VWsfT0/demo.gif"/>&nbsp;&nbsp;
<img src="https://i.ibb.co/wpVYJ2D/highcharts-React-Wrapper.gif"/>

</div>




# Installing

Add this to your package's pubspec.yaml file:

```yaml
dependencies:
    high_chart: #latest version
```

Now in your Dart code, you can use:

```dart
import 'package:high_chart/high_chart.dart';
```

Details see [pub.dev](https://pub.dev/packages/high_chart).

# Usage

The `high_chart` package itself is very simple to use, just like a common `statelessWidget`:


```dart
static const _chart_data = '''{
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


    return Container(
    child: HighCharts(
        data:_chart_data,,
    ),
    width: 350,
    height: 350,
    )
    
```



See the full [flutter_High Chart_example](https://github.com/entronad/flutter_High Chart/tree/master/example).

# Widget Properties

**data**

*String*

*( required )*

High Chart is mainly configured by passing a string value to the JavaScript `data` property. 

You can use `jsonEncode()` function in `dart:convert` to convert data in Dart object form:

```
source: ${jsonEncode(_data1)},
```

Because JavaScript don't have `'''`, you can use this operator to reduce some escape operators for quotas:

```dart
HighCharts(
  data: '''
  
    // data string
    
  ''',
),
```

To use images in option properties, we suggest the Base64 [Data URL](https://developer.mozilla.org/en-US/docs/Web/HTTP/Basics_of_HTTP/Data_URIs) :

```js
image: 'data:image/png;base64,iVBORw0KG...',
```