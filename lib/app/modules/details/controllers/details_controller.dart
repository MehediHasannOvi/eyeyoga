import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';

class DetailsController extends GetxController {
  //TODO: Implement DetailsController

  final RxBool button = true.obs;

  // void onInit() {
  //   circularTimer();
  //   super.onInit();
  // }
  void toggleButton() async {
    button.value = !button.value;
  }

  void soundplay() async {
    await AudioPlayer().setAsset('assets/sound/sound.MP3');
    await AudioPlayer().play();
  }
}
