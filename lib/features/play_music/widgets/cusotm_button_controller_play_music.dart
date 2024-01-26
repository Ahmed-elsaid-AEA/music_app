import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:music_apps/controller/play_music_controller.dart';
import 'package:music_apps/core/resources/assets_managers.dart';
import 'package:music_apps/core/resources/color_managers.dart';
import 'package:music_apps/core/resources/font_managers.dart';
import 'package:music_apps/core/resources/height_values_managers.dart';
import 'package:music_apps/core/resources/radius_values_managers.dart';
import 'package:music_apps/core/resources/width_values_managers.dart';

class CustomButtonControllerPlayMusic extends StatelessWidget {
  const CustomButtonControllerPlayMusic({
    super.key,
    required this.onChanged,
    required this.value,
    required this.pathSong,
    required this.onPauseAndResumeAudio,
    required this.audioLoop,
    required this.outputDataLoop,
    required this.outputDataSliderMusicDurationNow,
    required this.outputDataMusicDurationNow,
    required this.seekAudio,
    required this.outputDataMusicTime,
    required this.onNext,
    required this.onBack,
    required this.outputDataMusicImageStatus,
  });

  final ValueChanged<double> onChanged;
  final double value;
  final String pathSong;
  final GestureTapCallback onPauseAndResumeAudio;
  final GestureTapCallback onNext;
  final GestureTapCallback onBack;
  final GestureTapCallback audioLoop;
  final Stream<bool> outputDataMusicImageStatus;
  final Stream outputDataLoop;
  final Stream outputDataSliderMusicDurationNow;
  final Stream<String> outputDataMusicDurationNow;
  final Stream<String> outputDataMusicTime;
  final ValueChanged<double> seekAudio;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Image(image: AssetImage(AssetsManagers.random)),
            InkWell(
              onTap: onBack,
              child: Container(
                  width: WidthValuesManagers.w36,
                  height: HeightValuesManagers.h36,
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(RadiusValuesManager.r50),
                      gradient: const LinearGradient(
                          begin: Alignment(0.00, -1.00),
                          end: Alignment(0, 1),
                          colors: [
                            ColorManagers.kThirdPrimaryColor,
                            ColorManagers.kLightWhiteColor,
                          ])),
                  child: const Image(
                      height: HeightValuesManagers.h20,
                      width: WidthValuesManagers.w20,
                      image: AssetImage(AssetsManagers.back))),
            ),
            InkWell(
              onTap: onPauseAndResumeAudio,
              child: CircleAvatar(
                radius: RadiusValuesManager.r30,
                backgroundColor: ColorManagers.kLightWhiteColor,
                child: StreamBuilder<bool>(
                  stream: outputDataMusicImageStatus,
                  builder: (context, snapshot) => Image(
                      width: 30,
                      height: 30,
                      image: AssetImage(snapshot.data == true
                          ? AssetsManagers.pause
                          : AssetsManagers.play)),
                ),
              ),
            ),
            InkWell(
              onTap: onNext,
              child: Container(
                  width: HeightValuesManagers.h36,
                  height: WidthValuesManagers.w36,
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(RadiusValuesManager.r50),
                      gradient: const LinearGradient(
                          begin: Alignment(0.00, -1.00),
                          end: Alignment(0, 1),
                          colors: [
                            ColorManagers.kThirdPrimaryColor,
                            ColorManagers.kLightWhiteColor,
                          ])),
                  child: const Image(
                      width: WidthValuesManagers.w20,
                      height: WidthValuesManagers.w20,
                      image: AssetImage(AssetsManagers.next))),
            ),
            InkWell(
              onTap: audioLoop,
              child: StreamBuilder(
                  stream: outputDataLoop,
                  builder: (context, snapshot) => Image(
                      width: 30,
                      height: 30,
                      image: AssetImage(snapshot.data == true
                          ? AssetsManagers.loopActive
                          : AssetsManagers.loopUnActive))),
            ),
          ],
        ),
        const SizedBox(
          height: HeightValuesManagers.h29,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26),
          child: StreamBuilder(
            stream: outputDataSliderMusicDurationNow,
            builder: (context, snapshot) => SliderTheme(
              data: SliderThemeData(
                  // thumbShape: RoundSliderThumbShape(),
                  overlayShape: SliderComponentShape.noOverlay),
              child: Slider(
                value: snapshot.data == null ? 0 : snapshot.data!,
                onChanged: (value) => seekAudio(value),
                activeColor: ColorManagers.kLightWhiteColor,
                inactiveColor: const Color(0xff2F5D9A),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 26, vertical: 7),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              StreamBuilder<String>(
                stream: outputDataMusicDurationNow,
                builder: (context, snapshot) => Text(
                  "${snapshot.data}",
                  style: const TextStyle(
                      color: ColorManagers.kLightWhiteColor,
                      fontSize: FontSizeManagers.f12,
                      fontWeight: FontWeight.w500),
                ),
              ),
              StreamBuilder<String>(
                stream: outputDataMusicTime,
                builder: (context, snapshot) => Text(
                  "${snapshot.data}",
                  style: const TextStyle(
                      color: ColorManagers.kLightWhiteColor,
                      fontSize: FontSizeManagers.f12,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class RoundSliderThumbShape extends SliderComponentShape {
  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return const Size(0.0, 0.0); // Adjust the size of the thumb
  }

  @override
  void paint(PaintingContext context, Offset center,
      {required Animation<double> activationAnimation,
      required Animation<double> enableAnimation,
      required bool isDiscrete,
      required TextPainter labelPainter,
      required RenderBox parentBox,
      required SliderThemeData sliderTheme,
      required TextDirection textDirection,
      required double value,
      required double textScaleFactor,
      required Size sizeWithOverflow}) {
    final Canvas canvas = context.canvas;
    final Paint paint = Paint()
      ..color = ColorManagers.kLightWhiteColor
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 2.0;

    canvas.drawCircle(center, 3.0, paint); // Draw a circle as the thumb

    // TODO: implement paint
  }
}
