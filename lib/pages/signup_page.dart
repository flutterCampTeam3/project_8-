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
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.33,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
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
                      'assets/images/newIcon.png',
                      width: 128,
                    ),
                    Container(
                      padding: const EdgeInsets.only(right: 20, top: 3),
                      alignment: Alignment.centerRight,
                      child: Text(
                        "  تسجيل حساب",
                        style: TextStyle(
                            color: whiteColor,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextFieldWidget(
                  text: "الاسم",
                ),
                sizedBoxh30,
                TextFieldWidget(
                  text: "الايميل",
                ),
                sizedBoxh30,
                TextFieldWidget(
                  text: "كلمة المرور",
                ),
                sizedBoxh50,
                ButtonWidget(
                  backgroundColor: darkGreen,
                  text: "تسجيل دخول",
                  onPressed: () {},
                  textColor: whiteColor,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      " يوجد لديك حساب؟",
                      style: TextStyle(fontSize: 20),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "تسجيل الدخول",
                        style: TextStyle(fontSize: 20, color: greenText),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
