import 'package:flutter/material.dart';
import 'package:music_apps/core/resources/routes_managers.dart';
import 'package:music_apps/models/songsModel.dart';

class HomePageController {
  static void navigatorToPlayMusicScreen(
      {required BuildContext context, required SongsModel data}) {
    Navigator.pushNamed(context, RoutesName.kPlayMusicScreen, arguments: data);
  }
}
