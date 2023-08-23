import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class ChartWidget extends StatelessWidget {
  const ChartWidget({
    super.key,
    required this.dataMap,
    required this.colorList,
  });

  final Map<String, double> dataMap;
  final List<Color> colorList;

  @override
  Widget build(BuildContext context) {
    return PieChart(
      chartType: ChartType.ring,
      // Pass in the data for
      // the pie chart
      dataMap: dataMap,
      // Set the colors for the
      // pie chart segments
      colorList: colorList,
      // Set the radius of the pie chart
      chartRadius: MediaQuery.of(context).size.width / 2,
      // Set the center text of the pie chart
      centerText: "Budget",

      // Set the width of the
      // ring around the pie chart
      ringStrokeWidth: 35,
      // Set the animation duration of the pie chart
      animationDuration: const Duration(seconds: 3),
      // Set the options for the chart values (e.g. show percentages, etc.)
      chartValuesOptions: const ChartValuesOptions(
          showChartValues: false,
          showChartValuesOutside: false,
          showChartValuesInPercentage: false,
          showChartValueBackground: false),
      // Set the options for the legend of the pie chart
      legendOptions: const LegendOptions(
          showLegends: true,
          legendShape: BoxShape.circle,
          legendTextStyle: TextStyle(fontSize: 15),
          legendPosition: LegendPosition.right,
          showLegendsInRow: false),
      // Set the list of gradients for
      // the background of the pie chart
    );
  }
}
