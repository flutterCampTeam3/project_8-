import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project_8/helper/colors.dart';
import 'package:project_8/helper/extintion.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
  appBar: PreferredSize(
    preferredSize: Size(context.getWidth(),context.getHeight()/6),
    child:
       Container(
        
      decoration:  BoxDecoration(
        color: teal,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(8),
          bottomRight: Radius.circular(8))),
       ),
    ),
  );
  


   

  }
}