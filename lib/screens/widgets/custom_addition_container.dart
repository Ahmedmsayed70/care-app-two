// ignore_for_file: non_constant_identifier_names, prefer_const_constructors_in_immutables, prefer_typing_uninitialized_variables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdditionContainer extends StatelessWidget {
 AdditionContainer({super.key, required this.image, required this.text});

  final image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328.w,
      height: 158.h,
      decoration: BoxDecoration(boxShadow: const [
        BoxShadow(
            color: Color.fromARGB(255, 214, 212, 212),
            offset: Offset(1, 1),
            blurRadius: 5),
        BoxShadow(
            color: Color.fromARGB(255, 214, 212, 212),
            offset: Offset(-1, -1),
            blurRadius: 2),
      ], borderRadius: BorderRadius.circular(15), color: Color(0xfff5f5f5)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            width: 312.w,
            height: 104.h,
          ),
          SizedBox(
            height: 8.h,
          ),
          Text(text,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ))
        ],
      ),
    );
  }
}
