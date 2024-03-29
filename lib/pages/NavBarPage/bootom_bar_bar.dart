import 'package:flutter/material.dart';
import 'package:project_8/helper/colors.dart';
import 'package:project_8/helper/extintion.dart';
import 'package:project_8/pages/AddPage/add_page.dart';
import 'package:project_8/pages/NavBarPage/widgets/floating_postion.dart';
import 'package:project_8/pages/ScanPage/scan.dart';
import '../AskPage/ask_page.dart';
import '../HomePage/home_page.dart';
import '../MedPage/med_page.dart';


class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({super.key});

  @override
  _BottomBarScreenState createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  int currentTap = 0;

  @override
  final List<Widget> Screen = [
    const HomePage(),
    const MedPage(),
    const AddPage(),
    const ScanPage(),
    const AskPage(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(56),
          boxShadow: const [
            BoxShadow(
                color: Color.fromRGBO(27, 209, 93, 0.2),
                offset: Offset(0, 8),
                spreadRadius: 0,
                blurRadius: 24),
          ],
        ),
        child: FloatingActionButton(
          onPressed: () {
            context.pushTo(view: const AddPage());
          },
          backgroundColor: teal,
          child: Icon(Icons.add, color: whiteColor),
        ),
      ),
      floatingActionButtonLocation: const CustomFloatingActionButtonLocation(
        FloatingActionButtonLocation.centerDocked,
        offsetY: 25.0, //  move the button downwards
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: whiteColor,
        notchMargin: 10,
        child: SizedBox(
          height: kBottomNavigationBarHeight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = const HomePage();
                        currentTap = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        currentTap == 0
                            ? Image.asset("assets/menu1.png")
                            : Image.asset("assets/menu0.png"),
                        Text(
                          'الرئيسية',
                          style: TextStyle(
                            color: currentTap == 0 ? teal : gray,
                          ),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = const MedPage();
                        currentTap = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        currentTap == 1
                            ? Image.asset("assets/pall1.png")
                            : Image.asset("assets/pall0.png"),
                        Text(
                          'أدويتي',
                          style: TextStyle(
                            color: currentTap == 1 ? teal : gray,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              //Right Tap Bar
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = const AskPage();
                        currentTap = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        currentTap == 2
                            ? Image.asset("assets/message1.png")
                            : Image.asset("assets/message0.png"),
                        Text(
                          'اسأل ساعد',
                          style: TextStyle(
                            color: currentTap == 2 ? teal : gray,
                          ),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = const ScanPage();
                        currentTap = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        currentTap == 3
                            ? Image.asset("assets/scan1.png")
                            : Image.asset("assets/scan0.png"),
                        Text(
                          'مسح دواء',
                          style: TextStyle(
                            color: currentTap == 3 ? teal : gray,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
