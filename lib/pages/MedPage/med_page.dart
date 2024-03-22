import 'package:flutter/material.dart';

import '../../helper/colors.dart';
import '../../helper/sized.dart';
import '../../widgets/card_widget.dart';

class MedPage extends StatelessWidget {
  const MedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              gapH40,
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "أدويتي",
                  style: TextStyle(
                    color: blackColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 33,
                  ),
                ),
              ),
              ListView(
                shrinkWrap: true,
                children: const [
                  gapH30,
                  CardWidget(
                    nameMed: "الزنك",
                    time: "5:30 ص",
                    medIcons: true,
                    done: true,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
