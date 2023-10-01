import 'dart:convert';

import 'package:eyeyoga/app/model/exercise.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    getExercise();
    super.onInit();
  }

  Future<List<ExerciseModel>> getExercise() async {
    try {
      String data = await rootBundle.loadString('assets/json/exercise.json');
      List mapdata = jsonDecode(data);
      List<ExerciseModel> exercise =
          mapdata.map((e) => ExerciseModel.fromJson(e)).toList();
      print(exercise);
      return exercise;
    } catch (e) {
      print(e);
      return [];
    }
    // Your code here
  }
}
