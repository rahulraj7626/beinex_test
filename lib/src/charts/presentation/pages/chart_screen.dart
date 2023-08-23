import 'package:beinex_test/config/common_widgets/common_widgets.dart';
import 'package:beinex_test/config/constants/color_constants.dart';
import 'package:beinex_test/config/constants/style_constants.dart';
import 'package:beinex_test/src/home/presentation/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../../home/presentation/controller/home_controller.dart';
import '../widgets/chart_list.dart';
import '../widgets/chart_widget.dart';

class ChartScreen extends StatelessWidget {
  const ChartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    var data = Get.arguments;

    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 150,
          elevation: 0,
          bottomOpacity: 0.0,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[CColors.skyBlue, CColors.black]),
            ),
            child: SafeArea(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  headWidget(data[0], 18),
                  headWidget(
                      data[1].length > 150
                          ? data[1].substring(0, 150)
                          : data[1],
                      16)
                ])),
          ),
        ),
        body: Column(children: [
          const Expanded(
            flex: 1,
            child: BarChartWidget(),
          ),
          Expanded(
            flex: 1,
            child: Card(
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(6.0),
              ),
              elevation: 7,
              margin: Ppadding.cardPadding,
              child: Padding(
                padding: Ppadding.cardPadding,
                child: GetBuilder<HomeController>(builder: (c) {
                  return ChartWidget(
                      sum: c.donutSum.toString(),
                      colorList: c.donutColors,
                      dataMap: c.dataMap);
                }),
              ),
            ),
          ),
          verSpace(10)
        ]));
  }
}

const SystemUiOverlayStyle systemUiOverlayStyle =
    SystemUiOverlayStyle(statusBarColor: Colors.transparent);
