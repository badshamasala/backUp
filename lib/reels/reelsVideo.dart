import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:video_player/video_player.dart';

/// Stateful widget to fetch and then display video content.
///
///
///
class VideoApp1 extends StatefulWidget {
  final value;

  const VideoApp1({Key? key, required this.value}) : super(key: key);

  @override
  _VideoApp1State createState() => _VideoApp1State();
}

class _VideoApp1State extends State<VideoApp1> {
  VideoPlayerController? _controller;
  ChewieController? chewieController;
  @override
  void initState() {
    super.initState();
    initialize();
  }

  @override
  void dispose() {
    super.dispose();
    _controller?.dispose();
    chewieController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        /*     width: double.infinity,
        height: 50.h, */
        /*        alignment: Alignment.topCenter, */
        child:
            chewieController?.videoPlayerController.value.isInitialized ?? false
                ? AspectRatio(
                    aspectRatio: _controller!.value.aspectRatio,
                    child: Chewie(
                      controller: chewieController!,
                    ),
                  )
                : const SizedBox());
  }

  initialize() async {
    _controller = VideoPlayerController.network(widget.value);
    await Future.wait([_controller!.initialize()]);
    chewieController = ChewieController(
      showControls: false,
      showOptions: false,
      fullScreenByDefault: true,
      videoPlayerController: _controller!,
      autoPlay: false,
      looping: true,
    );

    setState(() {
      chewieController = chewieController;
    });
  }
}
