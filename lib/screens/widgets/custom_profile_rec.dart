// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:care_app_two/helper/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileRec extends StatelessWidget {
  const ProfileRec({
    super.key,
    required this.icontext,
    this.endtext,
    this.icon,
  });
  final icontext;
  final endtext;
  final icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icon),
              SizedBox(
                width: 9.w,
              ),
              Text(
                icontext,
                style: Styles.Style16,
              ),
            ],
          ),
          Text(
            endtext,
            style: Styles.Style16,
          ),
        ],
      ),
    );
  }
}
