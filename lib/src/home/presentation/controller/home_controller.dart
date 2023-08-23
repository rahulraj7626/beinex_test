import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../config/common_widgets/alert.dart';
import '../../../charts/data/models/chart_model.dart';
import '../../data/models/grid_item_model.dart';
import '../../data/repositories/home_repository.dart';
import '../../domain/repositories/home_repository.dart';

/// Home controller
class HomeController extends GetxController {
  HomeRepository? _homeService;

  ///Creeting instance of the service
  HomeController() {
    _homeService = Get.find<HomeRepositoryImpl>();
  }
  final transformationController = TransformationController();
  List<GridItem> mainData = <GridItem>[].obs;
  List<ChartModel> chartData = <ChartModel>[].obs;
  RxInt donutSum = 0.obs;
  List<Color> donutColors = <Color>[].obs;
  RxMap<String, double> dataMap = <String, double>{}.obs;

  RxBool isLoading = false.obs;
  @override
  void onInit() {
    getHomeData();
    super.onInit();
  }

  ///Geting data from api
  Future getHomeData() async {
    showLoading();

    final data = await _homeService!.getHomeData();

    if (data != null) {
      mainData = data;
      setChartData(data);
      setDonutData(data);
      update();
      hideLoading();
    } else {
      AppAlert.showSnackBar("Something went wrong");
      hideLoading();
    }
  }

  ///Change Picket Date
  changeDate(int i, String setDate) {
    mainData[i - 1].date = setDate;
    update();
  }

  ///Set Chart data The model used ChartModel
  setChartData(List<GridItem> data) {
    chartData = data
        .map((e) => ChartModel(
              title:
                  e.title!.length > 40 ? e.title!.substring(0, 40) : e.title!,
              total: e.status!.totalCount,
              completed: e.status!.currentCount,
            ))
        .toList();
    update();
  }

  ///Set DATA for Donut Diagram
  setDonutData(List<GridItem> data) {
    for (var element in data) {
      for (var e in element.level1!) {
        donutSum += 1;
        if (!dataMap.containsKey(toSub(e.value!))) {
          dataMap[toSub(e.value!)] = 1;
          donutColors.add(
            Colors.primaries[Random().nextInt(Colors.primaries.length)],
          );
        } else {
          dataMap[toSub(e.value!)] = (dataMap[toSub(e.value!)]! + 1);
        }
      }
    }
    update();
  }

  ///Show loading method while api
  showLoading() {
    isLoading.value = true;
    Future.delayed(const Duration(seconds: 10), () {
      if (isLoading.value == true) {
        isLoading.value = false;
      }
    });
    update();
  }

  ///Hide loading
  hideLoading() {
    isLoading.value = false;
    update();
  }

  ///Zoom out funtion
  zoomOut() {
    transformationController.toScene(Offset.zero);
    update();
  }
}

String toSub(s) => s.length > 10 ? s.substring(0, 10) : s;
