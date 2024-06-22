// ignore_for_file: prefer_const_constructors

//import 'package:care_app_two/helper/constant.dart';
import 'package:care_app_two/helper/constant.dart';
import 'package:care_app_two/helper/functions/custom_chat_bot_appbar.dart';
import 'package:care_app_two/helper/styles.dart';
import 'package:care_app_two/screens/homepage/home_page.dart';
import 'package:care_app_two/screens/signin/sign_in_two.dart';
import 'package:care_app_two/screens/signup/signup_screen.dart';
import 'package:care_app_two/screens/widgets/Custom_line.dart';
//import 'package:care_app_two/screens/widgets/custom_app_bar_items.dart';
import 'package:care_app_two/screens/widgets/custom_button.dart';
import 'package:care_app_two/screens/widgets/custom_text_feild.dart';
import 'package:care_app_two/screens/widgets/signin_with_google.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
//import 'package:care_app_two/screens/widgets/signup_with_google.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:google_sign_in/google_sign_in.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';
//import 'package:flutter/widgets.dart';

class SIGNIN extends StatefulWidget {
  const SIGNIN({super.key});

  @override
  State<SIGNIN> createState() => _SIGNINState();
}

class _SIGNINState extends State<SIGNIN> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  GlobalKey<FormState> formState = GlobalKey<FormState>();

  Future signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    if (googleUser == null) {
      return;
    }
    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  Color color = Colors.grey;
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(context),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          image:
              DecorationImage(image: AssetImage(kBackground), fit: BoxFit.fill),
        ),
        child: Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.only(top: 16),
            child: ListView(
              children: [
                // padding: EdgeInsets.symmetric(horizontal: 29),
                /*SizedBox(
                  height: 8,
                ),*/

                // CustomLogo(),
                Center(
                  child: Text('SIGN IN',
                      style: Styles.Style42.copyWith(color: Color(0xff0075FE))),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30).r,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15).r,
                        child: Text(
                          'Email',
                          style: Styles.Style15,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      CustomTextField(
                        backgroundColor: Color(0xffb7cfff),
                        controller: email,
                        validator: (val) {
                          if (val == "") {
                            return "Email can't be empty";
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15).r,
                        child: Text(
                          'Password',
                          style: Styles.Style15,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      CustomTextField(
                        controller: password,
                        obscureText:
                            true, // Assuming this is for password input
                        validator: (val) {
                          if (val == "") {
                            return "Password can't be empty";
                          }
                          return null;
                        },
                        // Add backgroundColor property here if desired, e.g.,
                        backgroundColor: Color(0xffb7cfff),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          Checkbox(
                              value: value,
                              checkColor: Colors.white,
                              activeColor: Color(0xff0075FE),
                              tristate: true,
                              shape: CircleBorder(),
                              onChanged: (newValue) {
                                setState(() {
                                  value = newValue ?? false;
                                });
                              })

                          // IconButton(
                          //   onPressed: () {
                          //     color = Colors.blue;
                          //     setState(() {});
                          //   },
                          //   icon: Icon(
                          //     FontAwesomeIcons.solidCircleCheck,
                          //     color: color,
                          //     size: 24,
                          //   ),
                          // ),
                          ,
                          Text(
                            'Remember me',
                            style: Styles.Style13,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      CustomButton(
                        nextIcon: false,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return HomePage();
                              },
                            ),
                          );
                        },
                        text: 'Sign In',
                        onPressed: () async {
                          try {
                            final credential = await FirebaseAuth.instance
                                .signInWithEmailAndPassword(
                                    email: email.text, password: password.text);
                            if (credential.user!.emailVerified) {
                              FirebaseAuth.instance.currentUser!
                                  .sendEmailVerification();
                              Navigator.of(context)
                                  .pushReplacementNamed("Homepage");
                            } else {
                              AwesomeDialog(
                                context: context,
                                dialogType: DialogType.error,
                                animType: AnimType.rightSlide,
                                title: 'Error',
                                desc: 'Please Verified Your Email.',
                                btnCancelOnPress: () {},
                                btnOkOnPress: () {},
                              )..show();
                            }
                          } on FirebaseAuthException catch (e) {
                            if (e.code == 'user-not-found') {
                              print('No user found for that email.');
                              AwesomeDialog(
                                context: context,
                                dialogType: DialogType.error,
                                animType: AnimType.rightSlide,
                                title: 'Error',
                                desc: 'No user found for that email.',
                                btnCancelOnPress: () {},
                                btnOkOnPress: () {},
                              )..show();
                            } else if (e.code == 'wrong-password') {
                              print('Wrong password provided for that user.');
                              AwesomeDialog(
                                context: context,
                                dialogType: DialogType.error,
                                animType: AnimType.rightSlide,
                                title: 'Error',
                                desc: 'Wrong password provided for that user.',
                                btnCancelOnPress: () {},
                                btnOkOnPress: () {},
                              )..show();
                            }
                          }
                        },
                      ),
                      SizedBox(
                        height: 9.h,
                      ),
                      Center(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) {
                                  return SigninTwo();
                                },
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8).r,
                            child: Text(
                              'Forgot Password?',
                              style: Styles.Style12,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      CustomLine(),
                      SizedBox(
                        height: 10.h,
                      ),
                      SignWithGoogle(
                        text: "Sign In with Google",
                        onPressed: () async {
                          signInWithGoogle();
                          // Handle successful Google sign-in (e.g., navigate to homepage)
                          Navigator.of(context)
                              .pushReplacementNamed("Homepage");
                        },
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Don’t have an account?',
                            style: Styles.Style12,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const SignUpView();
                                  },
                                ),
                              );
                            },
                            child: Text(
                              'Sign up',
                              style: TextStyle(
                                color: Color(0xff0062D6),
                                fontFamily: 'Cairo',
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 40.h)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
