// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContent extends StatelessWidget {
  const CustomContent({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 5).r,
            child: Icon(Icons.stop, color: Colors.black, size: 8),
          ),
          SizedBox(
            width: 6,
          ),
          Text(text,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
              )),
          
        ],
      ),
    );
  }
}
