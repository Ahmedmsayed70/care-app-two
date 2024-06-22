// ignore_for_file: avoid_print

import 'package:care_app_two/helper/styles.dart';
import 'package:datepicker_dropdown/datepicker_dropdown.dart';
import 'package:datepicker_dropdown/order_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDateOfBirth extends StatefulWidget {
  const CustomDateOfBirth({super.key});

  @override
  State<CustomDateOfBirth> createState() => _CustomDateOfBirthState();
}

class _CustomDateOfBirthState extends State<CustomDateOfBirth> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //DropdownDatePicker
      height: 45.h,
      child: DropdownDatePicker(
        dateformatorder: OrderFormat.DMY, // default is myd
        inputDecoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10).r,
            borderSide: const BorderSide(color: Colors.grey),
          ),
          // border: OutlineInputBorder(
          //     borderRadius: BorderRadius.circular(10)
          //     ,)
        ), // optional
        isDropdownHideUnderline: true, // optional
        isFormValidator: true, // optional
        startYear: 1900, // optional
        endYear: 2020, // optional
        width: 4.w, isExpanded: true,
        // optional
        selectedDay: 21, // optional
        selectedMonth: 2, // optional
        selectedYear: 2000, // optional
        onChangedDay: (value) => print('onChangedDay: $value'),
        onChangedMonth: (value) => print('onChangedMonth: $value'),
        onChangedYear: (value) => print('onChangedYear: $value'),
        boxDecoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10).r,

          //border: Border.all(color : Color(0xffd4d5ee), width: 1.0)
        ), // optional
        // showDay: false,// optional
        dayFlex: 1, // optional
        monthFlex: 1,
        yearFlex: 1,
        locale: "en_abbv", // optional
        hintDay: 'Day', // optional
        hintMonth: 'Month', // optional
        hintYear: 'Year', // optional
        hintTextStyle: Styles.Style14,
        textStyle:
            Styles.Style13.copyWith(fontWeight: FontWeight.w700), // optional
      ),
    );
  }
}
