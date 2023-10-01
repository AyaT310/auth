import 'dart:async';

import 'package:auht/config/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'OnBoading/onboarding_screen.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacementNamed(context, AppRoutes.ONBOARDING)

    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
            child: Image.asset("assets/images/orange_circles.gif",width: 200,height: 200,),
      ),
    );
  }
}





// import 'dart:async';
//
// import 'package:auht/OnBoading/onboarding_screen.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class Splash extends StatefulWidget {
//   const Splash({super.key});
//
//   @override
//   State<Splash> createState() => _SplashState();
// }
//
// class _HomeState extends State<Splash> {
//   @override
//   void initState() {
//     super.initState();
//     Timer(Duration(seconds: 3),
//             ()=>Navigator.pushReplacement(context,
//             MaterialPageRoute(builder:
//                 (context) =>
//                 OnBoardingScreen()
//             )
//         )
//     );
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.white,
//       child: Center(
//             child: Image.asset("assets/images/orange_circles.gif",width: 200,height: 200,),
//       ),
//     );
//   }
// }
