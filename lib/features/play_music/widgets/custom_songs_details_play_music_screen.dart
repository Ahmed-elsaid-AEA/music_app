import 'package:flutter/material.dart';
import 'package:music_apps/core/resources/assets_managers.dart';
import 'package:music_apps/core/resources/color_managers.dart';
import 'package:music_apps/core/resources/constants_value.dart';
import 'package:music_apps/core/resources/font_managers.dart';
import 'package:music_apps/core/resources/height_values_managers.dart';
import 'package:music_apps/core/resources/radius_values_managers.dart';
import 'package:music_apps/models/songsModel.dart';

class CustomSongsDetailsPlayMusic extends StatelessWidget {
  const CustomSongsDetailsPlayMusic({
    super.key, required this.index,
  });
final int index;
  @override
  Widget build(BuildContext context) {
    return Column(children: [  ClipRRect(
      borderRadius: BorderRadius.circular(RadiusValuesManager.r10),
      child: Image(
        fit: BoxFit.cover,
        width: 261,
        height: 247,
        image: AssetImage(ConstantsValue.listQuarn[index].image),
      ),
    ),
      const SizedBox(height: HeightValuesManagers.h11,),
      Text(
        ConstantsValue.listQuarn[index].song,
        style: const TextStyle(
            color: ColorManagers.kWhiteColor,
            fontSize: FontSizeManagers.f18,
            fontWeight: FontWeight.w500),
      ),
      const SizedBox(height: HeightValuesManagers.h4,),
      Text(
        ConstantsValue.listQuarn[index].singer,
        style: const TextStyle(
            color: ColorManagers.kLightWhiteColor,
            fontSize: FontSizeManagers.f12,
            fontWeight: FontWeight.w500),
      )],);
  }
}
