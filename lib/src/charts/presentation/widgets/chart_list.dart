import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../config/constants/style_constants.dart';
import '../../../home/presentation/controller/home_controller.dart';
import 'progress_bar.dart';

class BarChartWidget extends StatelessWidget {
  const BarChartWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(6.0),
      ),
      margin: Ppadding.cardPadding,
      elevation: 7,
      child: Padding(
        padding: Ppadding.cardPadding,
        child: GetBuilder<HomeController>(builder: (c) {
          return ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: c.chartData.length,
              itemBuilder: (context, index) {
                var item = c.chartData[index];
                return ProgressBar(
                    completedValue: item.completed,
                    totalValue: item.total,
                    title: item.title);
              });
        }),
      ),
    );
  }
}
