import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_8/data/service/supabase_configration.dart';
import 'package:project_8/pages/ai%20chat%20page/chat_screen.dart';
import 'package:project_8/pages/splach%20page/splach_page.dart';

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
        theme: ThemeData(fontFamily: GoogleFonts.vazirmatn().fontFamily),
        home: const Directionality(
            textDirection: TextDirection.rtl, child: ChatPage()));
  }
}
