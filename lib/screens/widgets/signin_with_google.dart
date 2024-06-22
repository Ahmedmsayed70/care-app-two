import 'package:care_app_two/helper/constant.dart';
import 'package:care_app_two/helper/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignWithGoogle extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const SignWithGoogle({this.text, required Future<Null> Function() onPressed});
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Container(
        // width: 400,
        height: MediaQuery.of(context).size.width * 0.16,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17).r,
          shape: BoxShape.rectangle,
          color: Colors.white,
          border: Border.all(
            color: const Color(0xffFF9500),
            width: 2.w,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              kGoogleImage,
              width: MediaQuery.of(context).size.width * 0.1,
              height: MediaQuery.of(context).size.width * 0.1,
            ),
            SizedBox(
              width: 10.w,
            ),
            Center(
              child: Text(
                text!,
                style: Styles.Style20.copyWith(color: kTextColor),
              ),
            ),
          ],
        ));
  }
}
