class ExerciseModel {
  int? id;
  String? name;
  String? exercise;
  int? time;

  ExerciseModel({this.id, this.name, this.exercise, this.time});
  ExerciseModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    exercise = json['exercise'];
    time = json['time'];
  }
}
