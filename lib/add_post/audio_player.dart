/* import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class AudioPlayer1 extends StatefulWidget {
  const AudioPlayer1({Key? key}) : super(key: key);

  @override
  State<AudioPlayer1> createState() => _AudioPlayer1State();
}

class _AudioPlayer1State extends State<AudioPlayer1> {
  AudioPlayer controller = AudioPlayer();

  PlayerState playerState = PlayerState.paused;
  late AudioCache audioCache;
  var path = "Kalimba.mp3";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    audioCache = AudioCache(prefix: "assets/audio/Kalimba.mp3");
    controller.onPlayerStateChanged.listen((PlayerState s) {
      setState(() {
        playerState = s;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller.release();
    controller.dispose();
    audioCache.clear(path);
  }

 /*  playMusic() async {
    await controller.play("Kalimba.mp3");
  } */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
 */