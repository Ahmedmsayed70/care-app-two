import 'package:care_app_two/helper/constant.dart';
import 'package:care_app_two/helper/functions/custom_chat_bot_appbar.dart';

import 'package:care_app_two/screens/widgets/chatbot_bubble.dart';
import 'package:care_app_two/screens/widgets/custom_background.dart';
//import 'package:care_app_two/screens/widgets/custom_bottom_navigation_bar.dart';
import 'package:care_app_two/screens/widgets/custom_message_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatBotMessages extends StatelessWidget {
  const ChatBotMessages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomCareAppbar(context, 'Chat with AI Bot Now'),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Stack(children: [
          const CustomBackground(image: kBackgroundStart),
          Padding(
              padding: const EdgeInsets.only(
                      top: 70, left: 16, right: 16, bottom: 16)
                  .r,
              child: Container(
                width: 400.w,
                height: 600.h,
                decoration: BoxDecoration(
                    color: const Color(0xffeeeeee).withOpacity(0.5),
                    borderRadius: BorderRadius.circular(16)),
                child: Image.asset(
                  "assets/images/chatmessages.png",
                  scale: 0.1,
                ),
              )
              //  SizedBox(
              //   width: 400.w,
              //   height: 600.h,
              //   child: Image.asset(
              //     "assets/images/chatmessages.png",
              //     scale: 0.1,
              //   ),
              // ),
              ),
          Padding(
            padding: const EdgeInsets.only(top: 140, left: 16, right: 16).r,
            child: const Column(
              children: [
                ChatBubble(),
                ChatBubbleFromFrined(),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(
                top: 660,
                right: 24,
                left: 24,
              ).r,
              child: const CustomMessageTextfield()),
          SizedBox(
            height: 16.h,
          )
        ]),
      ),
      //bottomNavigationBar: const CustomNavigationBottomBar()
      //  const CustomBottomNavigationBar() // body: ListView(
    );
  }
}
