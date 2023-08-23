import 'package:beinex_test/src/home/data/repositories/home_repository.dart';
import 'package:get/get.dart';
import '../../src/home/presentation/controller/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeRepositoryImpl());
    Get.put(HomeController());
  }
}
