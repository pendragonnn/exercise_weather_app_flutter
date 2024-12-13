import 'package:get/get.dart';
import 'package:weather_app/app/modules/home/controllers/global_controller.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.put<GlobalController>(
      GlobalController(),
      permanent: true,
    );
  }
}
