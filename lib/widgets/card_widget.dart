import 'package:flutter/material.dart';
import 'package:project_8/helper/colors.dart';
import 'package:project_8/helper/sized.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,required this.nameMed,required this.time,required this.condition,required this.conditionColor,
  });
final nameMed;
final time ;
final condition;
final conditionColor;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        height: 72,
        width: 360,
        decoration: BoxDecoration(
          color: lightGray,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              gapWe10,
              Image.asset("assets/pall0.png"),
              gapWe5,
              Column(
                children: [
                  gapH5,
                  Text(
                    nameMed,
                    style: TextStyle(
                      color: black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  gapH5,
                   Padding(
                    padding: EdgeInsets.only(right: 40),
                    child: Text(
                      time,
                      style: TextStyle(fontSize: 13),
                    ),
                  )
                ],
              ),
              gapWe20,
              gapWe20,
              gapWe20,
              gapWe20,
              gapWe20,
              //حالة اخذ الدواء
              Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                  color: conditionColor,
                  borderRadius: BorderRadius.circular(10)
                ),
              ),
              gapWe5,
              Text(
                condition,
                style: TextStyle(
                  color: black,
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
