
import 'package:flutter/material.dart';
import 'package:music_apps/core/resources/color_managers.dart';
import 'package:music_apps/core/resources/padding_value.dart';
import 'package:music_apps/core/resources/strings_values_managers.dart';

class CustomSubTitleOnBoardingPage extends StatelessWidget {
  const CustomSubTitleOnBoardingPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: PaddingValue.p70),
      child: Text(
        style: TextStyle(color:ColorManagers.kWhiteColor,fontWeight: FontWeight.w500),
        StringsValuesManagers.subTitleOnBoardingPage,
        textAlign: TextAlign.center,
      ),
    );
  }
}
