// ignore_for_file: prefer_const_constructors

import 'package:care_app_two/helper/constant.dart';
import 'package:care_app_two/helper/functions/custom_chat_bot_appbar.dart';

//import 'package:care_app_two/screens/widgets/custom_background.dart';
//import 'package:care_app_two/screens/widgets/custom_bottom_navigation_bar.dart';
import 'package:care_app_two/screens/widgets/custom_message_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatBotView extends StatelessWidget {
  const ChatBotView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomCareAppbar(context, 'Chat with AI Bot'),
      extendBodyBehindAppBar: true,
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(kBackgroundStart), fit: BoxFit.fill),
          ),
          child: ListView(
           // physics:,
            children: [
              Stack(children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                  ).r,
                  child: Container(
                      width: 400.w,
                      height: 560.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12).r,
                          color: const Color(0xffEEEEEE).withOpacity(0.5)),
                      child: Image.asset('assets/images/botimage.png')),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 560, right: 32, left: 32).r,
                  child: const CustomMessageTextfield(),
                )
              ])
              //const CustomBackground(image: kBackgroundStart),
            ],
          )),
    );

    //bottomNavigationBar:CustomBottomNavigationBar()

    // const CustomBottomNavigationBar(),
  }
}
