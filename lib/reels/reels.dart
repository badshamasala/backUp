import 'package:chewie/chewie.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/globals/colors.dart';
import 'package:flutter_application_1/reels/reelsVideo.dart';
import 'package:flutter_application_1/reels/widgetcompo.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bi.dart';
import 'package:iconify_flutter/icons/emojione_monotone.dart';
import 'package:iconify_flutter/icons/ooui.dart';
import 'package:sizer/sizer.dart';

import 'package:video_player/video_player.dart';

class Reels1 extends StatefulWidget {
  const Reels1({Key? key}) : super(key: key);

  @override
  _Reels1State createState() => _Reels1State();
}

final videoPlayerController = VideoPlayerController.network(
    'https://player.vimeo.com/external/552421426.hd.mp4?s=a4e3b5d1768bd29f37298743162e1b15c93856e4&profile_id=172&oauth2_token_id=57447761');

class _Reels1State extends State<Reels1> {
  VideoPlayerController? _controller;
  List appBaricon = [
    Bi.qr_code_scan,
    Ooui.bell,
    EmojioneMonotone.wrapped_gift,
  ];
  List reelsIcon = [
    FluentIcons.thumb_like_24_filled,
    FluentIcons.comment_edit_24_regular,
    FluentIcons.share_24_filled,
    null,
    null,
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            const VideoApp1(
                value:
                    "https://player.vimeo.com/external/552421426.hd.mp4?s=a4e3b5d1768bd29f37298743162e1b15c93856e4&profile_id=172&oauth2_token_id=57447761"),
            CommentWithPublisher(),
            Positioned(
              left: 65.w,
              top: 0.h,
              child: SizedBox(
                height: 6.5.h,
                width: 35.w,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: appBaricon.length,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 1.w);
                  },
                  itemBuilder: (context, index) {
                    return Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border:
                                Border.all(width: 1, color: primaryColorOfApp)),
                        child: Padding(
                          padding: EdgeInsets.all(3.sp),
                          child: IconButton(
                              padding: EdgeInsets.zero,
                              constraints: const BoxConstraints(),
                              onPressed: () {},
                              icon: Iconify(
                                appBaricon[index],
                                size: index == 0 ? 16.sp : 20.sp,
                                color: iconColor,
                              )),
                        ));
                  },
                ),
              ),
            ),
            Positioned(
                bottom: 15.h,
                right: 3.w,
                child: SizedBox(
                  width: 15.w,
                  height: 40.h,
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemCount: reelsIcon.length,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 1.h);
                    },
                    itemBuilder: (context, index) {
                      return Container(
                        height: 7.h,
                        child: Column(
                          children: [
                            reelsIcon[index] == null && index == 3
                                ? Iconify(
                                    EmojioneMonotone.wrapped_gift,
                                    /*   size: 20.sp, */
                                    color: Colors.white,
                                  )
                                : reelsIcon[index] == null && index == 4
                                    ? Iconify(
                                        Bi.bookmark_star,
                                        size: 20.sp,
                                        color: Colors.white,
                                      )
                                    : Icon(
                                        reelsIcon[index],
                                        color: Colors.white,
                                        size: 26.sp,
                                      ),
                            Text(
                              index == 4 ? "" : "12k",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Poppins",
                                  fontSize: 10.sp),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
