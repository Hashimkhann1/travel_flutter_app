import 'package:flutter/material.dart';


class AppText extends StatelessWidget {
  String text;
  Color? textcolor = Color(0xFF09090b);
  FontWeight? textWeight = FontWeight.w400;
  double? textSize = 16.0;
  AppText({required this.text , this.textSize ,this.textcolor,this.textWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: textSize,
        fontWeight: textWeight,
        color: textcolor
      ),
    );
  }
}
