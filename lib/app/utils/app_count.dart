import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';

class AppCount extends StatelessWidget {
  final double duration;
  Function()? onStart;
   Function()? onComplete;
   AppCount({super.key, required this.duration , this.onStart , this.onComplete});

  @override
  Widget build(BuildContext context) {
    return CircularCountDownTimer(
     duration: 10,
     initialDuration: 0,
     controller: CountDownController(),
     width: MediaQuery.of(context).size.width / 2,
     height: MediaQuery.of(context).size.height / 2,
     ringColor: Colors.grey[300]!,
     ringGradient: null,
     fillColor: Colors.purpleAccent[100]!,
     fillGradient: null,
     backgroundColor: Colors.purple[500],
     backgroundGradient: null,
     strokeWidth: 20.0,
     strokeCap: StrokeCap.round,
     textStyle: TextStyle(
         fontSize: 33.0, color: Colors.white, fontWeight: FontWeight.bold),
     textFormat: CountdownTextFormat.S,
     isReverse: false,
     isReverseAnimation: false,
     isTimerTextShown: true,
     autoStart: false,
     onStart: onStart,
     onComplete: onComplete,
     onChange: (String timeStamp) {
        debugPrint('Countdown Changed $timeStamp');
     },
     timeFormatterFunction: (defaultFormatterFunction, duration) {
        if (duration.inSeconds == 0) {
           return "Start";
        } else {
           return Function.apply(defaultFormatterFunction, [duration]);
        }
     },
 );
  }
}