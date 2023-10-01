import 'package:eyeyoga/app/utils/app_count.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class DetailsController extends GetxController {
  //TODO: Implement DetailsController

  bool button = false.obs.value;

  void buttonChange(double duration) {
    if (button == false) {
      
      button = true;
    } else {
      AppCount(duration: duration ,);
    }
  }
}
