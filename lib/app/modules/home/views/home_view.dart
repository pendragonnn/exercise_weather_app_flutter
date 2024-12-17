import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/app/modules/home/controllers/global_controller.dart';
import 'package:weather_app/app/utils/custom_colors.dart';
import 'package:weather_app/app/widgets/current_weather_widget.dart';
import 'package:weather_app/app/widgets/header_widget.dart';

class HomeView extends GetView<GlobalController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: CustomColors.backgroundColor,
        body: Obx(
          () => (controller.checkLoading().isTrue)
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Center(
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      const HeaderWidget(),
                      const SizedBox(
                        height: 20,
                      ),
                      // for current temp ('current')
                      CurrentWeatherWidget(
                        weatherDataCurrent: controller.getWeatherCurrentData(),
                      ),
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
