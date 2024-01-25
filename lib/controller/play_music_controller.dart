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
  late StreamController<bool> streamControllerMusicImageStatus;
  late Sink<bool> inputDataMusicImageStatus;
  late Stream<bool> outputDataMusicImageStatus;
  late StreamController<Duration> streamControllerMusicTime;
  late Sink<Duration> inputDataMusicTime;
  late Stream<Duration> outputDataMusicTime;

  PlayMusicController(this.pathSong) {
    _audioPlayer = AudioPlayer();
    isPlaying = true;
    streamControllerMusicImageStatus = StreamController();
    inputDataMusicImageStatus = streamControllerMusicImageStatus.sink;
    outputDataMusicImageStatus = streamControllerMusicImageStatus.stream;
    streamControllerMusicTime = StreamController();
    inputDataMusicTime = streamControllerMusicTime.sink;
    outputDataMusicTime = streamControllerMusicTime.stream;
  }

  void initAudio() async {
    AudioCache _aduioCache = AudioCache(prefix: '');
    Uri uri = await _aduioCache.load(pathSong);
    if (_audioPlayer.state == PlayerState.stopped) {
    await  _audioPlayer.play(UrlSource(uri.toString()));
      isPlaying = true;
      streamControllerMusicImageStatus.add(isPlaying);
      Duration? duration=await _audioPlayer.getDuration();
      streamControllerMusicTime.add(duration!);
    }
  }

  void disposeAudio() {
    isPlaying = false;
    streamControllerMusicImageStatus.add(isPlaying);
    _audioPlayer.dispose();
  }

  void pauseAndResumeAudio() {
    if (_audioPlayer.state == PlayerState.paused) {
      _audioPlayer.resume();
      isPlaying = true;
      streamControllerMusicImageStatus.add(isPlaying);
    } else if (_audioPlayer.state == PlayerState.playing) {
      _audioPlayer.pause();
      isPlaying = false;
      streamControllerMusicImageStatus.add(isPlaying);
    }
  }
}
