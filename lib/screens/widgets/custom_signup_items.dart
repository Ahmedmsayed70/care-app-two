import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:care_app_two/helper/constant.dart';
import 'package:care_app_two/helper/styles.dart';
import 'package:care_app_two/screens/signin/sign_in.dart';
import 'package:care_app_two/screens/signup/signup_screen_two.dart';
import 'package:care_app_two/screens/widgets/Custom_line.dart';
import 'package:care_app_two/screens/widgets/custom_button.dart';
import 'package:care_app_two/screens/widgets/custom_logo.dart';
import 'package:care_app_two/screens/widgets/custom_text_feild.dart';
import 'package:care_app_two/screens/widgets/signup_with_google.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomSignupItems extends StatefulWidget {
  const CustomSignupItems({super.key});

  @override
  State<CustomSignupItems> createState() => _CustomSignupItemsState();
}

class _CustomSignupItemsState extends State<CustomSignupItems> {
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  GlobalKey<FormState> formState = GlobalKey<FormState>();

  Color color = Colors.grey;
  bool value = false;
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    bool onTap = false;
    return Padding(
      padding: const EdgeInsets.only(left: 28, right: 29).r,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(child: CustomLogo()),
          // SizedBox(
          //   height: 20.h,
          // ),
          Padding(
            padding: const EdgeInsets.only(top: 12).r,
            child: Center(
              child: Text(
                "SIGN UP",

                style: Styles.Style42.copyWith(color: kTextButtonColor),
                // textAlign: TextAlign.left,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 28,
              top: 24,
              bottom: 3,
            ).r,
            child: Text("Username", style: Styles.Style16),
          ),
          SizedBox(
            width: 350.w,
            height: 52.h,
            child: TextFormField(
              validator: (val) {
                if (val == "") {
                  return "Can't be Empty";
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 28,
              top: 24,
              bottom: 3,
            ).r,
            child: Text("Email", style: Styles.Style14),
          ),
          SizedBox(
            width:
                MediaQuery.of(context).size.width * 0.85, // 85% of screen width
            height: 52.0,
            child: TextFormField(
              controller: email,
              validator: (val) {
                if (val == "") {
                  return "Can't be Empty";
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 28,
              top: 24,
              bottom: 3,
            ).r,
            child: Text("Password", style: Styles.Style14),
          ),
          SizedBox(
            width:
                350.0, // Fixed width (consider using MediaQuery for responsiveness)
            height: 52.0, // Fixed height
            child: TextFormField(
              controller: password,
              obscureText: true,
              validator: (val) {
                if (val == "") {
                  return "Password can't be empty";
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10).r,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                    padding: const EdgeInsets.only(bottom: 12, right: 8).r,
                    child: InkWell(
                        onTap: () {
                          setState(() {
                            value = !value;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              shape: BoxShape.circle,
                              color: !value ? Colors.white : Colors.blue),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0).r,
                            child: value
                                ? const Icon(
                                    Icons.check,
                                    size: 18.0,
                                    color: Colors.white,
                                  )
                                : const Icon(
                                    Icons.check_box_outline_blank,
                                    size: 18.0,
                                    color: Colors.white,
                                  ),
                          ),
                        ))

                    //               Checkbox(value: value,

                    //               checkColor: Colors.white,
                    // activeColor: Color(0xff0075FE),
                    //  tristate: true,
                    // shape: CircleBorder(),
                    //                onChanged: (newValue) {setState(() {value=newValue?? false;

                    //                });

                    //                }
                    //                )
                    // IconButton(
                    //   // focusColor: color,
                    //   //color: Colors.blue,

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
                    ),
                Text.rich(
                  TextSpan(
                    text: 'I agree to the ',
                    style: Styles.Style11.copyWith(fontWeight: FontWeight.w800),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Terms & Conditions',
                        style: Styles.Style11.copyWith(
                            color: const Color(0xff0062D6).withOpacity(.8),
                            fontWeight: FontWeight.w800),
                      ),
                      TextSpan(
                          text: ' and ',
                          style: Styles.Style11.copyWith(
                              fontWeight: FontWeight.w800),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Privacy Policy',
                                style: Styles.Style11.copyWith(
                                    color:
                                        const Color(0xff0062D6).withOpacity(.8),
                                    fontWeight: FontWeight.w800))
                          ])
                    ],
                  ),
                ),
              ],
            ),
          ),
          CustomButton(
            nextIcon: true,
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const SignupViewTwo();
                  },
                ),
              );
            },
            text: "Next",
            onPressed: () async {
              if (formState.currentState!.validate()) {
                try {
                  final credential = await FirebaseAuth.instance
                      .createUserWithEmailAndPassword(
                    email: email.text,
                    password: password.text,
                  );
                  FirebaseAuth.instance.currentUser!.sendEmailVerification();
                  Navigator.of(context).pushReplacementNamed("Homepage");
                } on FirebaseAuthException catch (e) {
                  if (e.code == 'weak-password') {
                    print('The password provided is too weak.');
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.error,
                      animType: AnimType.rightSlide,
                      title: 'Error',
                      desc: 'The password provided is too weak..',
                      btnCancelOnPress: () {},
                      btnOkOnPress: () {},
                    )..show();
                  } else if (e.code == 'email-already-in-use') {
                    print('The account already exists for that email.');
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.error,
                      animType: AnimType.rightSlide,
                      title: 'Error',
                      desc: 'The account already exists for that email.',
                      btnCancelOnPress: () {},
                      btnOkOnPress: () {},
                    )..show();
                  }
                } catch (e) {
                  print(e);
                }
              }
            },
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 20).r,
            child: const CustomLine(),
          ),
          const SignupWithGoogle(),
          SizedBox(
            height: 11.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Already have an account?  ", style: Styles.Style11),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const SIGNIN();
                      },
                    ),
                  );
                },
                child: Text("Sign In",
                    style: Styles.Style11.copyWith(
                        color: const Color(0xff0062D6).withOpacity(.9))),
              ),
            ],
          ),
          SizedBox(
            height: 27.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 24).r,
                child: Image.asset('assets/images/Ellipse 69.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24).r,
                child: Image.asset('assets/images/Ellipse 68.png'),
              ),
            ],
          ),
          SizedBox(
            height: 16.h,
          )
        ],
      ),
    );
  }
}
