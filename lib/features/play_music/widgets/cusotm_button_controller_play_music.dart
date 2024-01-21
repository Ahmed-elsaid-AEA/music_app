
import 'package:flutter/material.dart';
import 'package:music_apps/core/resources/assets_managers.dart';
import 'package:music_apps/core/resources/color_managers.dart';

class CustomButtonControllerPlayMusic extends StatelessWidget {
  const CustomButtonControllerPlayMusic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image(image: AssetImage(AssetsManagers.random)),
        Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(50),
                gradient: LinearGradient(
                    begin: Alignment(0.00, -1.00),
                    end: Alignment(0, 1),
                    colors: [
                      ColorManagers.kThirdPrimaryColor,
                      ColorManagers.kLightWhiteColor,
                    ])),
            child: Image(
                height: 20,
                width: 20,
                image: AssetImage(AssetsManagers.back))),
        CircleAvatar(
          radius: 30,
          backgroundColor: ColorManagers.kLightWhiteColor,
          child: Image(image: AssetImage(AssetsManagers.pause)),
        ),
        Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                gradient: LinearGradient(
                    begin: Alignment(0.00, -1.00),
                    end: Alignment(0, 1),
                    colors: [
                      ColorManagers.kThirdPrimaryColor,
                      ColorManagers.kLightWhiteColor,
                    ])),
            child: Image(
                height: 20,
                width: 20,
                image: AssetImage(AssetsManagers.next))),
        Image(image: AssetImage(AssetsManagers.loop)),
      ],
    );
  }
}
