// ignore_for_file: library_private_types_in_public_api, prefer_typing_uninitialized_variables

import 'dart:io';

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/getx/gettimer.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

/// Stateful widget to fetch and then display video content.
///
///
///
class VideoApp extends StatefulWidget {
  final value;

  const VideoApp({Key? key, required this.value}) : super(key: key);

  @override
  _VideoAppState createState() => _VideoAppState();
}

class _VideoAppState extends State<VideoApp> {
  final GetImage getkar = Get.put(GetImage());
/*   VideoPlayerController? _controller;
  ChewieController? chewieController;
  @override
  void initState() {
    super.initState();
    initialize();
  } */
  var videoPlay;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    videoPlay = VideoPlayer(getkar.videoPlayerController!);
  }

  @override
  void dispose() {
    super.dispose();
    getkar.videoPlayerController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          GetBuilder<GetImage>(builder: (controller) {
            return Container(
              child: getkar.videopath != null
                  ? AspectRatio(
                      aspectRatio: 16 / 9,
                      child: getkar.videoPlayerController!.value.isInitialized
                          ? Container(
                              child: videoPlay,
                            )
                          : SizedBox(),
                    )
                  : SizedBox(),
            );
          })
        ],
      ),
    ); /* Column(
      children: [
        chewieController?.videoPlayerController.value.isInitialized ?? false
            ? Chewie(
              controller: chewieController!,
            )
            : const SizedBox(),
      ],
    ); */
  }

/*   initialize() async {
    _controller = VideoPlayerController.file(File(widget.value));
    await Future.wait([_controller!.initialize()]);
    chewieController = ChewieController(
      videoPlayerController: _controller!,
      autoPlay: false,
      looping: true,
    );

    setState(() {
      chewieController = chewieController;
    });
  } */
}
