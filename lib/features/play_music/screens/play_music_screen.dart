import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:music_apps/controller/play_music_controller.dart';
import 'package:music_apps/core/resources/alignment_managers.dart';
import 'package:music_apps/core/resources/color_managers.dart';
import 'package:music_apps/core/resources/constants_value.dart';
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
  late PlayMusicController _playMusicController;

  @override
  Widget build(BuildContext context) {
    int indexSongModel = ModalRoute.of(context)!.settings.arguments as int;

    _playMusicController = PlayMusicController(indexSongModel);
    _playMusicController.initAudio();
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
                  outputDataImageAudio:
                      _playMusicController.outputDataImageAudio,
                  index: indexSongModel,
                ),
                const SizedBox(
                  height: HeightValuesManagers.h29,
                ),
                CustomButtonControllerPlayMusic(
                  onBack: () {
                    _playMusicController.backAction(indexSongModel);
                    if (indexSongModel <= 0) {
                      indexSongModel = ConstantsValue.listQuarn.length - 1;

                    } else {
                      indexSongModel -= 1;
                    }
                    print(indexSongModel.toString()+"----------------------");
                  },
                  onNext: () {
                    _playMusicController.nextAction(indexSongModel);
                    if (ConstantsValue.listQuarn.length > indexSongModel + 1) {
                      indexSongModel = indexSongModel + 1;
                    } else {
                      indexSongModel = 0;
                    }
                  },
                  seekAudio: (value) {
                    _playMusicController.seekAudio(value);
                  },
                  audioLoop: () {
                    _playMusicController.audioLoop();
                  },
                  outputDataLoop: _playMusicController.outputDataLoop,
                  outputDataMusicDurationNow:
                      _playMusicController.outputDataMusicDurationNow,
                  outputDataMusicTime: _playMusicController.outputDataMusicTime,
                  outputDataMusicImageStatus:
                      _playMusicController.outputDataMusicImageStatus,
                  outputDataSliderMusicDurationNow:
                      _playMusicController.outputDataSliderMusicDurationNow,
                  onPauseAndResumeAudio: () {
                    _playMusicController.pauseAndResumeAudio();
                  },
                  pathSong: ConstantsValue.listQuarn[indexSongModel].pathSong,
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

  @override
  void dispose() {
    // TODO: implement dispose
    _playMusicController.disposeAudio();
    super.dispose();
  }
}
