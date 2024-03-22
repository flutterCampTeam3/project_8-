import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_8/data/service/supabase_configration.dart';
import 'package:project_8/helper/colors.dart';
import 'package:project_8/pages/HomePage/home_page.dart';
import 'package:project_8/pages/MedPage/med_page.dart';

import 'pages/NavBarPage/bootom_bar_bar.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await databaseConfig();
  await setup();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        bottomAppBarTheme: BottomAppBarTheme(color: whiteColor),
      ),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
