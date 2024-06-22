// ignore_for_file: unnecessary_import

import 'package:care_app_two/helper/constant.dart';
import 'package:care_app_two/helper/styles.dart';
import 'package:care_app_two/screens/calender_page/calendar_two.dart';
import 'package:care_app_two/screens/profile/profile_view.dart';
import 'package:care_app_two/screens/reports/reports_view.dart';
import 'package:care_app_two/screens/tips/tips_view.dart';
import 'package:care_app_two/screens/view_tasks/view_tasks.dart';
import 'package:care_app_two/screens/widgets/custom_home_rec.dart';
import 'package:care_app_two/screens/widgets/custom_home_squ.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(kBackgroundStart), fit: BoxFit.fill),
        ),
        child: Padding(
          padding: const EdgeInsets.only(right: 16, left: 16, bottom: 4).r,
          child: ListView(
            children: [
              //profilephoto and name
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return const ProfileView();
                              },
                            ),
                          );
                        },
                        child: CircleAvatar(
                          child: Image.asset('assets/images/person.png'),
                        ),
                      ),
                      SizedBox(
                        width: 6.w,
                      ),
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Hello!',
                            style: Styles.Style10,
                          ),
                          Text(
                            'Ahmed Anwar',
                            style: Styles.Style133,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  //logo and netification bill
                  Row(
                    children: [
                      const Text(
                        "car",
                        style: TextStyle(
                          fontFamily: 'Cairo',
                          fontSize: 49.07691955566406,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff0075FE),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Image.asset(
                          kLogo,
                          scale: 2.5,
                        ),
                      ),
                      SizedBox(
                        width: 95.w,
                      ),
                    ],
                  ),
                  // Actions(actions: , child: child)
                  const Icon(Icons.notifications_none),
                ],
              ),
              SizedBox(
                height: 26.h,
              ),
              //search container
              Container(
                height: 35.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xfff7f7f7),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(255, 206, 211, 211),
                        offset: Offset(1, 2),
                      )
                    ]),
                padding: const EdgeInsets.all(10).r,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Search..',
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff868484),
                      ),
                    ),
                    Icon(
                      Icons.search,
                      color: Color(0xff868484),
                      size: 18,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              //task measurment
              Container(
                padding: const EdgeInsets.only(top: 25, left: 36, right: 49).r,
                height: 140.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xff0074fe),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          const Text(
                            'Your Today’s tasks almost done ',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                          SizedBox(
                            height: 25.h,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return const ShowAllTasks();
                              }));
                            },
                            child: Container(
                              width: 90.w,
                              height: 35.h,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(13),
                              ),
                              child: Center(
                                child: Text(
                                  'View Tasks',
                                  style: Styles.Style133.copyWith(
                                      color: const Color(0xff0075FE)),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 60.w,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16).r,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset('assets/images/EllipseSubtract.png'),
                            Image.asset('assets/images/Subtract.png'),
                            Text(
                              '70 %',
                              style:
                                  Styles.Style16.copyWith(color: Colors.white),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Text(
                    'Highlights',
                    style:
                        Styles.Style18.copyWith(color: const Color(0xff1F1F1F)),
                  ),
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              const HomeRectangles(
                icon: Icons.alarm,
                text: 'Panadol',
                time: '2:00 AM',
              ),
              const HomeRectangles(
                icon: Icons.monitor_heart_outlined,
                text: 'Heart Doctor',
                time: '1:00 AM',
              ),
              const HomeRectangles(
                icon: Icons.local_fire_department_outlined,
                text: 'Light exercise',
                time: '1:00 - 1:45 AM',
              ),
              // SizedBox(
              //   height: 20.h,
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return const TipsView();
                          },
                        ),
                      );
                    },
                    child: const HomeSquare(
                      icon: Icons.tips_and_updates_outlined,
                      text: 'Tips',
                      color: Color(0xff329DFF),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return const ReportsView();
                          },
                        ),
                      );
                    },
                    child: const HomeSquare(
                      icon: Icons.insert_chart_outlined_outlined,
                      text: 'Reports',
                      color: Color(0xff1EBFC4),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return const CalendarTwo();
                          },
                        ),
                      );
                    },
                    child: const HomeSquare(
                      icon: Icons.calendar_month_outlined,
                      text: 'Calender',
                      color: Color(0xffED686C),
                    ),
                  ),
                 
                ],
              ),
               
            ],
          ),
        ));
  }
}
