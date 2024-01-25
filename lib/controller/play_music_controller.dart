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
  late StreamController<String> streamControllerMusicTime;
  late Sink<String> inputDataMusicTime;
  late Stream<String> outputDataMusicTime;
  late StreamController<String> streamControllerMusicDurationNow;
  late Sink<String> inputDataMusicDurationNow;
  late Stream<String> outputDataMusicDurationNow;
  late StreamController<double> streamControllerSliderMusicDurationNow;
  late Sink<double> inputDataSliderMusicDurationNow;
  late Stream<double> outputDataSliderMusicDurationNow;

  PlayMusicController(this.pathSong) {
    _audioPlayer = AudioPlayer();
    isPlaying = true;
    streamControllerMusicImageStatus = StreamController();
    inputDataMusicImageStatus = streamControllerMusicImageStatus.sink;
    outputDataMusicImageStatus = streamControllerMusicImageStatus.stream;
    streamControllerMusicTime = StreamController();
    inputDataMusicTime = streamControllerMusicTime.sink;
    outputDataMusicTime = streamControllerMusicTime.stream;
    streamControllerMusicDurationNow = StreamController();
    inputDataMusicDurationNow = streamControllerMusicDurationNow.sink;
    outputDataMusicDurationNow = streamControllerMusicDurationNow.stream;
    streamControllerSliderMusicDurationNow = StreamController();
    inputDataSliderMusicDurationNow = streamControllerSliderMusicDurationNow.sink;
    outputDataSliderMusicDurationNow = streamControllerSliderMusicDurationNow.stream;
  }

  void initAudio() async {
    AudioCache _aduioCache = AudioCache(prefix: '');
    Uri uri = await _aduioCache.load(pathSong);
    if (_audioPlayer.state == PlayerState.stopped) {
      await _audioPlayer.play(UrlSource(uri.toString()));
      isPlaying = true;
      streamControllerMusicImageStatus.add(isPlaying);
      Duration? duration = await _audioPlayer.getDuration();

      streamControllerMusicTime
          .add(transferDurationToSecondAndMinute(duration!));
      _audioPlayer.onPositionChanged.listen((event) {

        streamControllerMusicDurationNow
            .add(transferDurationToSecondAndMinute(event));
        streamControllerSliderMusicDurationNow
            .add(durationToSliderValue(event, duration));

        });
    }
  }



  double durationToSliderValue(Duration duration, Duration maxDuration) {
    // Calculate the total duration in seconds
    double totalSeconds = duration.inSeconds.toDouble();

    // Calculate the maximum duration in seconds
    double maxSeconds = maxDuration.inSeconds.toDouble();

    // Normalize the duration to a double between 0 and 1
    double normalizedValue = totalSeconds / maxSeconds;

    // Ensure the value is within the range [0, 1]
    normalizedValue = normalizedValue.clamp(0.0, 1.0);

    return normalizedValue;
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

  String transferDurationToSecondAndMinute(Duration dur) {
// 0:05:43:12900
// String dur="0:05:43:12900";

    String secondDur = dur.inSeconds.remainder(60).toString().padLeft(2, "0");
    String minuteDur = dur.inMinutes.remainder(60).toString().padLeft(2, "0");
    return "${minuteDur}:${secondDur}";
  }
}
