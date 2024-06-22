import 'package:care_app_two/bar%20graph/individual_bar.dart';

class BarData {
  final double day1Amount;
  final double day2Amount;
  final double day3Amount;
  final double day4Amount;
  final double day5Amount;
  final double day6Amount;
  final double day7Amount;
  final double day8Amount;
  final double day9Amount;
  final double day10Amount;
  final double day11Amount;

  BarData({
    required this.day1Amount,
    required this.day2Amount,
    required this.day3Amount,
    required this.day4Amount,
    required this.day5Amount,
    required this.day6Amount,
    required this.day7Amount,
    required this.day8Amount,
    required this.day9Amount,
    required this.day10Amount,
    required this.day11Amount,
  });

  List<IndividualBar> barData = [];

  void initializeBarData() {
    barData = [
      IndividualBar(x: 0, y: day1Amount),
      IndividualBar(x: 1, y: day2Amount),
      IndividualBar(x: 2, y: day3Amount),
      IndividualBar(x: 3, y: day4Amount),
      IndividualBar(x: 4, y: day5Amount),
      IndividualBar(x: 5, y: day6Amount),
      IndividualBar(x: 6, y: day7Amount),
      IndividualBar(x: 7, y: day8Amount),
      IndividualBar(x: 8, y: day9Amount),
      IndividualBar(x: 9, y: day10Amount),
      IndividualBar(x: 10, y: day11Amount),
    ];
  }
}
