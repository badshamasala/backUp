import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:video_player/video_player.dart';

class Video1Check extends StatefulWidget {
  String value;
  Video1Check({Key? key, required this.value}) : super(key: key);

  @override
  State<Video1Check> createState() => _Video1CheckState();
}

class _Video1CheckState extends State<Video1Check> {
  VideoPlayerController? _controller;
  VideoPlayerController? _toBeDisposed;
  initializeMethod(a) async {
    /*  await _disposeVideoController(); */
    late VideoPlayerController controller;

    controller = VideoPlayerController.network(a);
    _controller = controller;

    if (_controller != null) {
      await controller.initialize().then((value) async {
        await controller.play();
        setState(() {});
      });
      await controller.setLooping(true);
    }
  }

  Future<void> _disposeVideoController() async {
    if (_toBeDisposed != null) {
      await _toBeDisposed!.dispose();
    }
    _toBeDisposed = _controller;
    _controller = null;
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
        AspectRatio(
            aspectRatio: _controller!.value.aspectRatio,
            child: VideoPlayer(_controller!)),
        Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                width: 2,
                color: _controller!.value.isPlaying
                    ? Colors.transparent
                    : Colors.grey,
              )),
          child: Padding(
            padding: EdgeInsets.all(2.sp),
            child: IconButton(
                onPressed: () {
                  setState(() {
                    if (_controller!.value.isPlaying) {
                      _controller!.pause();
                    } else {
                      _controller!.play();
                    }
                  });
                },
                icon: Icon(
                  _controller!.value.isPlaying ? null : Icons.play_arrow,
                  color: Colors.grey,
                )),
          ),
        ),
      ],
    );
  }
}
 /* _controller == null
              ? SizedBox()
              : VideoProgressIndicator(
                  _controller!,
                  colors: VideoProgressColors(
                      backgroundColor: Colors.black, playedColor: Colors.white),
                  allowScrubbing: true,
                  padding: EdgeInsets.zero,
                ) */
