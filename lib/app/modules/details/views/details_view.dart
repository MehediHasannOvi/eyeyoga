import 'package:eyeyoga/app/colors/app_colors.dart';

import 'package:eyeyoga/app/utils/app_size.dart';
import 'package:eyeyoga/app/utils/app_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:get/get.dart';
import 'package:neon_circular_timer/neon_circular_timer.dart';

import '../controllers/details_controller.dart';

class DetailsView extends GetView<DetailsController> {
  const DetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final data = Get.arguments;
    return Scaffold(
        appBar: AppBar(
          // title: const Text('DetailsView'),
          // centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                CupertinoIcons.back,
                color: AppColors.text,
              )),

          actions: [
            IconButton(
                onPressed: () {
                  controller.toggleButton();
                },
                icon: const Icon(
                  CupertinoIcons.bell,
                  color: AppColors.text,
                )),
          ],
        ),
        body: Container(
          margin: const EdgeInsets.all(20),
          child: ListView(
            children: [
              AppTexts(
                text: data.name.toString(),
                color: AppColors.text,
                fontSize: 18.sp,
                fontWeight: FontWeight.w400,
                textAlign: TextAlign.center,
              ),
              const Sbox(
                height: 50,
              ),
              Obx(
                () => controller.button.isTrue
                    ? GestureDetector(
                        onTap: () {
                          controller.toggleButton();
                        },
                        child: Lottie.asset('assets/icons/playicon.json',
                            height: 200.h, width: 200.h),
                      )
                    : NeonCircularTimer(
                        width: 200,
                        duration: data.time,
                        controller: null,
                        neumorphicEffect: false,
                        isTimerTextShown: true,
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w400),
                        innerFillGradient: LinearGradient(colors: [
                          Colors.greenAccent.shade200,
                          Colors.blueAccent.shade400
                        ]),
                        neonGradient: LinearGradient(colors: [
                          Colors.greenAccent.shade200,
                          Colors.blueAccent.shade400
                        ]),
                       onStart: () {
                          controller.soundplay();
                        
                       },
                        onComplete: () {
                        
                          controller.toggleButton();
                        },
                      ),
              ),
              const Sbox(
                height: 150,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                height: 150.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: AppColors.inactiveColor),
                child: AppTexts(
                  text: data.exercise.toString(),
                  color: AppColors.textgray,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  textAlign: TextAlign.start,
                ),
              )
            ],
          ),
        ));
  }
}
