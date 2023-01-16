import 'dart:io';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/globals/colors.dart';
import 'package:flutter_application_1/google_login/googleprovider.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../GETX/gettimer.dart';

class AddPost extends StatefulWidget {
  const AddPost({Key? key}) : super(key: key);

  @override
  State<AddPost> createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  final GetImage getkar = Get.put(GetImage());

  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                getkar.pickforImagePost();
              },
              child: Text("image picker")),
          ElevatedButton(
              onPressed: () async {
                final provider =
                    Provider.of<Googleprovider>(context, listen: false);
       /*          await provider.addPost(getkar.imagePostList.toString()); */
                await provider.newmethod(File(getkar.imagePostList.toString()));
              },
              child: Text("assa")),
          GetBuilder<GetImage>(builder: (controller) {
            return getkar.imagePostList.isEmpty
                ? Text("dsds")
                : CarouselSlider.builder(
                    itemCount: getkar.imagePostList.length,
                    itemBuilder: (context, index, realIndex) {
                      return Container(
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10)),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.file(
                                File(getkar.imagePostList[index].path),
                                width: 300,
                                fit: BoxFit.cover,
                              )));
                    },
                    options: CarouselOptions(
                      viewportFraction: 1,
                      height: 150,
                      onPageChanged: (index, reason) {
                        setState(() {
                          activeIndex = index;
                        });
                      },
                    ));
          }),
          buildIndicator(),
        ],
      ),
    );
  }

  Widget buildIndicator() => Padding(
        padding: EdgeInsets.all(5.0),
        child: AnimatedSmoothIndicator(
            effect: JumpingDotEffect(
                spacing: 1,
                activeDotColor: primaryColorOfApp,
                dotColor: customTextColor,
                dotHeight: 4,
                dotWidth: 4),
            activeIndex: activeIndex,
            count: getkar.imagePostList.length),
      );
}
