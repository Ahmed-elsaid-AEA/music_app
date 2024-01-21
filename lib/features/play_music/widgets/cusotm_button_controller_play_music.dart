import 'package:flutter/material.dart';
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
  });

  final ValueChanged<double> onChanged;
  final double value;

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
            const CircleAvatar(
              radius: RadiusValuesManager.r30,
              backgroundColor: ColorManagers.kLightWhiteColor,
              child: Image(image: AssetImage(AssetsManagers.pause)),
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
            const Image(image: AssetImage(AssetsManagers.loop)),
          ],
        ),
        const SizedBox(
          height: HeightValuesManagers.h29,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26),
          child: SliderTheme(
            data: SliderThemeData(
               thumbShape:RoundSliderThumbShape(),
          overlayShape: SliderComponentShape.noOverlay
            ),
            child: Slider(

              value: .5,
              onChanged: onChanged,
              activeColor: ColorManagers.kLightWhiteColor,
              inactiveColor: const Color(0xff2F5D9A),
            ),

          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26,vertical: 7),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("2:03",style: TextStyle(color: ColorManagers.kLightWhiteColor,fontSize: FontSizeManagers.f12,fontWeight: FontWeight.w500),)
              ,Text("4:03",style: TextStyle(color: ColorManagers.kLightWhiteColor,fontSize: FontSizeManagers.f12,fontWeight: FontWeight.w500),)
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
    return Size(0.0, 0.0); // Adjust the size of the thumb
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
