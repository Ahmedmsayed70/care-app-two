//import 'package:care_app_project_one/screens/widgets/custom_app_bar_items.dart';
import 'package:flutter/material.dart';

///import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBackground extends StatelessWidget {
  const CustomBackground({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return 
    // Container(
    //   decoration: BoxDecoration(
    //         image: DecorationImage(
    //           image: AssetImage(image),
    //           fit: BoxFit.fill
    //         ),
    //       ),
    // );
    Stack(
      children: [
        Container(
         width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height ,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.fill,
            ),
          ),
        ),
        // Container(
        //   width: 1143,
        //   height: 880,
        //   decoration: BoxDecoration(
        //     image: DecorationImage(
        //       image: AssetImage(kEllipseSignup),
        //       fit: BoxFit.cover,
        //       colorFilter: ColorFilter.mode(
        //           Color.fromARGB(255, 107, 115, 228).withOpacity(.3), BlendMode.darken),
        //     ),
        //   ),
        //   //child: CustomAppBarItems() ,
        // )
      ],
    );
  }
}

// ImageFiltered(
//           imageFilter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
//           child: ColorFiltered(
//             colorFilter:
//                 const ColorFilter.mode(Color(0xff81a0a4), BlendMode.screen),
//             child: Image.asset(
//               "images/Background_photo.jpg",
//               fit: BoxFit.cover,
//             ),
//           ),
//         ),
