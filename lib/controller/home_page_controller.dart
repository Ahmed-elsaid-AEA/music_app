
import 'package:flutter/material.dart';
import 'package:music_apps/core/resources/routes_managers.dart';

class HomePageController{
static void navigatorToPlayMusicScreen({required BuildContext context}){
  Navigator.pushReplacementNamed(context, RoutesName.kPlayMusicScreen);

}
}