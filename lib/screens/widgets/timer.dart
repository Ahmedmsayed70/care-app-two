import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Timer extends StatefulWidget {
  const Timer({super.key});

  @override
  State<Timer> createState() => _TimerState();
}

class _TimerState extends State<Timer> {
  //DateTime now = DateTime.now();
  String formattedDate = DateFormat('kk : mm').format(DateTime.now());
  String formattedDateam = DateFormat('a').format(DateTime.now());
  String formattedDatess = DateFormat('ss').format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      
      radius: 120.0.r,
      lineWidth: 6.0.w,
      percent: 0.7,
      
      center: Row(
       mainAxisAlignment: MainAxisAlignment.center,
       mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            formattedDate,
            style: TextStyle(
              fontSize: 40.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
       SizedBox(width: 8.w,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  formattedDateam,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  formattedDatess,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          )
        
        ],
      ),
      progressColor: const Color(0xff0075FE),
    );
  }
}
