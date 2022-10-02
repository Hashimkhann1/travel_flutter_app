import 'package:flutter/material.dart';

class TextBtn extends StatelessWidget {
  String btnText;
  Color? btnBackColor = Color(0xFFFFFFFF);
  Color? btnTextcolor = Color(0xFF000000);
  double? btnTextSize;
  FontWeight? btnTextWeight = FontWeight.w400;
  VoidCallback? pressed;
  EdgeInsets? padding;
  TextBtn({Key? key,this.pressed,required this.btnText,this.btnTextcolor,this.btnTextSize,this.btnTextWeight,this.btnBackColor,this.padding});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: padding,
        backgroundColor: btnBackColor,
      ),
        onPressed: pressed,
        child: Text(
          btnText,
          style: TextStyle(
            color: btnTextcolor,
            fontWeight: btnTextWeight,
            fontSize: btnTextSize,
          ),
        )
    );
  }
}
