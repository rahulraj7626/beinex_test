import 'package:beinex_test/config/dependency_bindings/sheet_binding.dart';
import 'package:beinex_test/src/home/presentation/pages/home_screen.dart';
import 'package:beinex_test/src/sheet/presentation/pages/sheet_screen.dart';
import 'package:get/get_navigation/get_navigation.dart';
import '../config/dependency_bindings/home_binding.dart';
import 'route_names.dart';

const duration = Duration(milliseconds: 500);
const transition = Transition.cupertino;

class RoutesPages {
  static List<GetPage> routes = [
    GetPage(
        name: RouteName.homeRoute,
        page: () => const HomeScreen(),
        transition: transition,
        transitionDuration: duration,
        binding: HomeBinding()),
    GetPage(
      name: RouteName.sheetRoute,
      page: () => const SheetScreen(),
      transition: transition,
      transitionDuration: duration,
      binding: SheetBinding(),
    ),
  ];
}
