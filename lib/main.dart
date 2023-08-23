import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'config/app_theme/theme.dart';
import 'route_manager/route.dart';
import 'route_manager/route_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Beinex test',
      debugShowCheckedModeBanner: false,
      theme: theme,
      getPages: RoutesPages.routes,
      initialRoute: Routes.getHome(),
    );
  }
}
