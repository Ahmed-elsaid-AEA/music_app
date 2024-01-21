import 'package:flutter/material.dart';
import 'package:music_apps/core/resources/alignment_managers.dart';
import 'package:music_apps/core/resources/assets_managers.dart';
import 'package:music_apps/core/resources/color_managers.dart';
import 'package:music_apps/core/resources/font_managers.dart';
import 'package:music_apps/core/resources/height_values_managers.dart';
import 'package:music_apps/core/resources/radius_values_managers.dart';
import 'package:music_apps/features/play_music/widgets/cusotm_button_controller_play_music.dart';
import 'package:music_apps/features/play_music/widgets/custom_app_bar_play_music_screen.dart';
import 'package:music_apps/features/play_music/widgets/custom_tool_play_music.dart';

import '../widgets/custom_songs_details_play_music_screen.dart';

class PlayMusicScreen extends StatefulWidget {
  const PlayMusicScreen({super.key});

  @override
  State<PlayMusicScreen> createState() => _PlayMusicScreenState();
}

class _PlayMusicScreenState extends State<PlayMusicScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const CustomAppBarPlayMusicScreen(),
      body: Container(
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
        child: SafeArea(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: HeightValuesManagers.h150,
                ),
                const CustomSongsDetailsPlayMusic(),
                const SizedBox(
                  height: HeightValuesManagers.h29,
                ),
                CustomButtonControllerPlayMusic(
                  value: .6,
                  onChanged: (value) {
                    print(value);
                  },
                ),
                CustomToolsPlayMusic()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
