// ignore_for_file: prefer_const_constructors
import 'package:care_app_two/firebase_options.dart';
// ignore: unused_import
import 'package:care_app_two/screens/homepage/home_view_body.dart';
// ignore: unused_import
import 'package:care_app_two/screens/signin/sign_in_two.dart';
// ignore: unused_import
import 'package:care_app_two/screens/signup/signup_screen.dart';
// ignore: unused_import
import 'package:care_app_two/screens/start_screen/start.dart';
import 'package:care_app_two/screens/widgets/signup_view_body.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        print('============================User is currently signed out!');
      } else {
        print('============================User is signed in!');
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(),
          debugShowCheckedModeBanner: false,
          home: (FirebaseAuth.instance.currentUser != null &&
                  FirebaseAuth.instance.currentUser!.emailVerified)
              ? HomeViewBody()
              : Start(),
          routes: {
            "signin": (context) => SigninTwo(),
            "signup": (context) => SignUpViewBody(),
            "homepage": (context) => HomeViewBody(),
          },
        );
      },
    );
  }
}

@override
Widget build(BuildContext context) {
  return Container(); // Placeholder, not used
}
