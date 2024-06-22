import 'package:care_app_two/helper/constant.dart';
import 'package:care_app_two/helper/functions/custom_chat_bot_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TipsView extends StatelessWidget {
  const TipsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomCareAppbar(context, 'Tips'),
        extendBodyBehindAppBar: true,
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(kBackgroundStart), fit: BoxFit.fill),
            ),
            child: Padding(
                padding: const EdgeInsets.only(
                        right: 16, left: 16, bottom: 8, top: 20)
                    .r,
                child: ListView(children: [
                  Column(children: [
                    Container(
                      // width: 328.w,
                      // height: 331.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15).r,
                          color: Color(0xfff5f5f5)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 10).r,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Color(0xffD5E8FF),
                                  child: Image.asset(
                                    'assets/images/Lamp_light.png',
                                    color: Color(0xff0075FE),
                                  ),
                                ),
                                SizedBox(
                                  width: 15.w,
                                ),
                                const Text("Diabetics",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ))
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 17.h,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8).r,
                            child: Image.asset(
                              'assets/images/imageAll.png',
                              scale: 0.5,
                            ),
                          ),
                          SizedBox(
                            height: 17.h,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8).r,
                            child: Text(
                                " 30 minutes of moderate exercise most days is your daily dose of awesome! It lowers blood sugar, improves insulin use, strengthens your heart, and even lifts your mood!",
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w500,
                                )),
                          ),
                          SizedBox(
                            height: 16.h,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 42.h,
                    ),
                    Container(
                      // width: 328.w,
                      // height: 331.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15).r,
                          color: Color(0xfff5f5f5)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 10).r,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  backgroundColor: const Color(0xffD5E8FF),
                                  child: Image.asset(
                                    'assets/images/Lamp_light.png',
                                    color: const Color(0xff0075FE),
                                  ),
                                ),
                                SizedBox(
                                  width: 15.w,
                                ),
                                const Text("hypertensive",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ))
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 17.h,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8).r,
                            child: Image.asset(
                              'assets/images/imageHyper.png',
                              scale: 0.5,
                            ),
                          ),
                          SizedBox(
                            height: 17.h,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8).r,
                            child: Text(
                                "Tame your pressure! Less salt (aim for 1 teaspoon daily), healthy diet (fruits, veggies, whole grains), and 30 minutes of exercise most days are your key weapons!",
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w500,
                                )),
                          ),
                          SizedBox(
                            height: 16.h,
                          )
                        ],
                      ),
                    ),
                  ])
                ]))));
  }
}
