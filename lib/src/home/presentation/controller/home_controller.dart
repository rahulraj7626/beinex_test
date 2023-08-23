import 'package:get/get.dart';

import '../../../../config/common_widgets/alert.dart';
import '../../data/models/grid_item_model.dart';
import '../../data/repositories/home_repository.dart';
import '../../domain/repositories/home_repository.dart';

class HomeController extends GetxController {
  HomeRepository? _homeService;

  HomeController() {
    _homeService = Get.find<HomeRepositoryImpl>();
  }

  List<GridItem> mainData = <GridItem>[].obs;

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
