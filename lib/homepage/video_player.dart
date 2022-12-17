// ignore_for_file: library_private_types_in_public_api, prefer_typing_uninitialized_variables

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
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
  VideoPlayerController? _controller;
  ChewieController? chewieController;
  @override
  void initState() {
    super.initState();
    initialize();
    /*  _controller = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4');
/*     ..initialize(); */
     Future.wait([_controller.initialize()]);
    chewieController = ChewieController(
      videoPlayerController: _controller,
      autoPlay: true,
      looping: true,
    ); */
  }

  initialize() async {
    _controller = VideoPlayerController.network(widget.value);
/*     ..initialize(); */
    await Future.wait([_controller!.initialize()]);
    chewieController = ChewieController(
      videoPlayerController: _controller!,
      autoPlay: true,
      looping: true,
    );
  
    setState(() {
      chewieController = chewieController;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child:
            chewieController?.videoPlayerController.value.isInitialized ?? false
                ? AspectRatio(
                    aspectRatio: 16 / 9,
                    child: SizedBox(
                      width: 200,
                      height: 200,
                      child: Chewie(
                        controller: chewieController!,
                      ),
                    ),
                  )
                : const SizedBox()
                
                );
  }

  @override
  void dispose() {
    super.dispose();
    _controller?.dispose();
    chewieController?.dispose();
  }
}
