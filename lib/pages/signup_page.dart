import 'package:flutter/material.dart';
import 'package:project_8/helper/colors.dart';
import 'package:project_8/helper/sized.dart';
import 'package:project_8/widgets/button_widget.dart';
import 'package:project_8/widgets/textfield_widget.dart';


class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.33,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: LinearGradient(
                    colors: [greenText, darkGreen],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 10),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    sizedBoxh60,
                    Image.asset(
                      'assets/images/saedLogo.png',
                      width: 100,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "  تسجيل حساب",
                            style: TextStyle(
                                color: whiteColor,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    )
                  ]),
            ),
          ),
          TextFieldWidget(
            text: "الاسم",
          ),
          TextFieldWidget(
            text: "الايميل",
          ),
          TextFieldWidget(
            text: "كلمة المرور",
          ),
          sizedBoxh30,
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
                  "تسجيل الدخول",
                  style: TextStyle(fontSize: 20, color: greenText),
                ),
              ),
              const Text(
                " يوجد لديك حساب؟",
                style: TextStyle(fontSize: 20),
              )
            ],
          )
        ],
      ),
    );
  }
}
