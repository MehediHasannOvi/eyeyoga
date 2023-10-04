// ignore_for_file: must_be_immutable

import 'package:eyeyoga/app/colors/app_Colors.dart';
import 'package:eyeyoga/app/utils/app_size.dart';
import 'package:eyeyoga/app/utils/app_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  final Widget widget;
  final Color color;
  const AppButton({super.key, required this.widget, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 45.h,
      width: 110.w,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(12)),
      child: widget,
    );
  }
}

class AppButton2 extends StatelessWidget {
  final String text;
  Function()? onTap;
  String time;
  AppButton2({super.key, required this.text, this.onTap, required this.time});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 100.h,
        width: 160.w,
        decoration: BoxDecoration(
            color: AppColors.inactiveColor,
            borderRadius: BorderRadius.circular(12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: AppTexts(
                text: text,
                color: AppColors.text,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                textAlign: TextAlign.left,
              ),
            ),
            const Sbox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AppTexts(
                  text: "$time ~ sec.",
                  color: AppColors.textgray,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w400,
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      CupertinoIcons.play_circle_fill,
                      size: 24.sp,
                      color: AppColors.activeColor,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
