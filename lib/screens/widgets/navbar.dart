// ignore_for_file: prefer_const_constructors

//import 'package:care_app_two/screens/addition/addition_view.dart';
import 'package:care_app_two/screens/addition/addition_view.dart';
import 'package:care_app_two/screens/chat_bot_page/chatbot_view.dart';
import 'package:care_app_two/screens/homepage/home_view_body.dart';
import 'package:care_app_two/screens/scanPage/scan_view.dart';
import 'package:care_app_two/screens/setting/setting_view.dart';
// ignore: unused_import
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
//import 'package:care_app_two/screens/setting/setting_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  List screens = [
    HomeViewBody(),
    ScanView(),
    ChatBotView(),
    SettingView(),
  ];

  num currentindex = 0;
  PageController controller = PageController();

  void nextPage(index) {
    controller.jumpToPage(index);
    currentindex = index;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(
            top: 24,
          ).r,
          child: FloatingActionButton(
            mini: true,
            shape: CircleBorder(),
            backgroundColor: Colors.blue[700],
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AdditionView()),
              );
            },
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
        bottomNavigationBar: Container(
          clipBehavior: Clip.hardEdge,
          //color: Colors.white,

          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  'assets/images/rectangle1.png',
                ))
            //, color: Colors.transparent,
            // gradient: ,
            ,
            border: Border.all(color: Colors.transparent),
          ),
          child: BottomAppBar(
            color: Colors.transparent,
            elevation: 0,
            height: 50.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {
                    nextPage(0);
                    setState(() {});
                  },
                  icon: Icon(Icons.home_outlined,
                      color:
                          currentindex == 0 ? Colors.yellow[700] : Colors.grey),
                ),
                IconButton(
                  onPressed: () {
                    nextPage(1);
                    setState(() {});
                  },
                  icon: Icon(Icons.document_scanner_outlined,
                      color:
                          currentindex == 1 ? Colors.yellow[700] : Colors.grey),
                ),
                IconButton(
                    onPressed: () {
                      nextPage(2);
                      setState(() {});
                    },
                    icon: Icon(Icons.chat_outlined,
                        color: currentindex == 2
                            ? Colors.yellow[700]
                            : Colors.grey)),
                IconButton(
                    onPressed: () {
                      nextPage(3);
                      setState(() {});
                    },
                    icon: Icon(Icons.settings_outlined,
                        color: currentindex == 3
                            ? Colors.yellow[700]
                            : Colors.grey)),
              ],
            ),
          ),
        ),
        body: PageView.builder(
            controller: controller,
            itemCount: screens.length,
            itemBuilder: (context, index) {
              return screens[index];
            }),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  //         <-- CustomPainter class
  @override
  void paint(Canvas canvas, Size size) {
    //                                           <-- Insert your painting code here.
    final p1 = Offset(60, -30);
    final p2 = Offset(250, 150);
    final paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 4;
    canvas.drawLine(p1, p2, paint);
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return false;
  }
}
