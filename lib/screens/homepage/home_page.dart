// ignore_for_file: unused_local_variable, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_typing_uninitialized_variables

import 'package:care_app_two/screens/widgets/navbar.dart';
import 'package:flutter/material.dart';

//import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Function? ontap;
    return Scaffold(
      // bottomNavigationBar:
      // CurvedNavigationBar(
      //     key: globalKey,
      //     index: 0,
      //     onTap: (index) {
      //       setState(() {
      //         indexPage = index;
      //       });
      //     },
      //     letIndexChange: (index) => true,
      //     animationDuration: Duration(milliseconds: 100),

      //     items: [

      //       Icon(Icons.home_outlined),
      //       // Icon(Icons.document_scanner_outlined),
      //       // Icon(Icons.add),

      //         Icon(Icons.chat_outlined),
      //       // Icon(Icons.settings),
      //     ]),
      //  bottomNavigationBar: CustomNavigationBottomBar(),
      //   body:HomeViewBody()
     // body: CustomNavigationBottomBar(),
     body:NavBar(),
    );
  }
}
