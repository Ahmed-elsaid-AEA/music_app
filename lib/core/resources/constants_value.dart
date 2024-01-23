import 'package:music_apps/core/resources/assets_managers.dart';

import '../../models/songsModel.dart';

class ConstantsValue {
  static List<SongsModel> listQuarn = [
    SongsModel(
        image: AssetsManagers.quranImageQu1,
        singer: "Elsam Sobhey",
        song: "AlGen",
        pathSong: AssetsManagers.alGen),
    SongsModel(
        image: AssetsManagers.quranImageQu2,
        singer: "Elsam Sobhey",
        song: "almareg",
        pathSong: AssetsManagers.almareg),
    SongsModel(
        image: AssetsManagers.quranImageQu3,
        singer: "Elsam Sobhey",
        song: "noh",
        pathSong: AssetsManagers.noh),
  ];
}
