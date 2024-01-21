
import 'package:flutter/material.dart';
import 'package:music_apps/core/resources/color_managers.dart';

class CustomToolsPlayMusic extends StatelessWidget {
  const CustomToolsPlayMusic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(7),
      decoration: ShapeDecoration(

        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
        ),
        color: ColorManagers.kLightWhiteColor.withOpacity(.50),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 89, vertical: 7),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Icon(
                Icons.heart_broken,
                color: ColorManagers.kWhiteColor,
                size: 24,
              ),
              Text(
                'like',
                style: TextStyle(
                    color: ColorManagers.kWhiteColor,
                    fontSize: 8,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.heart_broken,
                color: ColorManagers.kWhiteColor,
                size: 24,
              ),
              Text(
                'like',
                style: TextStyle(
                    color: ColorManagers.kWhiteColor,
                    fontSize: 8,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),       Column(
            children: [
              Icon(
                Icons.heart_broken,
                color: ColorManagers.kWhiteColor,
                size: 24,
              ),
              Text(
                'like',
                style: TextStyle(
                    color: ColorManagers.kWhiteColor,
                    fontSize: 8,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),       Column(
            children: [
              Icon(
                Icons.heart_broken,
                color: ColorManagers.kWhiteColor,
                size: 24,
              ),
              Text(
                'like',
                style: TextStyle(
                    color: ColorManagers.kWhiteColor,
                    fontSize: 8,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
