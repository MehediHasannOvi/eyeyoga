import 'package:eyeyoga/app/colors/app_colors.dart';
import 'package:eyeyoga/app/modules/home/views/home_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/navigationbar_controller.dart';

class NavigationbarView extends GetView<NavigationbarController> {
  const NavigationbarView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavigationbarController>(
      init: NavigationbarController(),
      initState: (_) {},
      builder: (_) {
        return Scaffold(
          body: IndexedStack(
            index: controller.selectedIndex,
            children: const [
              HomeView(),
              HomeView(),
              HomeView(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
              elevation: 0,
              backgroundColor: AppColors.inactiveColor,
              selectedFontSize: 12,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.cube_box),
                    label: 'Exercise',
                    backgroundColor: AppColors.textgray),
                BottomNavigationBarItem(
                    icon: Icon(Icons.auto_graph),
                    label: 'Learn',
                    backgroundColor: AppColors.textgray),
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.person),
                    label: 'Profile',
                    backgroundColor: AppColors.textgray),
              ],
              currentIndex: controller.selectedIndex,
              selectedItemColor: AppColors.text,
              onTap: controller.onItemTapped),
        );
      },
    );
  }
}
