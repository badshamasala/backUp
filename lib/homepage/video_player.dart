// ignore_for_file: library_private_types_in_public_api, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/getx/gettimer.dart';
import 'package:flutter_application_1/globals/colors.dart';
import 'package:flutter_application_1/google_login/googleprovider.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:video_player/video_player.dart';

class VideoApp extends StatefulWidget {
  final controller;
  final isInitialize;
  final videopath;

  const VideoApp(
      {Key? key,
      required this.controller,
      required this.isInitialize,
      required this.videopath})
      : super(key: key);

  @override
  _VideoAppState createState() => _VideoAppState();
}

class _VideoAppState extends State<VideoApp> {
  final GetImage getkar = Get.put(GetImage());

  @override
  void dispose() {
    super.dispose();
    widget.controller!.dispose();
  }

  stopVideo() {
    Navigator.pop(context);
    widget.controller == null;
    print(widget.controller);

    print(
        "------------------------Controller Null-----------------------------");
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<Googleprovider>(context, listen: false);
    return WillPopScope(
      onWillPop: () => stopVideo(),
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 7.h,
          automaticallyImplyLeading: false,
          titleSpacing: -2.sp,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text('Selected video',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  color: customTextColor,
                  fontSize: 15.sp)),
          leading: IconButton(
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Iconify(
                Mdi.arrow_back,
                color: primaryColorOfApp,
              )),
          actions: [
            Padding(
              padding: EdgeInsets.all(9.sp),
              child: OutlinedButton(
                onPressed: () async {
                  setState(() {
                    provider.isloading = true;
                  });
                  await provider
                      .postVideoMethod(widget.videopath)
                      .whenComplete(() {
                    setState(() {
                      Navigator.pop(context);
                      provider.isloading = false;
                      widget.controller == null;
                    });
                  });
                },
                style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: Size(20.w, 5.h),
                    elevation: 0,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    side: const BorderSide(
                      color: Color(0xff0087FF),
                    ),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0))),
                child: provider.isloading
                    ? Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircularProgressIndicator(
                          color: primaryColorOfApp,
                        ),
                      )
                    : Text(
                        "POST",
                        style: TextStyle(
                            color: primaryColorOfApp,
                            fontSize: 10.sp,
                            fontFamily: 'Poppins'),
                      ),
              ),
            ),
          ],
        ),
        body: /*  provider.isloading
            ? Consumer<Googleprovider>(builder: (context, value, child) {
                return CircularProgressIndicator(
                  color: primaryColorOfApp,
                );
              })
            : */
            Column(
          children: [
            GetBuilder<GetImage>(builder: (controller) {
              return FutureBuilder(
                  future: widget.isInitialize,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      return Stack(
                        alignment: Alignment.center,
                        children: [
                          SizedBox(
                            width: double.infinity,
                            height: 70.h,
                            child: AspectRatio(
                                aspectRatio:
                                    widget.controller!.value.aspectRatio,
                                child: VideoPlayer(widget.controller!)),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  width: 2,
                                  color: widget.controller!.value.isPlaying
                                      ? Colors.transparent
                                      : Colors.grey,
                                )),
                            child: Padding(
                              padding: EdgeInsets.all(2.sp),
                              child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (widget.controller!.value.isPlaying) {
                                        widget.controller!.pause();
                                      } else {
                                        widget.controller!.play();
                                      }
                                    });
                                  },
                                  icon: Icon(
                                    widget.controller!.value.isPlaying
                                        ? null
                                        : Icons.play_arrow,
                                    color: Colors.grey,
                                  )),
                            ),
                          )
                        ],
                      );
                    } else {
                      return CircularProgressIndicator();
                    }
                  });
            }),
            widget.controller == null
                ? SizedBox()
                : VideoProgressIndicator(
                    widget.controller,
                    allowScrubbing: true,
                    padding: EdgeInsets.zero,
                  )
            /*  SizedBox(
              height: 1.h,
            ), */
          ],
        ),
      ),
    );
  }
}
