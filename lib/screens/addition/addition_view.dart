// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:care_app_two/helper/constant.dart';
import 'package:care_app_two/helper/functions/custom_chat_bot_appbar.dart';
import 'package:care_app_two/screens/addition/addition_doctor.dart';
import 'package:care_app_two/screens/addition/addition_two.dart';
//import 'package:care_app_two/helper/styles.dart';
import 'package:care_app_two/screens/widgets/custom_addition_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdditionView extends StatelessWidget {
  const AdditionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomCareAppbar(context, 'Addition'),
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
              SizedBox(
                height: 78.h,
              ),
              Text('Add to your schedule',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  )),
              SizedBox(
                height: 11.h,
              ),
              GestureDetector(
                onTap: () {
                   Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return AdditionTwo();
                          },
                        ),
                      );
                },
                child: AdditionContainer(
                    image: ('assets/images/medicine.png'), text: 'Medicine'),
              ),
              SizedBox(height: 16.h),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return AdditionDoctor();
                          },
                        ),
                      );
                  
                },
                child: AdditionContainer(
                    image: ('assets/images/tests.png'),
                    text: 'Doctor\'s appointment / tests / x-rays'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
