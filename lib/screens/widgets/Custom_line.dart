
// ignore_for_file: file_names

import 'package:care_app_two/helper/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomLine extends StatelessWidget {
  const CustomLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 25).r,
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xff022B3A),
              ),
              height: 1.h,
            ),
          ),
        ),
         SizedBox(
          width: 10.w,
        ),
         Text(
          'or',
          style: Styles.Style11,
        ),
         SizedBox(
          width: 10.w,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 25).r,
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xff022B3A),
              ),
              height: 1.h,
            ),
          ),
        ),
      ],
    );
  }
}
