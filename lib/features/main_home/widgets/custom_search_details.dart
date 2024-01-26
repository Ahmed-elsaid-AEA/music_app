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
    required this.listSongsModel,
    required this.itemCount, required this.onTap,
  });

  final List<SongsModel> listSongsModel;
  final int itemCount;
  final Function(int index) onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: PaddingValue.p20),
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                onTap(index);
              },
              child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius:
                              BorderRadius.circular(RadiusValuesManager.r10),
                          child:  Image(
                              fit: BoxFit.cover,
                              height: HeightValuesManagers.h150,
                              width: WidthValuesManagers.w150,
                              image: AssetImage(listSongsModel[index].image)),
                        ),
                        const SizedBox(
                          height: HeightValuesManagers.h9,
                        ),
                        Text(
                          listSongsModel[index].song,
                          style: const TextStyle(
                              fontSize: FontSizeManagers.f15,
                              fontWeight: FontWeight.w500,
                              color: ColorManagers.kWhiteColor),
                        ),
                        const SizedBox(
                          height: HeightValuesManagers.h4,
                        ),
                        Text(
                          listSongsModel[index].singer,
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
