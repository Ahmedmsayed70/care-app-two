// ignore_for_file: prefer_const_constructors

import 'package:care_app_two/helper/constant.dart';
import 'package:care_app_two/helper/functions/custom_chat_bot_appbar.dart';
import 'package:care_app_two/helper/styles.dart';
import 'package:care_app_two/screens/start_screen/start.dart';
import 'package:care_app_two/screens/widgets/custom_divider.dart';
import 'package:care_app_two/screens/widgets/custom_profile_rec.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_sign_in/google_sign_in.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key, this.ontap});
  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomCareAppbar(context, 'My Profile'),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          image:
              DecorationImage(image: AssetImage(kBackground), fit: BoxFit.fill),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: ListView(
            children: [
              SizedBox(
                height: 11.h,
              ),
              Image.asset(
                'assets/images/person.png',
                width: 89.w,
                height: 89.h,
              ),
              SizedBox(
                height: 9.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Ahmed Anwar',
                    style: TextStyle(
                      color: kTextColor,
                      fontFamily: 'Ciaro',
                      fontSize: 23.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Icon(
                      Icons.mode_edit_outline_outlined,
                      color: Color(0xffFF9500),
                      size: 15,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Active since',
                    style: Styles.Style111,
                  ),
                  Text(
                    '-Jul, 2020',
                    style: Styles.Style111,
                  ),
                ],
              ),
              SizedBox(
                height: 17.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Personal Information',
                    style: Styles.Style166.copyWith(
                      color: Color(0xff1F1F1F),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.mode_edit_outline_outlined,
                        color: Color(0xffFF9500),
                        size: 20,
                      ),
                      Text(
                        'Edit',
                        style: Styles.Style16.copyWith(
                          color: Color(0xffFF9500),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 7.h,
              ),
              Container(
                height: 316.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xfff6f6f6),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    ProfileRec(
                        icon: Icons.email_outlined,
                        icontext: 'Email',
                        endtext: 'Ahmed Anwar'),
                    CustomDivider(),
                    ProfileRec(
                        icon: Icons.date_range,
                        icontext: 'Birthdate',
                        endtext: '20/2/2000'),
                    CustomDivider(),
                    ProfileRec(icontext: 'Gender', endtext: 'Male'),
                    CustomDivider(),
                    ProfileRec(
                        icon: Icons.monitor_weight,
                        icontext: 'Weight',
                        endtext: '65kg'),
                    CustomDivider(),
                    ProfileRec(
                        icon: Icons.height_rounded,
                        icontext: 'Height',
                        endtext: '177 cm'),
                    CustomDivider(),
                    ProfileRec(
                        icon: Icons.medical_information_outlined,
                        icontext: 'The Disease',
                        endtext: 'cholesterol'),
                  ],
                ),
              ),
              SizedBox(
                height: 14.h,
              ),
              Text(
                'Utilities',
                style: Styles.Style166,
              ),
              SizedBox(
                height: 7.h,
              ),
              Container(
                height: 150.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xfff6f6f6),
                ),
                child: Column(
                  children: [
                    ProfileRec(
                        icon: Icons.phone_outlined,
                        icontext: 'Contact us',
                        endtext: ''),
                    CustomDivider(),
                    ProfileRec(
                        icon: Icons.help_outline,
                        icontext: 'Help',
                        endtext: ''),
                    CustomDivider(),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return const Start();
                            },
                          ),
                        );
                      },
                      child: GestureDetector(
                      onTap: () async {
                        GoogleSignIn googleSignIn = GoogleSignIn();
                        googleSignIn.disconnect();
                        // Logout logic (clear user data, etc.)
                        await FirebaseAuth.instance.signOut();
                        Navigator.of(context).pushNamedAndRemoveUntil("SIGNIN", (Route) => false);
     },
                      child: ProfileRec(
                          icon: Icons.logout, icontext: 'Log-Out', endtext: ''),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8.h,
              )

              /*
             /* SettingRec(
                */
              ),*/
              /*  SettingRec(
                icon: Icons.,
                titletext: ,
              ),*/
              /*  */
            ],
          ),
        ),
      ),
    );
  }
}
