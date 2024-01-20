import 'package:flutter/material.dart';
import 'package:music_apps/controller/main_home_controller.dart';
import 'package:music_apps/core/resources/color_managers.dart';
import 'package:music_apps/features/main_home/widgets/custom_bottom_nav_bar_main_home_screen.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: MainHomeController.homePages[index],
        bottomNavigationBar: CustomButtonNavBarMainHomeScreen(
          index: index,
          onTap: (value) {
            index = value;
            setState(() {});
          },
        ));
  }
}
