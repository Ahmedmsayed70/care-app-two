// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class CustomDropDownList extends StatefulWidget {
  const CustomDropDownList(
      {super.key,
      required this.items,
      required this.width,
      required this.height});
  final List<String> items;
  final double width, height;
  @override
  State<CustomDropDownList> createState() => _CustomDropDownListState();
}

class _CustomDropDownListState extends State<CustomDropDownList> {
  var value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          border: Border.all(color: Colors.grey)),
      child: DropdownButton(
          isExpanded: true,
          //hint: const Text('select'),
          underline: const SizedBox(),
          dropdownColor: const Color(0xffd4d5ee),
          icon: Image.asset(
            'assets/images/chevron-down.png',
            width: 24,
          ),
          iconSize: 24,
          style: const TextStyle(color: Colors.black, fontSize: 24),
          value: value,
          onChanged: (chooseValue) {
            setState(() {
              value = chooseValue;
            });
          },
          items: widget.items.map((value) {
            return DropdownMenuItem(
              value: value,
              child: Text(value),
            );
          }).toList()),
    );
  }
}
