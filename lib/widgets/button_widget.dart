import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  ButtonWidget(
      {super.key,
      required this.backgroundColor,
      required this.text,
      required this.textColor,
      required this.onPressed});
  String text;
  Color backgroundColor;
  Color textColor;
  VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 55),
              backgroundColor: backgroundColor,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)))),
          onPressed: () {},
          child: Text(
            text,
            style: TextStyle(
                color: textColor, fontWeight: FontWeight.w900, fontSize: 20),
          )),
    );
  }
}
