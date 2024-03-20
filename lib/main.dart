import 'package:flutter/material.dart';
import 'package:project_8/pages/add_medication_page.dart';
import 'package:project_8/pages/edit_midication.dart';
import 'package:project_8/pages/first_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_8/pages/signin_page.dart';
import 'package:project_8/pages/signup_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: GoogleFonts.vazirmatn().fontFamily),
        home: const Directionality(
            textDirection: TextDirection.rtl, child: EditMedicationPage()));
  }
}
