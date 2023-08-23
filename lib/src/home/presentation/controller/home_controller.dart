import 'package:get/get.dart';

import '../../../../config/common_widgets/alert.dart';
import '../../../charts/data/models/chart_model.dart';
import '../../data/models/grid_item_model.dart';
import '../../data/repositories/home_repository.dart';
import '../../domain/repositories/home_repository.dart';

class HomeController extends GetxController {
  HomeRepository? _homeService;

  HomeController() {
    _homeService = Get.find<HomeRepositoryImpl>();
  }

  List<GridItem> mainData = <GridItem>[].obs;
  List<ChartModel> chartData = <ChartModel>[].obs;

  RxBool isLoading = false.obs;
  @override
  void onInit() {
    getHomeData();
    super.onInit();
  }

  Future getHomeData() async {
    showLoading();

    final data = await _homeService!.getHomeData();

    if (data != null) {
      mainData = data;
      chartData = data
          .map((e) => ChartModel(
                title:
                    e.title!.length > 40 ? e.title!.substring(0, 40) : e.title!,
                total: e.status!.totalCount,
                completed: e.status!.currentCount,
              ))
          .toList();
      update();
      hideLoading();
    } else {
      AppAlert.showSnackBar("Something went wrong");
      hideLoading();
    }
  }

  showLoading() {
    isLoading.value = true;
    Future.delayed(const Duration(seconds: 10), () {
      if (isLoading.value == true) {
        isLoading.value = false;
      }
    });
    update();
  }

  hideLoading() {
    isLoading.value = false;
    update();
  }
}
