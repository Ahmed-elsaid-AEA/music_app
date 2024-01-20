import 'package:flutter/material.dart';
import 'package:music_apps/core/resources/time_managers.dart';

import '../core/resources/routes_managers.dart';

class SplashController{
  static void navigatorToOnBoardingPage({required BuildContext context }){
    Future.delayed(const Duration(seconds: SecondsValues.s3),() {
      Navigator.pushReplacementNamed(context, RoutesName.kOnBoardingScreen);
    },);
  }
}