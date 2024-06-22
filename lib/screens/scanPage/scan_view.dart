import 'package:care_app_two/helper/constant.dart';
import 'package:care_app_two/helper/functions/custom_chat_bot_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScanView extends StatelessWidget {
  const ScanView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomCareAppbar(context, 'Scan'),
        extendBodyBehindAppBar: true,
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(kBackgroundStart), fit: BoxFit.fill),
            ),
            child: ListView(children: [
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
                        color: const Color(0xffCDCDCD).withOpacity(0.5)),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset('assets/images/Rectangle 23.png'),
                        Image.asset('assets/images/Scan_alt_light.png'),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 560).r,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Image.asset(
                          'assets/images/Img_load-box_duotone_line.png'),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset('assets/images/Ellipse 49.png'),
                          Image.asset('assets/images/Camera_fill.png'),
                        ],
                      ),
                      Image.asset('assets/images/lightning_fill.png')
                    ],
                  ),
                )
              ])
            ])));
  }
}
