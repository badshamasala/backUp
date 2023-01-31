import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:video_player/video_player.dart';

class VideoClassPlayer extends StatefulWidget {
  String value;
   VideoClassPlayer({Key? key, required this.value}) : super(key: key);

  @override
  State<VideoClassPlayer> createState() => _VideoClassPlayerState();
}

class _VideoClassPlayerState extends State<VideoClassPlayer> {
  VideoPlayerController? _controller;
  initializeMethod(a) async {
    final controller = VideoPlayerController.network(
      a,
    );
    _controller = controller;

    if (_controller != null) {
      await controller.initialize();
      await controller.setLooping(false);
      await controller.pause();
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initializeMethod(widget.value);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: const Color(0xffe2e2e2),
                                      borderRadius:
                                          BorderRadius.circular(7.sp)),
                                  child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.circular(7.sp),
                                      child: VideoPlayer(_controller!)),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white.withOpacity(0.5)),
                                  child: const Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Icon(Icons.play_arrow),
                                  ),
                                ),
                              ],
                            );
  }
}
