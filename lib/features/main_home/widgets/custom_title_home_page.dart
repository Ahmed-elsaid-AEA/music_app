import 'package:flutter/material.dart';
import 'package:music_apps/core/resources/color_managers.dart';
import 'package:music_apps/core/resources/font_managers.dart';
import 'package:music_apps/core/resources/padding_value.dart';
import 'package:music_apps/core/resources/strings_values_managers.dart';

class CustomTitleHomePage extends StatelessWidget {
  const CustomTitleHomePage({
    super.key, required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.only(
            left: PaddingValue.p34,
            top: PaddingValue.p32,
            right: PaddingValue.p58),
        child: Text(
          title,
          style: const TextStyle(
              fontSize: FontSizeManagers.f18,
              fontWeight: FontWeight.w500,
              color: ColorManagers.kWhiteColor),
        ));
  }
}
