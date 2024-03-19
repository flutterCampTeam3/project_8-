import 'package:flutter/material.dart';
import 'package:project_8/helper/colors.dart';
import 'package:project_8/helper/sized.dart';
import 'package:project_8/pages/signin_page.dart';
import 'package:project_8/widgets/button_widget.dart';


class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [greenText, darkGreen],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          sizedBoxHeight250,
          Image.asset(
            'assets/images/saedLogo.png',
            width: 180,
          ),
          sizedBoxh50,
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: whiteColor, borderRadius: BorderRadius.circular(20)),
              child: Column(children: [
                sizedBoxh40,
                ButtonWidget(
                  text: "تسجيل دخول",
                  textColor: whiteColor,
                  backgroundColor: darkGreen,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SigninPage()));
                  },
                ),
                sizedBoxh30,
                ButtonWidget(
                  text: "  تسجيل الدخول كزائر",
                  textColor: blackColor,
                  backgroundColor: whiteColor,
                  onPressed: () {},
                ),
              ]),
            ),
          )
        ]),
      ),
    );
  }
}
