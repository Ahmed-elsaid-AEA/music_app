import 'package:flutter/material.dart';
import 'package:music_apps/core/resources/alignment_managers.dart';
import 'package:music_apps/core/resources/assets_managers.dart';
import 'package:music_apps/core/resources/color_managers.dart';
import 'package:music_apps/core/resources/height_values_managers.dart';
import 'package:music_apps/core/resources/width_values_managers.dart';

class CustomLogoSlashScreen extends StatelessWidget {
  const CustomLogoSlashScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: const Alignment(AlignmentManagersX.x0_20, AlignmentManagersY.y_0_98),
              end: const Alignment(AlignmentManagersX.x_0_20, AlignmentManagersY.y0_98),
              colors: [
            ColorManagers.kPrimaryColor,
            ColorManagers.kSecondPrimaryColor.withOpacity(.54)
          ])),
      child: const Center(
        child: Image(
            width: WidthValuesManagers.w150,
            height: HeightValuesManagers.h150,
            image: AssetImage(AssetsManagers.logo)),
      ),
    );
  }
}
