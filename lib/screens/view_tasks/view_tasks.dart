import 'package:care_app_two/helper/constant.dart';
import 'package:care_app_two/helper/functions/custom_chat_bot_appbar.dart';
import 'package:care_app_two/screens/widgets/rect_shw_tasks.dart';
import 'package:care_app_two/screens/widgets/timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShowAllTasks extends StatefulWidget {
  const ShowAllTasks({super.key});

  @override
  State<ShowAllTasks> createState() => _ShowAllTasksState();
}

class _ShowAllTasksState extends State<ShowAllTasks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomCareAppbarWithLogo(context),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(kBackgroundStart), fit: BoxFit.fill),
        ),
        child: Padding(
          padding: const EdgeInsets.only(right: 16, left: 16, bottom: 8,top: 20).r,
          child: ListView(
            
            children: [
              Column(
                children: [

 Stack(
  clipBehavior: Clip.none,
        children:[ 
        const  Timer(),
          Positioned(
            top: 190.r,
            left: 80.r,
            child: CircleAvatar(backgroundColor: const Color(0xff0075FE),
                    radius: 30.r,
                    child: CircleAvatar(backgroundColor: Colors.white,radius: 28.r,
                    child: CircleAvatar(backgroundColor: const Color(0xff0075FE),radius: 23.r,
                    child: const Icon(Icons.add, color: Colors.white,),),),
                    ),
          ),
      ]),
              Padding(
                padding: const EdgeInsets.only(top: 50).r,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0).r,
                      child: const Text(
                        'In  Progress',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const CircleAvatar(
                      backgroundColor: Color(0xff99C8FF),
                      radius: 15,
                      child: Text('3'),
                    ),
                  ],
                ),
              ),
              const RectShowTasks(
                text: 'Panadol',
                time: '2:00 AM',
                icon: Icons.monitor_heart_outlined,
              ),
              const RectShowTasks(
                text: 'Panadol',
                time: '2:00 AM',
                icon: Icons.monitor_heart_outlined,
              ),
              const RectShowTasks(
                text: 'Panadol',
                time: '2:00 AM',
                icon: Icons.monitor_heart_outlined,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16).r,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0).r,
                      child: const Text(
                        'Completed',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const CircleAvatar(
                      backgroundColor: Color(0xffAEE4E6),
                      radius: 15,
                      child: Text('3'),
                    ),
                  ],
                ),
              ),
              const RectShowTasks(
                text: 'Panadol',
                time: '2:00 AM',
                icon: Icons.monitor_heart_outlined,
              ),
             
            ],
          ),
        
                ],
              
              
       )
      
      
        )
      )
        ,
    );
  }
}
