import 'package:care_app_two/screens/widgets/signup_info_two.dart';
import 'package:flutter/material.dart';

class SignupViewTwo extends StatelessWidget {
  const SignupViewTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      //appBar: CustomAppbarBack(context),
      //extendBodyBehindAppBar: true,
      
        
        body:  
              ListView(children: const [SignupInfoTwo()])
           
    );
  }
}
