import 'package:eyeyoga/app/colors/app_Colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          title: "Eye Yoga",
          initialRoute: AppPages.INITIAL,
          getPages: AppPages.routes,
          theme: ThemeData(
            scaffoldBackgroundColor: AppColors.primaryColor,
            appBarTheme: const AppBarTheme(
              elevation: 0,
              centerTitle: false,
              backgroundColor: AppColors.primaryColor,
              iconTheme: IconThemeData(color: AppColors.text),
            ),
            fontFamily: GoogleFonts.latoTextTheme().toString(),
          ),
        );
      }));
}
