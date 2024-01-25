import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:music_apps/controller/play_music_controller.dart';
import 'package:music_apps/core/resources/assets_managers.dart';
import 'package:music_apps/core/resources/color_managers.dart';
import 'package:music_apps/core/resources/font_managers.dart';
import 'package:music_apps/core/resources/height_values_managers.dart';
import 'package:music_apps/core/resources/radius_values_managers.dart';
import 'package:music_apps/core/resources/width_values_managers.dart';

class CustomButtonControllerPlayMusic extends StatefulWidget {
  const CustomButtonControllerPlayMusic({
    super.key,
    required this.onChanged,
    required this.value,
    required this.pathSong,
  });

  final ValueChanged<double> onChanged;
  final double value;
  final String pathSong;

  @override
  State<CustomButtonControllerPlayMusic> createState() =>
      _CustomButtonControllerPlayMusicState();
}

class _CustomButtonControllerPlayMusicState
    extends State<CustomButtonControllerPlayMusic> {
  late PlayMusicController _playMusicController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _playMusicController = PlayMusicController(widget.pathSong);
    _playMusicController.initAudio();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _playMusicController.disposeAudio();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Image(image: AssetImage(AssetsManagers.random)),
            Container(
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
            InkWell(
              onTap: () {
                _playMusicController.pauseAndResumeAudio();
              },
              child: CircleAvatar(
                radius: RadiusValuesManager.r30,
                backgroundColor: ColorManagers.kLightWhiteColor,
                child: StreamBuilder<bool>(
                  stream: _playMusicController.outputDataMusicImageStatus,
                  builder: (context, snapshot) => Image(
                      width: 30,
                      height: 30,
                      image: AssetImage(snapshot.data == true
                          ? AssetsManagers.pause
                          : AssetsManagers.play)),
                ),
              ),
            ),
            Container(
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
            InkWell(
              onTap: () {
                _playMusicController.audioLoop();
              },
              child: StreamBuilder(
                  stream: _playMusicController.outputDataLoop,
                  builder: (context, snapshot) => Image(
                    width: 30,height: 30,
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
            stream: _playMusicController.outputDataSliderMusicDurationNow,
            builder: (context, snapshot) => SliderTheme(
              data: SliderThemeData(
                  // thumbShape: RoundSliderThumbShape(),
                  overlayShape: SliderComponentShape.noOverlay),
              child: Slider(
                value: snapshot.data == null ? 0 : snapshot.data!,
                onChanged: (value) {
                  _playMusicController.seekAudio(value);
                },
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
                stream: _playMusicController.outputDataMusicDurationNow,
                builder: (context, snapshot) => Text(
                  "${snapshot.data}",
                  style: const TextStyle(
                      color: ColorManagers.kLightWhiteColor,
                      fontSize: FontSizeManagers.f12,
                      fontWeight: FontWeight.w500),
                ),
              ),
              StreamBuilder<String>(
                stream: _playMusicController.outputDataMusicTime,
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
