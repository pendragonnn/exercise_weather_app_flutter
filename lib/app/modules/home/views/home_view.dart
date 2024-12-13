import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:weather_app/app/modules/home/controllers/global_controller.dart';
import 'package:weather_app/app/widgets/header_widget.dart';

// import '../controllers/home_controller.dart';

class HomeView extends GetView<GlobalController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Obx(() => (controller.checkLoading().isTrue)
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView(
                scrollDirection: Axis.vertical,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const HeaderWidget(),
                ],
              )),
      ),
    );
  }
}
