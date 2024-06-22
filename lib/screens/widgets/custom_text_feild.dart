import 'package:care_app_two/helper/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      this.onChanged,
      this.hintText,
      this.backgroundColor,
      this.obscureText = false,
      required TextEditingController controller,
      required String? Function(dynamic val) validator});
  final String? hintText;
  final bool? obscureText;
  final Function(String)? onChanged;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText!, // ******* for password
      // validator: (data) {
      //   if (data!.isEmpty) {
      //     return 'Field is Requied';
      //   }
      // },
      onChanged: onChanged,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: hintText,
        hintStyle: Styles.Style14,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(17).r,
          borderSide: const BorderSide(
            color: Color(0xffC2C2C2),
            style: BorderStyle.solid,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(17).r,
          borderSide: const BorderSide(
            color: Color(0xffC2C2C2),
            style: BorderStyle.solid,
          ),
        ),
      ),
    );
  }
}
