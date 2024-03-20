import 'package:flutter/material.dart';
import 'package:project_8/helper/colors.dart';

class ButtonWidget extends StatelessWidget {
  ButtonWidget(
      {super.key,
      required this.backgroundColor,
      required this.text,
      required this.textColor,
      required this.onPressed,
      this.borderColor});
  String text;
  Color backgroundColor;
  Color textColor;
  VoidCallback onPressed;
  Color? borderColor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            shadowColor: borderColor,
            elevation: 2,
            minimumSize: const Size(double.infinity, 60),
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
                side: BorderSide(color: borderColor ?? transparent),
                borderRadius: const BorderRadius.all(Radius.circular(10)))),
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
              color: textColor, fontWeight: FontWeight.w900, fontSize: 20),
        ));
  }
}
