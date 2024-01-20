import 'package:flutter/material.dart';
import 'package:music_apps/controller/on_boardging_page.dart';
import 'package:music_apps/core/resources/alignment_managers.dart';
import 'package:music_apps/core/resources/assets_managers.dart';
import 'package:music_apps/core/resources/color_managers.dart';
import 'package:music_apps/core/resources/font_managers.dart';
import 'package:music_apps/core/resources/height_values_managers.dart';
import 'package:music_apps/core/resources/padding_value.dart';
import 'package:music_apps/core/resources/radius_values_managers.dart';
import 'package:music_apps/core/resources/routes_managers.dart';
import 'package:music_apps/core/resources/strings_values_managers.dart';
import 'package:music_apps/core/resources/width_values_managers.dart';
import 'package:music_apps/features/on_boarding/widgets/custom_button_on_boarding_page.dart';
import 'package:music_apps/features/on_boarding/widgets/custom_image_on_boarding_page.dart';
import 'package:music_apps/features/on_boarding/widgets/custom_sub_title_on_boarding_page.dart';
import 'package:music_apps/features/on_boarding/widgets/custom_title_on_boarding_page.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: const Alignment(
                      AlignmentManagersX.x0_20, AlignmentManagersY.y_0_98),
                  end: const Alignment(
                      AlignmentManagersX.x_0_20, AlignmentManagersY.y0_98),
                  colors: [
                ColorManagers.kPrimaryColor,
                ColorManagers.kSecondPrimaryColor.withOpacity(.54)
              ])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: HeightValuesManagers.h111,
              ),
              const CustomTitleOnBoardingPage(),
              const SizedBox(
                height: HeightValuesManagers.h11,
              ),
              const CustomSubTitleOnBoardingPage(),
              const SizedBox(
                height: HeightValuesManagers.h58,
              ),
              CustomButtonOnBoardingPage(
                  onPressed: () {
                    OnBoardingController.navigateToHomeScreen(context: context);
                  }, text: StringsValuesManagers.getStarted),
              const CustomImageOnBoardingPage(),

            ],
          ),
        ),
      ),
    );
  }
}
