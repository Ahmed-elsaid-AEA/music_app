import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_apps/controller/home_page_controller.dart';
import 'package:music_apps/core/resources/alignment_managers.dart';
import 'package:music_apps/core/resources/assets_managers.dart';
import 'package:music_apps/core/resources/color_managers.dart';
import 'package:music_apps/core/resources/constants_value.dart';
import 'package:music_apps/core/resources/font_managers.dart';
import 'package:music_apps/core/resources/height_values_managers.dart';
import 'package:music_apps/core/resources/routes_managers.dart';
import 'package:music_apps/core/resources/strings_values_managers.dart';
import 'package:music_apps/features/main_home/widgets/custom_row_recommanded_music.dart';
import 'package:music_apps/features/main_home/widgets/custom_search_details.dart';
import 'package:music_apps/features/main_home/widgets/custom_text_filed_home_page.dart';
import 'package:music_apps/features/main_home/widgets/custom_title_home_page.dart';
import 'package:music_apps/models/songsModel.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment(
                  AlignmentManagersX.x0_20, AlignmentManagersY.y_0_98),
              end: Alignment(
                  AlignmentManagersX.x_0_20, AlignmentManagersY.y0_98),
              colors: [
            ColorManagers.kPrimaryColor,
            ColorManagers.kDarkBlueColor
          ])),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomTextFieldHomePage(),
            const CustomTitleHomePage(
              title: StringsValuesManagers.searchSong,
            ),
            const SizedBox(
              height: HeightValuesManagers.h22,
            ),
            CustomSearchDetails(
              onTap: (index) {
                HomePageController.navigatorToPlayMusicScreen(
                    index: index, context: context);
              },
              itemCount: 3,
              listSongsModel: ConstantsValue.listQuarn,
            ),
            const CustomTitleHomePage(
              title: "Recommanded music",
            ),
            const SizedBox(
              height: HeightValuesManagers.h22,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ListView.separated(
                  separatorBuilder: (context, index) => const SizedBox(
                        height: 10,
                      ),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) =>
                      const CustomRowRecommendedMusic(),
                  itemCount: 20),
            )
          ],
        ),
      ),
    ));
  }
}
