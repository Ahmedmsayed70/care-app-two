// ignore_for_file: prefer_const_constructors

import 'package:care_app_two/helper/constant.dart';
import 'package:care_app_two/screens/signin/sign_in.dart';
import 'package:care_app_two/screens/signup/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StartViewBody extends StatelessWidget {
  const StartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(kBackgroundStart), fit: BoxFit.fill),
      ),
      child: ListView(
        padding: const EdgeInsets.only(top: 67, right: 33, left: 33).r,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "car",
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: 155.07691955566406.sp,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff0075FE),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50).r,
                child: Image.asset(
                  kLogo,
                  scale: 0.7.r,
                  width: MediaQuery.of(context).size.width * 0.25,
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Center(
            child: Text(
              'Welcome ',
              style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: 36.sp,
                fontWeight: FontWeight.w700,
                color: const Color(0xff0075FE),
              ),
            ),
          ),
          SizedBox(
            height: 94.h,
          ),
          Container(
            width: 283.w,
            height: 61.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10).r, color: Colors.white),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const SignUpView();
                    },
                  ),
                );
              },
              child: Container(
                height: 61.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10).r,
                  shape: BoxShape.rectangle,
                  color: Colors.white,
                  border: Border.all(
                    color: const Color(0xffFF9500),
                    width: 2.w,
                  ),
                ),
                child: Center(
                  child: Text(
                    'START NOW',
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xffFF9500),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 26.h,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const SIGNIN();
                  },
                ),
              );
            },
            child: Container(
              height: 61.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10).r,
                shape: BoxShape.rectangle,
                color: kButtonColor,
                border: Border.all(
                  color: kButtonColor,
                  width: 2.w,
                ),
              ),
              child: Center(
                child: Text(
                  'SIGN IN',
                  style: TextStyle(
                    fontFamily: 'Cairo',
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30.h,
          )
        ],
      ),
    );
  }
}
