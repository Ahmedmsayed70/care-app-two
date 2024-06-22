import 'package:care_app_two/helper/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDef extends StatelessWidget {
  const CustomDef( {super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: Styles.Style11.copyWith(
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ));
  }
}
