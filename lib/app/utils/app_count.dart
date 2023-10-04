// import 'package:confetti/confetti.dart';

// import 'package:flutter/material.dart';


// class AppCount extends StatefulWidget {
//   // final int duration;
//   // Function()? onStart;
//   // Function()? onComplete;
//   AppCount({
//     super.key,
//   });

//   @override
//   State<AppCount> createState() => _AppCountState();
// }

// class _AppCountState extends State<AppCount> {
//   @override
//   void initState() {
//     // TODO: implement initState
//     controllar.play();
//     super.initState();
//   }
//   @override
//   void dispose() {
//     // TODO: implement dispose
//     controllar.stop();
//     super.dispose();
//   }
//   final controllar = ConfettiController();
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       alignment: Alignment.center,
//       children: [
//         Scaffold(
//           body: ConfettiWidget( confettiController: controllar,
//           shouldLoop: true,
//           ),
//         ),
//       ],
//     );
//   }
// }
