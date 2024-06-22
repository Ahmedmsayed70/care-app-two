// ignore_for_file: prefer_const_constructors

import 'package:care_app_two/helper/constant.dart';
import 'package:care_app_two/helper/functions/custom_chat_bot_appbar.dart';
import 'package:care_app_two/helper/styles.dart';
import 'package:care_app_two/screens/widgets/custom_content.dart';
import 'package:care_app_two/screens/widgets/custom_defenition.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WeeklyReport extends StatelessWidget {
  const WeeklyReport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomCareAppbar(context, 'Reports'),
        extendBodyBehindAppBar: true,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(kBackgroundStart), fit: BoxFit.fill),
          ),
          child: ListView(
            children: [
              SizedBox(
                height: 84.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16).r,
                child: Container(
                  width: 328,
                  height: 560,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xfff5f5f5)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16,top: 14).r,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Color(0xffD5E8FF),
                              child: Icon(
                                Icons.text_snippet_outlined,
                                color: Color(0xff0075FE),
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              'Weekly Report',
                              style: Styles.Style18,
                            ),
                          ],
                        ),
                        CustomDef(
                          text: 'Details:',
                        ),
                        Text('Medication Compliance:',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            )),
                        CustomContent(
                          text:
                              '[Detailed description of the patient’s  adherence to ]',
                        ),
                        CustomDef(
                          text: 'Doctor’s Appointments:',
                        ),
                        CustomContent(
                          text:
                              '[Detailed description of any appointments with  the attending physician . ]',
                        ),
                        CustomDef(
                          text: 'Notes:',
                        ),
                        CustomContent(
                          text:
                              '[Detailed description of any other important  notes regarding the patient’s condition,. ]',
                        ),
                        CustomDef(
                          text: 'Overall Assessment:',
                        ),
                        CustomContent(
                          text:
                              '[Describe the overall assessment of the patient’s  condition during the week, ]',
                        ),
                        CustomDef(
                          text: 'Recommendations:',
                        ),
                        CustomContent(
                          text:
                              '[Describe the recommendations for the patient for  the coming week, ]',
                        ),
                        CustomDef(
                          text: 'Note:',
                        ),
                        CustomContent(
                          text:
                              'This is a sample fictitious report, please modify it  according to the actual patient’s condition. ',
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
