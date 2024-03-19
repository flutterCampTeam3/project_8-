import 'package:flutter/material.dart';
import 'package:project_8/helper/colors.dart';
import 'package:project_8/helper/sized.dart';

class AddMedicationPage extends StatelessWidget {
  const AddMedicationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.16,
            height: MediaQuery.of(context).size.height * 0.07,
            decoration: BoxDecoration(
                color: greyColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(14),
                )),
            child: Center(
                child: Icon(
              Icons.arrow_back,
              color: darkGreyColor,
            )),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text(
              "إضافة دواء",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            sizedBoxh50,
            const Text(
              "اسم الدواء",
              style: TextStyle(fontSize: 15),
            ),
            TextField(
              decoration: InputDecoration(
                icon: Image.asset('assets/images/medIcon.png'),
                hintText: "اكتب.....",
                filled: true,
                fillColor: greyColor,
                border: InputBorder.none,
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(14),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
            ),
            sizedBoxh40,
            const Text(
              "اسم الدواء",
              style: TextStyle(fontSize: 15),
            ),
          ]),
        ),
      ),
    );
  }
}
