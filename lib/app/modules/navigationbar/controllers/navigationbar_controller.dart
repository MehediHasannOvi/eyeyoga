import 'package:get/get.dart';

class NavigationbarController extends GetxController {
  //TODO: Implement NavigationbarController
  int selectedIndex = 0;

  void onItemTapped(int index) {
    selectedIndex = index;
    update();
  }
}
