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
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Table Data",
          style: TextStyle(color: Colors.black87),
        ),
      ),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(top: 12, left: 8, right: 8),
          child: GetBuilder<HomeController>(
              init: HomeController(),
              builder: (controller) {
                return controller.isLoading.value
                    ? const Center(
                        child: CircularProgressIndicator.adaptive(),
                      )
                    : GridWdget(
                        data: [GridItem(), ...controller.mainData],
                        controller: controller,
                      );
              }),
        ),
      ),
    );
  }
}
