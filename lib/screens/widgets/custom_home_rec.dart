// ignore_for_file: prefer_typing_uninitialized_variables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:care_app_two/helper/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeRectangles extends StatelessWidget {
  const HomeRectangles(
      {super.key,
      required this.icon,
      required this.text,
      required this.time,
      this.onTap});
  final icon;
  final String text;
  final String time;
  final void Function()? onTap;
  //final color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15).r,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(27),
          color: Colors.white,
          border: Border.all(
            color: Color(0xffF4F5F5),
            style: BorderStyle.solid,
            strokeAlign: BorderSide.strokeAlignOutside,
            width: 3,
          ),
        ),
        child: Row(
          children: [
            Container(
              // padding: EdgeInsets.only(top: 5,bottom: 5),
              width: 178.w,
              height: 66.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(27),
                color: Color(0xffF4F5F5),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 206, 211, 211),
                    offset: Offset(1, -2),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    width: 66.w,
                    height: 66.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(27),
                      color: Color(0xff0074fe),
                    ),
                    child: Center(
                      child: Icon(
                        icon,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20).r,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(text,
                            style: Styles.Style13.copyWith(
                                color: Color(0xff1F1F1F))),
                        Text(
                          time,
                          style: Styles.Style133.copyWith(
                                color: Color(0xff0075FE)),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80).r,
              child: GestureDetector(
                onTap: onTap,
                child: Container(
                  width: 66.7938461303711.w,
                  height: 27.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: Colors.white,
                    border: Border.all(
                        width: 1,
                        color: Color(0xffC2C2C2),
                        strokeAlign: BorderSide.strokeAlignInside,
                        style: BorderStyle.solid),
                  ),
                  child: Center(
                      child: Text(
                    "Check All",
                    style: Styles.Style133.copyWith(color: Color(0xff0075FE)),
                  )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
