import 'package:flutter/material.dart';

class AppTexts extends StatelessWidget {
  final String text;
  final Color color;
  final FontWeight fontWeight;
  final double fontSize;
  final TextAlign textAlign;

  const AppTexts(
      {super.key,
      required this.text,
      required this.color,
      this.fontWeight = FontWeight.normal,
      required this.fontSize,
      this.textAlign = TextAlign.start});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style:
            TextStyle(color: color, fontWeight: fontWeight, fontSize: fontSize),
        textAlign: textAlign);
  }
}
