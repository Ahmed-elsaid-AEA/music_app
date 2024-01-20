
import 'package:flutter/material.dart';
import 'package:music_apps/core/resources/color_managers.dart';
import 'package:music_apps/core/resources/font_managers.dart';
import 'package:music_apps/core/resources/height_values_managers.dart';
import 'package:music_apps/core/resources/strings_values_managers.dart';

class CustomTitleOnBoardingPage extends StatelessWidget {
  const CustomTitleOnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [ Text(
        textAlign: TextAlign.center,
        StringsValuesManagers.titleOnBoardingPage,
        style: TextStyle(
          height: HeightValuesManagers.h1,
          fontWeight: FontWeight.w700,
          color:ColorManagers.kWhiteColor,
          fontSize: FontSizeManagers.f50,
        ),
      ) ,
        Text(
          textAlign: TextAlign.center,
          StringsValuesManagers.music,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            height: HeightValuesManagers.h1,
            color: ColorManagers.kLight1BlueColor,
            fontSize: FontSizeManagers.f50,
          ),
        )],
    );
  }
}
