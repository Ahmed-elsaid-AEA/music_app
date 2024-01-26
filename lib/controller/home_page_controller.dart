import 'package:flutter/material.dart';
import 'package:music_apps/core/resources/routes_managers.dart';
import 'package:music_apps/models/songsModel.dart';

class HomePageController {
  static void navigatorToPlayMusicScreen(
      {required BuildContext context, required int index}) {
    Navigator.pushNamed(context, RoutesName.kPlayMusicScreen, arguments: index);
  }
}
