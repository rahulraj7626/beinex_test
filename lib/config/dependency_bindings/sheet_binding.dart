import 'package:beinex_test/src/sheet/presentation/controller/sheet_controller.dart';
import 'package:get/get.dart';

class SheetBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SheetController());
  }
}
