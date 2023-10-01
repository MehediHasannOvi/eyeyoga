import 'package:eyeyoga/app/colors/app_Colors.dart';
import 'package:eyeyoga/app/model/exercise.dart';
import 'package:eyeyoga/app/routes/app_pages.dart';
import 'package:eyeyoga/app/utils/app_button.dart';
import 'package:eyeyoga/app/utils/app_size.dart';
import 'package:eyeyoga/app/utils/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('EyeYoga'),
          actions: [
            IconButton(
                onPressed: () {
                  controller.getExercise();
                },
                icon: const Icon(Icons.settings))
          ],
        ),
        body: Container(
          margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: ListView(
            shrinkWrap: true,
            children: [
              const Sbox(
                height: 10,
              ),
              AppTexts(
                  text: "Choose an exercise",
                  color: AppColors.text,
                  fontSize: 18.sp),
              const Sbox(
                height: 20,
              ),
              Row(
                children: [
                  AppButton(
                    widget: AppTexts(
                      text: "Eye Exercise",
                      color: AppColors.text,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    color: AppColors.activeColor,
                  ),
                  const Sbox(
                    width: 10,
                  ),
                  AppButton(
                    widget: AppTexts(
                      text: "Eye Massage",
                      color: AppColors.text,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    color: AppColors.inactiveColor,
                  ),
                ],
              ),
              const Sbox(
                height: 40,
              ),
              AppTexts(
                  text: "Exercise for the Eyes",
                  color: AppColors.text,
                  fontSize: 14.sp),
              const Sbox(
                height: 20,
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     AppButton2(
              //       text: "Blinking",
              //     ),
              //     const Sbox(
              //       width: 10,
              //     ),
              //     AppButton2(
              //       text: "Palming",
              //     ),
              //   ],
              // )
              FutureBuilder<List<ExerciseModel>>(
                  future: controller.getExercise(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 20,
                                  mainAxisExtent: 170),
                          itemCount: snapshot.data!.length,
                          itemBuilder: (context, index) {
                            return AppButton2(
                              onTap: () {
                                Get.toNamed(Routes.DETAILS,
                                    arguments: snapshot.data![index]);
                              },
                              text: snapshot.data![index].name.toString(),
                              time: snapshot.data![index].time.toString(),
                            );
                          }); 
                    } else {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  }),
                  const Sbox(
                   height: 20,
                  ),
            ],
          ),
        ));
  }
}
