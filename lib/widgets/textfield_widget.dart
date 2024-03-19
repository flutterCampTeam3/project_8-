import 'package:flutter/material.dart';
import 'package:project_8/helper/sized.dart';

class TextFieldWidget extends StatelessWidget {
  TextFieldWidget({super.key, required this.text});
  String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0, left: 20, top: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            text,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          sizedBoxH10,
          TextField(
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
          )
        ],
      ),
    );
  }
}
