import 'package:flutter/material.dart';
import 'package:music_apps/features/main_home/screens/home_page.dart';

class MainHomeController {
  static List<Icon> homeIcon = [
    Icon(Icons.align_horizontal_left),
    Icon(Icons.home),
    Icon(Icons.heart_broken),
    Icon(Icons.list),
    Icon(Icons.settings),
  ];
  static List<Widget> homePages = [
    Scaffold(
      body: Center(
        child: Text("align_horizontal_left"),
      ),
    ),HomePage(),Scaffold(
      body: Center(
        child: Text("heart_broken"),
      ),
    ),Scaffold(
      body: Center(
        child: Text("settings"),
      ),
    ),Scaffold(
      body: Center(
        child: Text("align_horizontal_left"),
      ),
    ),
  ];
}
