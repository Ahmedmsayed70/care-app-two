// ignore_for_file: deprecated_member_use

import 'package:care_app_two/helper/constant.dart';
import 'package:care_app_two/helper/functions/custom_chat_bot_appbar.dart';

import 'package:care_app_two/screens/widgets/rectangle_calendar.dart';

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

/// My app class to display the date range picker
class CalendarTwo extends StatefulWidget {
  const CalendarTwo({super.key});

  @override
  CalendarTwoState createState() => CalendarTwoState();
}

/// State for MyApp
class CalendarTwoState extends State<CalendarTwo> {
  String _range = '';

  /// The method for [DateRangePickerSelectionChanged] callback, which will be
  /// called whenever a selection changed on the date picker widget.
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

  late DateTime dateTime;
  DateTime? start;
  DateTime? end;
  late TimeOfDay timeOfDay = TimeOfDay.now();
  @override
  void initState() {
    dateTime = DateTime.now();
    timeOfDay = TimeOfDay.now();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomCareAppbar(context, 'Calendar'),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(kBackgroundStart), fit: BoxFit.fill),
        ),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0).r,
              child: Stack(
                // fit: StackFit.passthrough,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0xffF6F6F6),
                        borderRadius: BorderRadius.circular(16).r,
                        border: Border.all(color: const Color(0xffCAC4D0))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        // Text('Selected date: $_selectedDate'),
                        // Text('Selected date count: $_dateCount'),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 8, left: 22, right: 11)
                                  .r,
                          child: Text(
                            _range,
                            style: TextStyle(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const Divider(),

                        //  Text('Selected ranges count: $_rangeCount')
                        SfDateRangePicker(
                          //showTodayButton: true,
                          monthCellStyle: DateRangePickerMonthCellStyle(
                              textStyle: TextStyle(
                                  fontSize: 15.sp,
                                  color: const Color(0xff1F1F1F),
                                  fontWeight: FontWeight.w400)

                              //color: Color(0xff1F1F1F),
                              ),
                          //selectionRadius: 100,
                          rangeTextStyle: TextStyle(
                              fontSize: 14.sp,
                              //color: Color(0xff1F1F1F),
                              fontWeight: FontWeight.w400),
                          selectionTextStyle: TextStyle(
                              fontSize: 14.sp,
                              //color: Color(0xff1F1F1F),
                              fontWeight: FontWeight.w400),
                          showActionButtons: false,
                          showNavigationArrow: true,
                          headerStyle: DateRangePickerHeaderStyle(
                              backgroundColor:
                                  const Color(0xffF6F6F6).withOpacity(0),
                              textStyle: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xff1F1F1F))),
                          headerHeight: 40.h,
                          //todayHighlightColor: Color(0xff0075FE),
                          selectionColor: const Color(0xff0075FE),
                          // rangeSelectionColor: const Color(0xff9FCBFF),
                          // endRangeSelectionColor: const Color(0xff0075FE),
                          // startRangeSelectionColor: const Color(0xff0075FE),
                          todayHighlightColor: const Color(0xff0075FE),
                          backgroundColor:
                              const Color(0xffF6F6F6).withOpacity(1),
                          onSelectionChanged: _onSelectionChanged,
                          selectionMode: DateRangePickerSelectionMode.single,
                          initialSelectedRange: PickerDateRange(
                              DateTime.now().subtract(const Duration(days: 4)),
                              DateTime.now().add(const Duration(days: 3))),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 350).r,
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Positioned(
                            top: 300,
                            child: RectCalendar(
                              text: 'Heart Doctor',
                              time: '1:00 AM',
                              icon: Icons.monitor_heart_outlined,
                            ))
                      ],
                    ),
                  ),

                  // TableCalendar(focusedDay: DateTime.now(),

                  // firstDay: DateTime.now(), lastDay: DateTime.now().add(Duration(days: 365*5)))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 180).r,
              child: IconButton(
                alignment: Alignment.bottomRight,
                onPressed: () async {
                  await showTime(context);

                  // await showDate(context);
                  // await showDateRange(context);
                },
                icon: CircleAvatar(
                  radius: 26.r,
                  backgroundColor: const Color(0xff0075FE),
                  child: const Icon(
                    Icons.add,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> showDateRange(BuildContext context) async {
    final resultRange = await showDateRangePicker(
      builder: (context, child) {
        return Theme(
            data: Theme.of(context).copyWith(
              hintColor: const Color(0xff0075FE),
              //Divider color
              dividerColor: Colors.grey,
              //Non selected days of the month color
              textTheme: const TextTheme(
                labelLarge: TextStyle(color: Color(0xff0075FE)),
                bodyMedium: TextStyle(color: Colors.black),
              ),
              colorScheme: const ColorScheme.light(
                primary: Color(0xff0075FE), // header background color
                onPrimary: Colors.white, // header text color

                secondary: Color(0xff9FCBFF),

                onSurface: Color(0xff1F1F1F), // body text color
                //surface:Colors.white ,
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
      barrierColor: const Color(0xff0075FE),
      helpText: 'Depart - Return dates',
      context: context,
      firstDate: DateTime(2000),
      lastDate: DateTime.now().add(
        const Duration(days: 365 * 5),
      ),
    );

    if (resultRange != null) {
      start = resultRange.start;
      end = resultRange.end;
    }
  }

  Future<void> showDate(BuildContext context) async {
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
      setState(() {
        dateTime = result;
      });
    }
  }

  Future<void> showTime(BuildContext context) async {
    final resultTime = await showTimePicker(
      builder: (context, child) {
        return Theme(
            data: Theme.of(context).copyWith(
              colorScheme: ColorScheme.light(
                  secondary: const Color(0xffFFC87A),
                  primary: const Color(0xff0075FE)
                      .withOpacity(0.289), // header background color
                  onPrimary: const Color(0xff21005D), // header text color
                  onSurface: const Color(0xff1F1F1F), // body text color
                  //surface:Colors.white ,
                  // onSecondary: Color(0xffDAEBFF)
                  //tertiary: Color(0xffDAEBFF)
                  // onTertiary: Color(0xffDAEBFF)
                  inversePrimary: Colors.blue),
              textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                  foregroundColor: const Color(0xff0075FE), // button text color
                ),
              ),
            ),
            child: child!);
      },
      context: context,
      initialTime: timeOfDay,
      initialEntryMode: TimePickerEntryMode.input,
      helpText: 'Enter time',
    );
    if (resultTime != null) {
      setState(() {
        timeOfDay = resultTime;
      });
    }
  }
}
