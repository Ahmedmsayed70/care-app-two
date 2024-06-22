import 'package:flutter/material.dart';

class CustomLogo extends StatelessWidget {
  const CustomLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Image.asset(
        'assets/images/logo.png',
        alignment: Alignment.topCenter,
      ),
    );
  }
}
