import 'package:beinex_test/src/charts/presentation/controller/chart_controller.dart';
import 'package:get/get.dart';

class SheetBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SheetController());
  }
}
