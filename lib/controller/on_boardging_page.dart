import 'package:flutter/material.dart';

import '../core/resources/routes_managers.dart';

class OnBoardingController {
  static void navigateToHomeScreen({required  BuildContext context}) {
    Navigator.pushNamed(context, RoutesName.kHomeScreen);

  }
}
