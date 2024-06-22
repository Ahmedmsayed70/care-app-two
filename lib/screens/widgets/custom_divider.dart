// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return  Divider(
                      height: 20, thickness: 1, color: Colors.white,
                    );
  }
}