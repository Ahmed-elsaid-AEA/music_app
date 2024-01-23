import 'package:flutter/material.dart';
import 'package:music_apps/core/resources/color_managers.dart';
import 'package:music_apps/core/resources/font_managers.dart';
import 'package:music_apps/core/resources/strings_values_managers.dart';
import 'package:music_apps/core/resources/width_values_managers.dart';

class CustomAppBarPlayMusicScreen extends StatelessWidget implements PreferredSizeWidget{
  const CustomAppBarPlayMusicScreen({
    super.key, required this.onPressed,
  });
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: const [
        Icon(Icons.share,color: ColorManagers.kWhiteColor,size: FontSizeManagers.f20,),
        SizedBox(width: WidthValuesManagers.w22,),
        Icon(Icons.more_vert_rounded,color: ColorManagers.kWhiteColor,size: FontSizeManagers.f20,),
        SizedBox(width: WidthValuesManagers.w13,),
      ],
      title: const Text(StringsValuesManagers.nowPlaying
        ,style: TextStyle(color: ColorManagers.kWhiteColor,fontSize: FontSizeManagers.f18,fontWeight: FontWeight.w500),),
      centerTitle: true,
      leading: IconButton(
        onPressed:onPressed,
        icon: const Icon(Icons.arrow_left,
          color: ColorManagers.kWhiteColor,size: FontSizeManagers.f30,),
      ),
      backgroundColor: Colors.transparent,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

