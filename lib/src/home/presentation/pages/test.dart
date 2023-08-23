import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

import '../../../sheet/presentation/widgets/chart_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
// Data for the pie chart
  Map<String, double> dataMap = {
    "Food Items": 18.47,
    "Clothes": 17.70,
    "Technology": 4.25,
    "Cosmetics": 3.51,
    "Other": 2.83,
  };

// Colors for each segment
// of the pie chart
  List<Color> colorList = [
    const Color(0xffD95AF3),
    const Color(0xff3EE094),
    const Color(0xff3398F6),
    const Color(0xffFA4A42),
    const Color(0xffFE9539)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Pie Chart example"),
      ),
      body: Center(
        child: ChartWidget(dataMap: dataMap, colorList: colorList),
      ),
    );
  }
}
