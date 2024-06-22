import 'package:care_app_two/screens/widgets/signup_info_two.dart';
import 'package:flutter/material.dart';

class SignupViewTwoBody extends StatelessWidget {
  const SignupViewTwoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView(
      children: const [
        
        Stack(
        clipBehavior: Clip.none,
        children: [
        
        
      
        SignupInfoTwo()
      ]),
    ]);
  }
}
