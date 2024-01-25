import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class PlayMusicController {
  static void navigatorPop({required BuildContext context}) {
    Navigator.pop(context);
  }

  late AudioPlayer _audioPlayer;
  String pathSong;
  late bool isPlaying;

  PlayMusicController(this.pathSong) {
    _audioPlayer = AudioPlayer();
    isPlaying=true;
  }

  void initAudio() async {
    AudioCache _aduioCache = AudioCache(prefix: '');
    Uri uri = await _aduioCache.load(pathSong);
    if (_audioPlayer.state == PlayerState.stopped) {
      _audioPlayer.play(UrlSource(uri.toString()));
    }
  }

  void disposeAudio() {
    isPlaying=false;
    _audioPlayer.dispose();
  }

  void pauseAndResumeAudio() {
    if (_audioPlayer.state == PlayerState.paused) {
      _audioPlayer.resume();
      isPlaying=true;
    } else if (_audioPlayer.state == PlayerState.playing) {
      _audioPlayer.pause();
      isPlaying=false;
    }
  }
}
