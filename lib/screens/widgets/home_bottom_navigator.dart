//import 'package:care_app_two/screens/addition/addition_view.dart';
import 'package:care_app_two/screens/chat_bot_page/chatbot_view.dart';
import 'package:care_app_two/screens/homepage/home_view_body.dart';
import 'package:care_app_two/screens/scanPage/scan_view.dart';
import 'package:care_app_two/screens/setting/setting_view.dart';
//import 'package:care_app_two/screens/setting/setting_view.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class CustomNavigationBottomBar extends StatefulWidget {
  const CustomNavigationBottomBar({super.key});

  @override
  State<CustomNavigationBottomBar> createState() =>
      _CustomNavigationBottomBarState();
}

class _CustomNavigationBottomBarState extends State<CustomNavigationBottomBar> {
  List<dynamic> pages = [
    const HomeViewBody(),
    const ScanView(),
    const ChatBotView(),
    const SettingView(),
  ];
  int indexPage = 0;

  GlobalKey<CurvedNavigationBarState> globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          animationCurve: Curves.easeInOut,
          height: 60,
          //backgroundColor: Colors.white,
          //buttonBackgroundColor: kLogoColor,
          key: globalKey,
          index: 0,
          onTap: (index) {
            setState(() {
              indexPage = index;
            });
          },
          letIndexChange: (index) => true,
          animationDuration: const Duration(milliseconds: 300),
          // animationCurve: Curves.easeIn,
          items: const [
            Icon(Icons.home_outlined),
            Icon(Icons.document_scanner_outlined),
            Icon(Icons.chat_outlined),
            Icon(Icons.settings_outlined),
          ],),
      body: Container(
        child: pages[indexPage],
      ),
    );
  }
}
/* */ 