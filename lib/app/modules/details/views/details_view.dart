import 'package:eyeyoga/app/colors/app_colors.dart';
import 'package:eyeyoga/app/utils/app_count.dart';
import 'package:eyeyoga/app/utils/app_size.dart';
import 'package:eyeyoga/app/utils/app_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:get/get.dart';

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
              icon: Icon(
                CupertinoIcons.back,
                color: AppColors.text,
              )),

          actions: [
            IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(
                  CupertinoIcons.bell,
                  color: AppColors.text,
                )),
          ],
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: ListView(
            children: [
              AppTexts(
                text: data.name.toString(),
                color: AppColors.text,
                fontSize: 18.sp,
                fontWeight: FontWeight.w400,
                textAlign: TextAlign.center,
              ),
              Sbox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {
                  controller.button;
                  
                },
                child: controller.button ==  controller.button
                    ? Lottie.asset('assets/icons/playicon.json',
                        height: 200.h, width: 200.h)
                    : Center(child: Text("Count Down")),
              ),
              Sbox(
                height: 150,
              ),
              Container(
                padding: EdgeInsets.all(20),
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
