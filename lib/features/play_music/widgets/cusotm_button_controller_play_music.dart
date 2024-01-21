import 'package:flutter/material.dart';
import 'package:music_apps/core/resources/assets_managers.dart';
import 'package:music_apps/core/resources/color_managers.dart';
import 'package:music_apps/core/resources/height_values_managers.dart';
import 'package:music_apps/core/resources/radius_values_managers.dart';
import 'package:music_apps/core/resources/width_values_managers.dart';

class CustomButtonControllerPlayMusic extends StatelessWidget {
  const CustomButtonControllerPlayMusic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Image(image: AssetImage(AssetsManagers.random)),
        Container(
            width: WidthValuesManagers.w36,
            height: HeightValuesManagers.h36,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(RadiusValuesManager.r50),
                gradient: const LinearGradient(
                    begin: Alignment(0.00, -1.00),
                    end: Alignment(0, 1),
                    colors: [
                      ColorManagers.kThirdPrimaryColor,
                      ColorManagers.kLightWhiteColor,
                    ])),
            child: const Image(
                height: HeightValuesManagers.h20,
                width: WidthValuesManagers.w20,
                image: AssetImage(AssetsManagers.back))),
        const CircleAvatar(
          radius: RadiusValuesManager.r30,
          backgroundColor: ColorManagers.kLightWhiteColor,
          child: Image(image: AssetImage(AssetsManagers.pause)),
        ),
        Container(
            width: HeightValuesManagers.h36,
            height: WidthValuesManagers.w36,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(RadiusValuesManager.r50),
                gradient: const LinearGradient(
                    begin: Alignment(0.00, -1.00),
                    end: Alignment(0, 1),
                    colors: [
                      ColorManagers.kThirdPrimaryColor,
                      ColorManagers.kLightWhiteColor,
                    ])),
            child: const Image(
                width: WidthValuesManagers.w20,
                height: WidthValuesManagers.w20,
                image: AssetImage(AssetsManagers.next))),
        const Image(image: AssetImage(AssetsManagers.loop)),
      ],
    );
  }
}
