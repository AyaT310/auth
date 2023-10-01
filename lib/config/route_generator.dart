import 'dart:js';

import 'package:auht/OnBoading/onboarding_screen.dart';
import 'package:auht/home.dart';
import 'package:auht/login_screen.dart';
import 'package:auht/register_screen.dart';
import 'package:auht/splash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch(settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => Splash());
      case 'onBoarding':
        return MaterialPageRoute(builder: (context) => OnBoardingScreen());
      case 'login':
        return MaterialPageRoute(builder: (context) => Login());
      case 'register':
        return MaterialPageRoute(builder: (context) => Register());
      case 'home':
        return MaterialPageRoute(builder: (context) => Home());

      default:
    }

  }
}