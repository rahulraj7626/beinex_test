import 'package:beinex_test/config/common_widgets/common_widgets.dart';
import 'package:beinex_test/config/constants/color_constants.dart';
import 'package:beinex_test/config/constants/style_constants.dart';
import 'package:beinex_test/src/charts/data/datasources/test_chart_data.dart';
import 'package:beinex_test/src/home/presentation/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/chart_widget.dart';
import '../widgets/progress_bar.dart';

class ChartScreen extends StatelessWidget {
  const ChartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    return Scaffold(
      appBar: AppBar(
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
              child:
                  Column(children: [titleWidget("ffff"), titleWidget("ffff")])),
        ),
      ),
      body: Column(children: [
        Expanded(
          flex: 1,
          child: Card(
            margin: Ppadding.cardPadding,
            elevation: 7,
            child: Padding(
              padding: Ppadding.cardPadding,
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return ProgressBar(
                        completedValue: 10, totalValue: 20, title: "GUHHKHKJ");
                  }),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Card(
            elevation: 7,
            margin: Ppadding.cardPadding,
            child: Padding(
              padding: Ppadding.cardPadding,
              child: ChartWidget(
                colorList: colorList,
                dataMap: dataMap,
              ),
            ),
          ),
        ),
        verSpace(10)
      ]),
    );
  }
}

const SystemUiOverlayStyle systemUiOverlayStyle =
    SystemUiOverlayStyle(statusBarColor: Colors.transparent);
