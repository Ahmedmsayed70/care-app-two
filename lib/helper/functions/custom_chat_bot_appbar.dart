// ignore_for_file: non_constant_identifier_names, duplicate_ignore

import 'package:care_app_two/helper/constant.dart';
import 'package:care_app_two/helper/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: non_constant_identifier_names
AppBar CustomCareAppbar(BuildContext context, String text) {
  return AppBar(
    scrolledUnderElevation: 0,
    leading: IconButton(
      icon: const Icon(
        Icons.arrow_back_ios_new_rounded,
        size: 20,
        color: Colors.black,
      ),
      onPressed: () => Navigator.of(context).pop(),
    ),
    title: Text(
      text,
      style: Styles.Style20.copyWith(
        color: Colors.black,
      ),
    ),
    centerTitle: true,
    backgroundColor: Colors.transparent,
    elevation: 0.0,
  );
}

AppBar CustomCareAppbarWithLogo(BuildContext context) {
  return AppBar(
    
    toolbarHeight: 55.h,
    scrolledUnderElevation: 0,
    leading: Padding(
      padding: const EdgeInsets.all(8.0),
      child: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios_new_rounded,
          size: 20,
          color: Colors.black,
        ),
        onPressed: () => Navigator.of(context).pop(),
      ),
    ),
    title: Image.asset(
      kLogo,
      scale: 1.3,
    ),
    centerTitle: true,
    backgroundColor: Colors.transparent,
    elevation: 0.0,
  );
}

AppBar CustomAppbar(BuildContext context) {
  return AppBar(
    scrolledUnderElevation: 0,
    toolbarHeight: 65.h,
    iconTheme: const IconThemeData(opacity: 0),
    title: Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Image.asset(
        kLogo,
      ),
    ),
    centerTitle: true,
    backgroundColor: Colors.transparent,
    elevation: 0.0,
  );
}

AppBar CustomAppbarBack(BuildContext context) {
  return AppBar(
    scrolledUnderElevation: 0,
    toolbarHeight: 30.h,
    //leadingWidth: 30.w,
    leading: SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: CircleAvatar(
          radius: 50,
          backgroundColor: const Color(0xff7E869E).withOpacity(0.25),
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 23,
              color: Colors.black,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
      ),
    ),

    backgroundColor: Colors.transparent,
    elevation: 0.0,
  );
}
