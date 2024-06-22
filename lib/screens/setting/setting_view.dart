// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, non_constant_identifier_names

import 'package:care_app_two/helper/constant.dart';
import 'package:care_app_two/helper/functions/custom_chat_bot_appbar.dart';
import 'package:care_app_two/helper/styles.dart';
import 'package:care_app_two/screens/widgets/custom_divider.dart';
import 'package:care_app_two/screens/widgets/custom_settingrow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/*class SettingView extends StatelessWidget {
  const SettingView({super.key});

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomCareAppbar(context, 'Setting'),
        extendBodyBehindAppBar: true,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(kBackgroundStart), fit: BoxFit.fill),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ListView(
              children: [
                SizedBox(height: 56.h),
                Text(
                  'Notification',
                  style: Styles.Style166,
                ),
                SizedBox(
                  height: 11,
                ),
                Container(
                  height: 280.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xfff6f6f6),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 20),
                    child: Column(
                      children: [
                        SetRow(
                          text: 'General Notification',
                          icon: Icons.toggle_on,
                         
                          //icon: (),
                        ),
                        LineSetting(),
                        SetRow(
                          text: 'Sound',
                        ),
                        LineSetting(),
                        SetRow(
                          text: 'Vibrate ',
                          icon: (Icons.toggle_off),
                        ),
                        LineSetting(),
                        SetRow(
                          text: ' App Updates',
                          icon: (Icons.toggle_on),
                        ),
                        LineSetting(),
                        SetRow(
                          text: ' New Service Available',
                          icon: (Icons.toggle_on),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 47.h,
                ),
                Container(
                    height: 98.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xfff6f6f6),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, top: 11),
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.privacy_tip_outlined),
                              SizedBox(
                                width: 7.w,
                              ),
                              Text(
                                'Privacy Policy',
                                style: Styles.Style16,
                              )
                            ],
                          ),
                        ),
                        LineSetting(),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.check_circle_outline_rounded),
                              SizedBox(
                                width: 7.w,
                              ),
                              Text(
                                'Terms of Use',
                                style: Styles.Style16,
                              )
                            ],
                          ),
                        ),
                      ]),
                    ))
              ],
            ),
          ),
        ));
  }
}*/

class SettingView extends StatefulWidget {
  const SettingView({super.key});

  @override
  State<SettingView> createState() => _SettingViewState();
}

class _SettingViewState extends State<SettingView> {
  bool valNotify1 = true;
  bool valNotify2 = false;
  bool valNotify3 = false;
  bool valNotify4 = true;
  onChangeFunction1(bool newvalue1) {
    setState(() {
      valNotify1 = newvalue1;
    });
  }

  onChangeFunction2(bool newvalue2) {
    setState(() {
      valNotify2 = newvalue2;
    });
  }

  onChangeFunction3(bool newvalue3) {
    setState(() {
      valNotify3 = newvalue3;
    });
  }

  onChangeFunction4(bool newvalue4) {
    setState(() {
      valNotify4 = newvalue4;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomCareAppbar(context, 'Setting'),
        extendBodyBehindAppBar: true,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(kBackgroundStart), fit: BoxFit.fill),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ListView(
              children: [
                SizedBox(height: 56.h),
                Text(
                  'Notification',
                  style: Styles.Style166,
                ),
                SizedBox(
                  height: 11,
                ),
                Container(
                  height: 280.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xfff6f6f6),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 20),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildNotificationOption('General Notification',
                            valNotify1, onChangeFunction1),
                        CustomDivider(),
                        SetRow(
                          text: 'Sound',
                        ),
                        CustomDivider(),
                        buildNotificationOption(
                            'Vibrate', valNotify2, onChangeFunction2),
                        CustomDivider(),
                        buildNotificationOption(
                            'App Updates', valNotify3, onChangeFunction3),
                        CustomDivider(),
                        buildNotificationOption('Vew Service Available',
                            valNotify4, onChangeFunction4),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 47.h,
                ),
                Container(
                    height: 98.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xfff6f6f6),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(Icons.privacy_tip_outlined),
                                SizedBox(
                                  width: 7.w,
                                ),
                                Text(
                                  'Privacy Policy',
                                  style: Styles.Style16,
                                )
                              ],
                            ),
                            CustomDivider(),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 1,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.check_circle_outline_rounded),
                                  SizedBox(
                                    width: 7.w,
                                  ),
                                  Text(
                                    'Terms of Use',
                                    style: Styles.Style16,
                                  )
                                ],
                              ),
                            ),
                          ]),
                    ))
              ],
            ),
          ),
        ));
  }
}
