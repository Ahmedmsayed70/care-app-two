
import 'package:care_app_two/screens/widgets/chatbot_messages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomMessageTextfield extends StatelessWidget {
  const CustomMessageTextfield({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: (data){
        // Navigator.of(context).push(
        //           MaterialPageRoute(
        //             builder: (context) {
        //               return const ChatBotMessages();
        //             },
        //           ),
        //         );
      },
        decoration: InputDecoration(
          filled: true,
            //enabled: true,
            //hoverColor: Color(0xfff7f7f7),
           // fillColor:  Color(0xfff7f7f7),
           fillColor: Colors.white,
            hintText: 'Type your message...',
            prefixIcon: GestureDetector(
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const ChatBotMessages();
                    },
                  ),
                );
              },
              child: Image.asset('assets/images/paper_clip_light.png')),
            suffixIcon: Image.asset('assets/images/happy_light.png'),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20).r,
              borderSide: const BorderSide(color: Color((0xfff7f7f7))),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20).r,
              borderSide: const BorderSide(
                color: Color((0xfff7f7f7)),
              ),
            )
            )
            );
  }
}
