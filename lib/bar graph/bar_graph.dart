// ignore_for_file: unused_local_variable, prefer_const_constructors, sort_child_properties_last, unused_import

import 'package:care_app_two/bar%20graph/bar_data.dart';
import 'package:care_app_two/helper/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarGraph extends StatelessWidget {
  final List weeklySummary;
  const BarGraph({super.key, required this.weeklySummary});

  @override
  Widget build(BuildContext context) {
    BarData myBarData = BarData(
      day1Amount: weeklySummary[0],
      day2Amount: weeklySummary[1],
      day3Amount: weeklySummary[2],
      day4Amount: weeklySummary[3],
      day5Amount: weeklySummary[4],
      day6Amount: weeklySummary[5],
      day7Amount: weeklySummary[6],
      day8Amount: weeklySummary[7],
      day9Amount: weeklySummary[8],
      day10Amount: weeklySummary[9],
      day11Amount: weeklySummary[10],
    );
    myBarData.initializeBarData();
    return BarChart(
      BarChartData(
          maxY: 100,
          minY: 0,
          gridData: FlGridData(show: false),
          borderData: FlBorderData(show: false),
          titlesData: FlTitlesData(
            show: true,
            topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          
          ),
          barGroups: myBarData.barData
              .map(
                (data) => BarChartGroupData(
                  x: data.x,
                  barRods: [
                    BarChartRodData(
                      toY: data.y,
                      color: Color(0xff0075FE).withOpacity(0.5),
                      width: 14,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ],
                ),
              )
              .toList()),
    );
  }
}

