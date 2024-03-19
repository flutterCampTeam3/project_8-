import 'package:flutter/material.dart';
import 'package:project_8/helper/colors.dart';
import 'package:project_8/helper/sized.dart';
import 'package:project_8/widgets/button_widget.dart';
import 'package:project_8/widgets/textfield_widget.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.47,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: LinearGradient(
                    colors: [greenText, darkGreen],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    sizedBoxh60,
                    Image.asset(
                      'assets/images/saedLogo.png',
                      width: 150,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "  تسجيل الدخول",
                          style: TextStyle(
                              color: whiteColor,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ]),
            ),
          ),
          TextFieldWidget(
            text: "الايميل",
          ),
          TextFieldWidget(
            text: "كلمة المرور",
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TextButton(
                onPressed: () {},
                child: Text(
                  "هل نسيت كلمة المرور؟",
                  style: TextStyle(
                      color: greenText,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                )),
          ),
          ButtonWidget(
            backgroundColor: darkGreen,
            text: "تسجيل دخول",
            onPressed: () {},
            textColor: whiteColor,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  "سجل الآن",
                  style: TextStyle(fontSize: 20, color: greenText),
                ),
              ),
              const Text(
                "لا يوجد لديك حساب",
                style: TextStyle(fontSize: 20),
              )
            ],
          )
        ],
      ),
    );
  }
}
