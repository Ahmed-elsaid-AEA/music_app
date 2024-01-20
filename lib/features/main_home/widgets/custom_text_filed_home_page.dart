import 'package:flutter/material.dart';
import 'package:music_apps/core/resources/color_managers.dart';
import 'package:music_apps/core/resources/font_managers.dart';
import 'package:music_apps/core/resources/padding_value.dart';
import 'package:music_apps/core/resources/radius_values_managers.dart';
import 'package:music_apps/core/resources/strings_values_managers.dart';

class CustomTextFieldHomePage extends StatelessWidget {
  const CustomTextFieldHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Padding(
    //   padding: EdgeInsets.only(top: 51, right: 31, left: 31),
    //   child: CustomTextFieldHomePage(),
    // ),
    return Padding(
      padding:
          const EdgeInsets.only(top: PaddingValue.p51,
              right: PaddingValue.p31, left: PaddingValue.p31),
      child: TextField(
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: PaddingValue.p10),
          hintText: StringsValuesManagers.searchSong,
          hintStyle: const TextStyle(
              color: ColorManagers.kWhiteColor, fontSize: FontSizeManagers.f12),
          prefixIcon: const Padding(
            padding: EdgeInsets.only(
                left: PaddingValue.p20, right: PaddingValue.p10),
            child: Icon(
              Icons.search,
              color: ColorManagers.kWhiteColor,
            ),
          ),
          filled: true,
          fillColor: ColorManagers.kLightWhiteColor,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(RadiusValuesManager.r50)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(RadiusValuesManager.r50)),
        ),
      ),
    );
  }
}
