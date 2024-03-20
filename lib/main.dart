import 'package:flutter/material.dart';
import 'package:project_8/data/service/supabase_configration.dart';
import 'package:project_8/helper/colors.dart';
import 'package:project_8/pages/HomePage/home_page.dart';

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
    return  MaterialApp(
      theme: ThemeData(
       bottomAppBarTheme: BottomAppBarTheme(color: whit)
      ),
      debugShowCheckedModeBanner: false,
      home:const BottomBarScreen()
    );
  }
}
