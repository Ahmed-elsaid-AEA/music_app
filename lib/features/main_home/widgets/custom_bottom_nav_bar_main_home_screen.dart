import 'package:flutter/material.dart';
import 'package:music_apps/controller/main_home_controller.dart';
import 'package:music_apps/core/resources/color_managers.dart';

class CustomButtonNavBarMainHomeScreen extends StatelessWidget {
  const CustomButtonNavBarMainHomeScreen(
      {super.key, required this.onTap, required this.index});

  final ValueChanged<int> onTap;
  final int index;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(

showUnselectedLabels: false,
        showSelectedLabels: false,
        unselectedItemColor: ColorManagers.kWhiteColor,
        selectedItemColor: ColorManagers.kThirdPrimaryColor,
        currentIndex: index,
        onTap: onTap,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff261F44),
        items: [
          for (int i = 0; i < MainHomeController.homeIcon.length; i++)
            BottomNavigationBarItem(icon:
            MainHomeController.homeIcon[i], label: "ahmed$i")
        ]);
  }
}
