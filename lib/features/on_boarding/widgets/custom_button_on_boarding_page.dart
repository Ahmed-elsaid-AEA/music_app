import 'package:flutter/material.dart';
import 'package:music_apps/core/resources/color_managers.dart';
import 'package:music_apps/core/resources/height_values_managers.dart';
import 'package:music_apps/core/resources/radius_values_managers.dart';
import 'package:music_apps/core/resources/width_values_managers.dart';

class CustomButtonOnBoardingPage extends StatelessWidget {
  const CustomButtonOnBoardingPage({
    super.key,
    required this.onPressed,
    required this.text,
  });

  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      
      onPressed: onPressed,
      child: Container(
          alignment: Alignment.center,
          width: WidthValuesManagers.w171,
          height: HeightValuesManagers.h60,
          decoration: BoxDecoration(
              border: const Border(
                  top: BorderSide(
                      color: ColorManagers.kWhiteColor,
                      width: WidthValuesManagers.w2)),
              borderRadius: BorderRadius.circular(RadiusValuesManager.r50),
              gradient: const LinearGradient(
                  begin: Alignment(0.00, -1.00),
                  end: Alignment(0, 1),
                  colors: [
                    ColorManagers.kLight3BlueColor,
                    ColorManagers.kLight2BlueColor
                  ])),
          child: Text(
            text,
            style: const TextStyle(color: ColorManagers.kWhiteColor),
          )),
    );
  }
}
