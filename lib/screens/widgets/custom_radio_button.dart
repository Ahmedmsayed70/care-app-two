import 'package:care_app_two/helper/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class CustomRadioButton extends StatefulWidget {
  const CustomRadioButton({
    super.key,
    // required this.text,
    // required this.value,
    // this.valueChoose = 1,
    // required this.width,
    // required this.height,
    // this.onTap
  });
  // final String text;
  // int? valueChoose;
  // final int value;
  // final double width, height;
  // final void Function()? onTap;
  @override
  State<CustomRadioButton> createState() => _CustomRadioButtonState();
}

class _CustomRadioButtonState extends State<CustomRadioButton> {
  int val = -1;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 130.w,
          height: 40.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10).r,
              border: Border.all(color: const Color(0xffC2C2C2))),
          child: ListTile(
            horizontalTitleGap: 8,
            titleAlignment: ListTileTitleAlignment.center,
            contentPadding: EdgeInsets.zero,
            title: Text(
              
              "Male",
              style: Styles.Style15,
            ),
            leading: Radio(
              value: 1,
              groupValue: val,
              onChanged: (value) {
                setState(() {
                  val = value!;
                });
              },
              activeColor: Colors.blue,
            ),
          ),
        ),
        Container(
          width: 130.w,
          height: 40.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10).r,
              border: Border.all(color: const Color(0xffC2C2C2))),
          child: ListTile(
            titleAlignment: ListTileTitleAlignment.center,
            horizontalTitleGap: 8,
            contentPadding: EdgeInsets.zero,
            minVerticalPadding: 0,
            title: Text(
              "Female",
              style: Styles.Style15,
            ),
            leading: Radio(
              value: 2,
              groupValue: val,
              onChanged: (value) {
                setState(() {
                  val = value!;
                });
              },
              activeColor: Colors.blue,
            ),
          ),
        ),
      ],
    );
    //  GestureDetector(
    //   onTap: widget.onTap,
    //   child: Container(
    //     width: widget.width.w,
    //     height: widget.height.h,
    //     decoration: BoxDecoration(
    //       border: Border.all(color: Colors.grey),
    //       borderRadius: BorderRadius.circular(10).r,
    //       color: Colors.white,
    //     ),
    //     child: Padding(
    //       padding: const EdgeInsets.only(bottom: 10, top: 10).r,
    //       child: Center(
    //         child: Text(
    //           widget.text,
    //           style: TextStyle(
    //               color: kTextColor,
    //               fontWeight: FontWeight.w700,
    //               fontSize: 15.sp,
    //               fontFamily: 'Cairo'),
    //         ),
    //       ),
    //     ),
    // const SizedBox(
    //   width: 10,
    // ),
    // Radio(
    //     //splashRadius: 1,
    //     value: widget.value,
    //     groupValue: widget.valueChoose,
    //     onChanged: (value) {
    //       setState(() {
    //         widget.valueChoose = value;
    //       });
    //     }),
    //   ),
    // );
  }
}
