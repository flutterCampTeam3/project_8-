import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_8/helper/colors.dart';
import 'package:project_8/helper/sized.dart';
import 'package:project_8/pages/first_page.dart';


class SplachPage extends StatefulWidget {
  const SplachPage({super.key});

  @override
  State<SplachPage> createState() => _SplachPageState();
}

class _SplachPageState extends State<SplachPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const FirstPage()));
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [greenText, moreDarkGreenColor, green],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          sizedBoxHeight250,
          Image.asset(
            'assets/images/saedLogo.png',
            width: 180,
          )
        ]),
      ),
    );
  }
}
