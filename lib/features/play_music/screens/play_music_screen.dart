import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:music_apps/controller/play_music_controller.dart';
import 'package:music_apps/core/resources/alignment_managers.dart';
import 'package:music_apps/core/resources/color_managers.dart';
import 'package:music_apps/core/resources/height_values_managers.dart';
import 'package:music_apps/features/play_music/widgets/cusotm_button_controller_play_music.dart';
import 'package:music_apps/features/play_music/widgets/custom_app_bar_play_music_screen.dart';
import 'package:music_apps/features/play_music/widgets/custom_tool_play_music.dart';
import 'package:music_apps/models/songsModel.dart';

import '../widgets/custom_songs_details_play_music_screen.dart';
import '../widgets/custom_tool_2_play_music.dart';

class PlayMusicScreen extends StatefulWidget {
  const PlayMusicScreen({super.key});

  @override
  State<PlayMusicScreen> createState() => _PlayMusicScreenState();
}

class _PlayMusicScreenState extends State<PlayMusicScreen> {



  @override
  Widget build(BuildContext context) {
    SongsModel songModel =
        ModalRoute.of(context)!.settings.arguments as SongsModel;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBarPlayMusicScreen(
        onPressed: () {
          PlayMusicController.navigatorPop(context: context);
        },
      ),
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
                const Spacer(),
                CustomSongsDetailsPlayMusic(
                  songsModel: songModel,
                ),
                const SizedBox(
                  height: HeightValuesManagers.h29,
                ),
                CustomButtonControllerPlayMusic(
                  pathSong: songModel.pathSong,
                  value: .6,
                  onChanged: (value) {
                    print(value);
                  },
                ),
                const CustomToolsPlayMusic(),
                const CustomTools2PlayMusic()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
