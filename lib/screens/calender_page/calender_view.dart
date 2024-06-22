// Copyright 2019 Aleksander Woźniak
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_modal_date_picker/flutter_modal_date_picker.dart';

class CalendarOne extends StatefulWidget {
  const CalendarOne({super.key});

  @override
  _CalendarOneState createState() => _CalendarOneState();
}

class _CalendarOneState extends State<CalendarOne> {
  // CalendarFormat _calendarFormat = CalendarFormat.month;
  // DateTime _focusedDay = DateTime.now();
  // DateTime? _selectedStartDay;
  // DateTime? _selectedEndDay;
  // DateTime? _selectedDay;
String date = "";
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            child: const Text(
              'show date picker',
              style: TextStyle(fontSize: 30),
            ),
            onPressed: () async {
              String chosenDate =
                  await showModalDatePicker(context, DateTime.now());
              setState(() {
                date = chosenDate;
              });
            },
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            date,
            style: const TextStyle(
              backgroundColor: Colors.amber,
              fontSize: 30
            ),
          )
        ],
      ),
    );
    
    
    // Scaffold(
    //   appBar: CustomCareAppbar(context, 'Calendar'),
    //   extendBodyBehindAppBar: true,
    //   body: Padding(
    //     padding: const EdgeInsets.only(top: 70, left: 16, right: 16).r,
    //     child: Column(
    //       children: [
    //         Text('$_selectedStartDay - $_selectedEndDay - $_focusedDay',
    //             style: TextStyle(
    //               fontSize: 22,
    //               fontWeight: FontWeight.w400,
    //             )),
    //         TableCalendar(
    //           headerVisible: false,
    //           rangeStartDay: _selectedStartDay,
    //           rangeEndDay: _selectedEndDay,
    //           calendarStyle: CalendarStyle(
    //             rangeHighlightColor: Color(0xff9FCBFF),
    //             markerDecoration: const BoxDecoration(
    //                 color: const Color(0xFF9FCBFF), shape: BoxShape.rectangle),
    //             todayTextStyle: const TextStyle(
    //                 color: const Color(0xFFFAFAFA), fontSize: 16.0),
    //             todayDecoration: const BoxDecoration(
    //                 color: const Color(0xFF0075FE), shape: BoxShape.circle),
    //             selectedTextStyle: const TextStyle(
    //                 color: const Color(0xFFFAFAFA), fontSize: 16.0),
    //             selectedDecoration: const BoxDecoration(
    //                 color: const Color(0xFF0075FE), shape: BoxShape.circle),
    //             rangeStartTextStyle: const TextStyle(
    //                 color: const Color(0xFFFAFAFA), fontSize: 16.0),
    //             rangeStartDecoration: const BoxDecoration(
    //                 color: const Color(0xFF0075FE), shape: BoxShape.circle),
    //             rangeEndTextStyle: const TextStyle(
    //                 color: const Color(0xFFFAFAFA), fontSize: 16.0),
    //             rangeEndDecoration: const BoxDecoration(
    //                 color: const Color(0xFF0075FE), shape: BoxShape.circle),
    //             withinRangeTextStyle: const TextStyle(),
    //             withinRangeDecoration: const BoxDecoration(
    //                 shape: BoxShape.rectangle, color: Color(0xff9FCBFF)),
    //             outsideTextStyle:
    //                 const TextStyle(color: const Color(0xFFAEAEAE)),
    //             outsideDecoration: const BoxDecoration(shape: BoxShape.circle),
    //             disabledTextStyle:
    //                 const TextStyle(color: const Color(0xFFBFBFBF)),
    //           ),
    //           // headerStyle: HeaderStyle(
    //           //   //titleTextFormatter: (date, locale) => DateFormat.yM(locale).format(date),
    //           //   titleTextStyle: TextStyle(
    //           //     fontSize: 18.sp,
    //           //     fontWeight: FontWeight.w500,
    //           //     color: Color(0xff1F1F1F),
    //           //   ),
    //           //   formatButtonVisible: false,
    //           // ),
    //           firstDay: DateTime.utc(1900, 10, 16),
    //           lastDay: DateTime.utc(2030, 3, 14),
    //           focusedDay: _focusedDay,

    //           calendarFormat: _calendarFormat,

    //           // selectedDayPredicate: (day ) {
    //           //   // Use `selectedDayPredicate` to determine which day is currently selected.
    //           //   // If this returns true, then `day` will be marked as selected.

    //           //   // Using `isSameDay` is recommended to disregard
    //           //   // the time-part of compared DateTime objects.
    //           //   return isSameDay(_selectedStartDay, day) &&
    //           //       isSameDay(_selectedEndDay, day);
    //           // },
    //           onRangeSelected: (start, end, focusedDay) {
    //             setState(() {
    //               _selectedStartDay = start;
    //               _selectedEndDay = end;
    //               _focusedDay = focusedDay;
    //             });
    //           },
    //           // onDaySelected: (selectedDay, focusedDay) {
                
    //           //   if (!isSameDay(_selectedStartDay, selectedDay)) {
    //           //     // Call `setState()` when updating the selected day
    //           //     setState(() {
    //           //       _selectedStartDay = selectedDay;
    //           //       _selectedEndDay = focusedDay;
    //           //       // _selectedEndDay = focusedDay;
    //           //       //_focusedDay = _selectedEndDay!;
    //           //     });
    //           //   }
    //           // },
    //           onFormatChanged: (format) {
    //             if (_calendarFormat != format) {
    //               // Call `setState()` when updating calendar format
    //               setState(() {
    //                 _calendarFormat = format;
    //               });
    //             }
    //           },
    //           onPageChanged: (focusedDay) {
    //             // No need to call `setState()` here
    //             _focusedDay = focusedDay;
    //           },
    //         ),
    //       ],
    //     ),
    //   ),
    // );
 
 
  }
}
