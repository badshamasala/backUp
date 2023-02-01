import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/profile_self/video_class_player.dart';
import 'package:flutter_application_1/reel_check/video1check.dart';

class Reelcheck extends StatefulWidget {
  const Reelcheck({Key? key}) : super(key: key);

  @override
  State<Reelcheck> createState() => _ReelcheckState();
}

class _ReelcheckState extends State<Reelcheck> {
  List myList = [
    "https://myttube.com/post/2/2_20230125170528625.mp4",
    "https://myttube.com/post/2/2_20230125165343574.mp4",
    "https://myttube.com/post/2/2_20230125165322568.mp4",
    "https://myttube.com/post/2/2_20230125165230438.mp4",
    "https://myttube.com/post/2/2_20230125165208897.mp4",
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: CarouselSlider.builder(
            itemCount: myList.length,
            itemBuilder: (context, index, realIndex) {
              return Container(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10)),
                  child: Video1Check(value: myList[index]));
            },
            options: CarouselOptions(
              scrollDirection: Axis.vertical,
              viewportFraction: 1,
              height: MediaQuery.of(context).size.height,
              onPageChanged: (index, reason) {
                setState(() {
                  activeIndex = index;
                });
              },
            )));
  }
}
