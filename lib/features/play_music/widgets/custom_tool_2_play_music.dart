
import 'package:flutter/material.dart';
import 'package:music_apps/core/resources/assets_managers.dart';
import 'package:music_apps/core/resources/color_managers.dart';

class CustomTools2PlayMusic extends StatelessWidget {
  const CustomTools2PlayMusic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(
            vertical: 11, horizontal: 13),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)),
          color: ColorManagers.kLightWhiteColor.withOpacity(.50),
        ),
        margin: const EdgeInsets.symmetric(
            horizontal: 34, vertical: 25),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Up Next",
                  style: TextStyle(
                      color: ColorManagers.kWhiteColor,
                      fontSize: 8,
                      fontWeight: FontWeight.w500),
                ),
                Container(
                    decoration: BoxDecoration(
                        color: const Color(0xff8A86F4).withOpacity(.50),
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.symmetric(
                        vertical: 3, horizontal: 10),
                    child: const Text(
                      "Up Next",
                      style: TextStyle(
                          color: ColorManagers.kWhiteColor,
                          fontSize: 8,
                          fontWeight: FontWeight.w500),
                    )),
              ],
            ),
            ListTile(

              contentPadding: const EdgeInsets.all(0),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: const Image(
                    width: 55,
                    height: 55,
                    fit: BoxFit.cover,
                    image: AssetImage(AssetsManagers.test)),
              ),
              title: const Text("data",style: TextStyle(color: ColorManagers.kWhiteColor,fontSize: 15,fontWeight: FontWeight.w500),),
              subtitle: Padding(
                padding: const EdgeInsets.only(left: 30),
                child: const Text("data",style: TextStyle(color: ColorManagers.kLightWhiteColor,fontSize: 12,fontWeight: FontWeight.w500,),),
              ),
              trailing: const Icon(Icons.skip_next_outlined,color: ColorManagers.kWhiteColor,),
            )
          ],
        ));
  }
}
