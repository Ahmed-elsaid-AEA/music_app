import 'package:flutter/material.dart';
import 'package:music_apps/core/resources/assets_managers.dart';
import 'package:music_apps/core/resources/color_managers.dart';
import 'package:music_apps/core/resources/font_managers.dart';
import 'package:music_apps/core/resources/height_values_managers.dart';
import 'package:music_apps/core/resources/padding_value.dart';
import 'package:music_apps/core/resources/radius_values_managers.dart';
import 'package:music_apps/core/resources/routes_managers.dart';
import 'package:music_apps/core/resources/width_values_managers.dart';
import 'package:music_apps/models/songsModel.dart';

class CustomSearchDetails extends StatelessWidget {
  const CustomSearchDetails({
    super.key,
    required this.songsModel, required this.itemCount, required this.onTap,
  });

  final SongsModel songsModel;
  final int itemCount;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: PaddingValue.p20),
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => GestureDetector(
              onTap: onTap,
              child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius:
                              BorderRadius.circular(RadiusValuesManager.r10),
                          child: const Image(
                              fit: BoxFit.cover,
                              height: HeightValuesManagers.h150,
                              width: WidthValuesManagers.w150,
                              image: AssetImage(AssetsManagers.test)),
                        ),
                        const SizedBox(
                          height: HeightValuesManagers.h9,
                        ),
                        Text(
                          songsModel.song,
                          style: const TextStyle(
                              fontSize: FontSizeManagers.f15,
                              fontWeight: FontWeight.w500,
                              color: ColorManagers.kWhiteColor),
                        ),
                        const SizedBox(
                          height: HeightValuesManagers.h4,
                        ),
                        Text(
                          songsModel.singer,
                          style: const TextStyle(
                              fontSize: FontSizeManagers.f12,
                              fontWeight: FontWeight.w500,
                              color: ColorManagers.kLightWhiteColor),
                        )
                      ],
                    ),
                  ),
            ),
            separatorBuilder: (context, index) => const SizedBox(
                  width: WidthValuesManagers.w17,
                ),
            itemCount: itemCount),
      ),
    );
  }
}
