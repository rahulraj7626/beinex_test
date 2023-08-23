import 'package:beinex_test/src/home/data/models/grid_item_model.dart';
import 'package:beinex_test/src/home/presentation/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/grid_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: GetBuilder<HomeController>(
            init: HomeController(),
            builder: (controller) {
              return controller.isLoading.value
                  ? Center(
                      child: CircularProgressIndicator.adaptive(),
                    )
                  : GridWdget(data: [GridItem(), ...controller.mainData]);
            }),
      ),
    );
  }
}
