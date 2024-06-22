
import 'package:care_app_two/helper/constant.dart';
import 'package:care_app_two/screens/widgets/custom_signup_items.dart';
import 'package:flutter/material.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(kBackground), fit: BoxFit.fill),
        ),
      child: ListView(
      
      
        children: const [
          
          CustomSignupItems(),]
      ),
    );

  }
}
