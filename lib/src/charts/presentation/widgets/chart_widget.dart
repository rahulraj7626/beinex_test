import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class ChartWidget extends StatelessWidget {
  const ChartWidget({
    super.key,
    required this.dataMap,
    required this.colorList,
    required this.sum,
  });

  final Map<String, double> dataMap;
  final List<Color> colorList;
  final String sum;

  @override
  Widget build(BuildContext context) {
    return PieChart(
      chartType: ChartType.ring,
      dataMap: dataMap,
      colorList: colorList,
      chartRadius: MediaQuery.of(context).size.width / 2,
      centerText: "Departments\n$sum",
      ringStrokeWidth: 25,
      animationDuration: const Duration(seconds: 5),
      chartValuesOptions: const ChartValuesOptions(
          showChartValues: false,
          showChartValuesOutside: false,
          showChartValuesInPercentage: false,
          showChartValueBackground: false),
      legendOptions: const LegendOptions(
          showLegends: true,
          legendShape: BoxShape.circle,
          legendTextStyle: TextStyle(fontSize: 12),
          legendPosition: LegendPosition.right,
          showLegendsInRow: false),
    );
  }
}
