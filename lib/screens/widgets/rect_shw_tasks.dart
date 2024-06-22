import 'package:care_app_two/helper/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RectShowTasks extends StatefulWidget {
  const RectShowTasks(
      {super.key, this.icon, required this.text, required this.time});
  // ignore: prefer_typing_uninitialized_variables
  final icon;
  final String text;
  final String time;

  @override
  State<RectShowTasks> createState() => _RectShowTasksState();
}

class _RectShowTasksState extends State<RectShowTasks> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15).r,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(27),
          color: Colors.white,
          border: Border.all(
            color: const Color(0xffF4F5F5),
            style: BorderStyle.solid,
            strokeAlign: BorderSide.strokeAlignOutside,
            width: 3,
          ),
        ),
        child: Row(
          children: [
            Container(
              // padding: EdgeInsets.only(top: 5,bottom: 5),
              width: 180.w,
              height: 66.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(27),
                color: const Color(0xffF4F5F5),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 206, 211, 211),
                    offset: Offset(1, -2),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    width: 66.w,
                    height: 66.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(27),
                      color: const Color(0xff0074fe),
                    ),
                    child: Center(
                      child: Icon(
                        widget.icon,
                        //Image.asset('assets/images/pil.png'),
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20).r,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(widget.text,
                            style: Styles.Style13.copyWith(
                                color: const Color(0xff1F1F1F))),
                        Text(
                          widget.time,
                          style: Styles.Style133.copyWith(
                              color: const Color(0xff0075FE)),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 0.w,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 22.w,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        value = !value;
                      });
                      
                    },
                    icon: Image.asset('assets/images/Pin_fill.png', 
                    color: value? Colors.amber[700]: Colors.grey,)),
                IconButton(
                  onPressed: () {
                    setState(() {
                        value = !value;
                      });
                  },
                  icon: Image.asset(
                    'assets/images/edit.png',
                  ),
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        value = !value;
                      });
                    },
                    icon: Image.asset('assets/images/delete.png'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
