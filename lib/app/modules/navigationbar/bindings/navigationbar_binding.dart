import 'package:eyeyoga/app/modules/home/controllers/home_controller.dart';
import 'package:eyeyoga/app/modules/profile/controllers/profile_controller.dart';
import 'package:get/get.dart';

import '../controllers/navigationbar_controller.dart';

class NavigationbarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NavigationbarController>(
      () => NavigationbarController(),
    );
     Get.lazyPut<HomeController>(
      () => HomeController(),
    );
     Get.lazyPut<ProfileController>(
      () => ProfileController(),
    );
  }
}
