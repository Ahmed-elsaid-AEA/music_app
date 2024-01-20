import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_apps/core/resources/assets_managers.dart';
import 'package:music_apps/core/resources/color_managers.dart';
import 'package:music_apps/core/resources/font_managers.dart';

class CustomRowRecommendedMusic extends StatelessWidget {
  const CustomRowRecommendedMusic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "sd",
        style: TextStyle(
          fontSize: FontSizeManagers.f15,
          color: ColorManagers.kWhiteColor,
        ),
      ),
      subtitle: Text(
        "data",
        style: TextStyle(
            color: ColorManagers.kLightWhiteColor,
            fontSize: FontSizeManagers.f12),
      ),
      leading: CircleAvatar(
        radius: 35,
        backgroundImage: AssetImage(
          AssetsManagers.test,
        ),
      ),
      trailing: Icon(CupertinoIcons.heart),
    );
  }
}
