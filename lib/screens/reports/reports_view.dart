// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, unnecessary_import

import 'dart:async';
import 'dart:ffi';

import 'package:care_app_two/bar%20graph/bar_graph.dart';
import 'package:care_app_two/helper/constant.dart';
import 'package:care_app_two/helper/functions/custom_chat_bot_appbar.dart';
import 'package:care_app_two/helper/styles.dart';
import 'package:care_app_two/screens/reports/weekly_reports.dart';
import 'package:care_app_two/screens/widgets/custom_divider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class ReportsView extends StatefulWidget {
  const ReportsView({super.key});

  @override
  State<ReportsView> createState() => _ReportsViewState();
}

class _ReportsViewState extends State<ReportsView> {
  // ignore: unused_field
  String _range = '';
  // ignore: unused_element
  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    /// The argument value will return the changed date as [DateTime] when the
    /// widget [SfDateRangeSelectionMode] set as single.
    ///
    /// The argument value will return the changed dates as [List<DateTime>]
    /// when the widget [SfDateRangeSelectionMode] set as multiple.
    ///
    /// The argument value will return the changed range as [PickerDateRange]
    /// when the widget [SfDateRangeSelectionMode] set as range.
    ///
    /// The argument value will return the changed ranges as
    /// [List<PickerDateRange] when the widget [SfDateRangeSelectionMode] set as
    /// multi range.
    setState(() {
      if (args.value is PickerDateRange) {
        _range = ' ${DateFormat.MMMEd().format(args.value.startDate)} ';
        // -'
        // ignore: lines_longer_than_80_chars
        // ' ${DateFormat.MMMEd().format(args.value.endDate ?? args.value.startDate)}';
      } else if (args.value is DateTime) {
        _range = ' ${DateFormat.MMMEd().format(args.value)} ';
      } else if (args.value is List<DateTime>) {
      } else {}
    });
  }

  //String _range = '';

  /// The method for [DateRangePickerSelectionChanged] callback, which will be
  /// called whenever a selection changed on the date picker widget.

  List<double> weeklySummary = [25, 60, 79, 50, 59, 80, 100, 90, 90, 55, 40];
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16).r,
          child: ListView(
            children: [
              SizedBox(
                height: 10.h,
              ),
              Container(
                width: 328.w,
                height: 329.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25).r,
                    color: Color(0xfff6f6f6)),
                child: Padding(
                  padding: const EdgeInsets.all(15).r,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Color(0xffD5E8FF),
                                child: Icon(
                                  Icons.insert_chart_outlined_outlined,
                                  color: Color(0xff0075FE),
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                'Analysis',
                                style: Styles.Style166,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Container(
                            width: 180.w,
                            height: 30.h,
                            decoration: BoxDecoration(
                                border: Border.all(color: Color(0xffC2C2C2)),
                                borderRadius: BorderRadius.circular(12).r,
                                color: Color(0xfffdfdff)),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10).r,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.calendar_month_outlined,
                                    color: Color(0xffC2C2C2),
                                  ),
                                  SizedBox(
                                    width: 8.w,
                                  ),
                                  Text(
                                    // ignore: unnecessary_string_interpolations
                                    "${DateFormat.yMMMM().format(selectedDate.toLocal())}"
                                        .toString(),
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  ElevatedButton(
                                    style: ButtonStyle(
                                        iconSize: MaterialStatePropertyAll(0),
                                        //fixedSize:MaterialStatePropertyAll(MediaQuery.of(context).size),
                                        elevation: MaterialStatePropertyAll(0),
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                                Colors.transparent)),
                                    onPressed: () => _selectDate(context),
                                    child: Image.asset(
                                        'assets/images/Vector 12.png'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      SizedBox(
                        height: 230.h,
                        child: BarGraph(
                          weeklySummary: weeklySummary,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 27.h,
              ),
              Container(
                width: 328.w,
                height: 187.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25).r,
                    color: Color(0xfff6f6f6)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15).r,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(children: [
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
                          'Reports',
                          style: Styles.Style166,
                        ),
                      ]),
                      Padding(
                        padding: const EdgeInsets.only(left: 7).r,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 15).r,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Weekly Report',
                                    style: Styles.Style18.copyWith(
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff000000)),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '  View details',
                                        style: Styles.Style11.copyWith(
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 2.w,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (context) {
                                                return const WeeklyReport();
                                              },
                                            ),
                                          );
                                        },
                                        child: Icon(
                                          Icons.arrow_right_alt,
                                          color: Colors.black,
                                          size: 24,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              height: 20.h,
                              thickness: 1,
                              color: Color(0xffC2C2C2),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 15).r,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Monthly Report',
                                    style: Styles.Style18.copyWith(
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff000000)),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '  View details',
                                        style: Styles.Style11.copyWith(
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 2.w,
                                      ),
                                      GestureDetector(
                                        onTap: () {},
                                        child: Icon(
                                          Icons.arrow_right_alt,
                                          color: Colors.black,
                                          size: 24,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> showDate(BuildContext context) async {
    // dateTime = DateFormat.yMMMM().format(DateTime.now());
    final result = await showDatePicker(
      builder: (context, child) {
        return Theme(
            data: Theme.of(context).copyWith(
              colorScheme: const ColorScheme.light(
                primary: Color(0xff0075FE), // header background color
                onPrimary: Color(0xff1D1B20), // header text color
                onSurface: Color(0xff1F1F1F), // body text color
                surface: Colors.white,
              ),
              textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                    foregroundColor: const Color(0xff0075FE),
                    textStyle: const TextStyle(
                        color: Color(0xff0075FE)) // button text color
                    ),
              ),
            ),
            child: child!);
      },
      context: context,
      firstDate: DateTime(1950),
      lastDate: DateTime.now().add(
        const Duration(days: 365 * 5),
      ),
      helpText: 'Select date',
    );
    if (result != null) {
      setState() {
        // dateTime = DateFormat.yMMMM().format(result);
      }
    }
  }
}
