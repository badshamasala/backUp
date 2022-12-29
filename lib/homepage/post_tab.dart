// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bi.dart';
import 'package:iconify_flutter/icons/bx.dart';
import 'package:iconify_flutter/icons/gg.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:sizer/sizer.dart';

class PostTab extends StatefulWidget {
  final value;
  const PostTab({Key? key, required this.value}) : super(key: key);

  @override
  State<PostTab> createState() => _PostTabState();
}

class _PostTabState extends State<PostTab> with TickerProviderStateMixin {
  var photos = [
    'assets/image1.webp',
    'assets/image2.jpg',
    'assets/image3.jpg',
    'assets/image4.webp',
    'assets/image5.jpeg',
    'assets/image6.webp',
    'assets/image7.jpg',
    'assets/image8.jpg',
    'assets/image9.jpg',
    'assets/image1.webp',
    'assets/image2.jpg',
    'assets/image3.jpg',
    'assets/image4.webp',
    'assets/image5.jpeg',
    'assets/image6.webp',
    'assets/image7.jpg',
    'assets/image8.jpg',
    'assets/image9.jpg',
  ];
  List<Map<String, dynamic>> postList = [
    {"icon": Bx.photo_album, "label": "Post", "count": "130"},
    {"icon": Ic.round_history, "label": "Story", "count": "130"},
    {
      "icon": MaterialSymbols.play_arrow_outline_rounded,
      "label": "Video",
      "count": "130"
    },
    {"icon": Gg.edit_highlight, "label": "High", "count": "130"},
    {"icon": Bi.people, "label": "Live", "count": "130"},
  ];
  TabController? tabController;

  @override
  void initState() {
    super.initState();
    tabController =
        TabController(vsync: this, length: 5, initialIndex: widget.value);
  }

  @override
  void dispose() {
    tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 7.h,
        automaticallyImplyLeading: false,
        titleSpacing: -2.sp,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('Post',
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
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.zero,
              decoration: BoxDecoration(
                  /*         color: Colors.red, */
                  shape: BoxShape.rectangle,
                  border: Border.all(width: 0.1, color: customTextColor),
                  borderRadius: BorderRadius.circular(5)),
              child: ButtonsTabBar(
                  radius: 5,
                  labelSpacing: 0,
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.height > 667
                          ? 2.9.w
                          : 2.5.w),
                  buttonMargin: const EdgeInsets.all(0),
                  unselectedBorderColor: Colors.black,
                  borderColor: Colors.black,
                  borderWidth: 0.1,
                  height: 13.h,
                  unselectedBackgroundColor: Colors.white,
                  backgroundColor: const Color(0xffe2e2e2),
                  controller: tabController,
                  tabs: [
                    Tab(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: primaryColorOfApp),
                              child: Padding(
                                padding: EdgeInsets.all(8.sp),
                                child: Iconify(
                                  postList[0]["icon"],
                                  color: Colors.white,
                                  /*      size: index == 2 ? 27.sp : 20.sp, */
                                ),
                              )),
                          SizedBox(
                            height: 0.5.h,
                          ),
                          Text(
                            postList[0]["label"],
                            style: TextStyle(
                                color: customTextColor,
                                fontFamily: 'Poppins',
                                fontSize: 10.sp),
                          ),
                          SizedBox(
                            height: 0.5.h,
                          ),
                          Text(
                            postList[0]["count"],
                            style: TextStyle(
                                color: customTextColor,
                                fontFamily: 'Poppins',
                                fontSize: 10.sp),
                          ),
                        ],
                      ),
                    ),
                    Tab(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: primaryColorOfApp),
                              child: Padding(
                                padding: EdgeInsets.all(8.sp),
                                child: Iconify(
                                  postList[1]["icon"],
                                  color: Colors.white,
                                  /*      size: index == 2 ? 27.sp : 20.sp, */
                                ),
                              )),
                          SizedBox(
                            height: 0.5.h,
                          ),
                          Text(
                            postList[1]["label"],
                            style: TextStyle(
                                color: customTextColor,
                                fontFamily: 'Poppins',
                                fontSize: 10.sp),
                          ),
                          SizedBox(
                            height: 0.5.h,
                          ),
                          Text(
                            postList[1]["count"],
                            style: TextStyle(
                                color: customTextColor,
                                fontFamily: 'Poppins',
                                fontSize: 10.sp),
                          ),
                        ],
                      ),
                    ),
                    Tab(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: primaryColorOfApp),
                              child: Padding(
                                padding: EdgeInsets.all(8.sp),
                                child: Iconify(
                                  postList[2]["icon"],
                                  color: Colors.white,
                                  /*      size: index == 2 ? 27.sp : 20.sp, */
                                ),
                              )),
                          SizedBox(
                            height: 0.5.h,
                          ),
                          Text(
                            postList[2]["label"],
                            style: TextStyle(
                                color: customTextColor,
                                fontFamily: 'Poppins',
                                fontSize: 10.sp),
                          ),
                          SizedBox(
                            height: 0.5.h,
                          ),
                          Text(
                            postList[2]["count"],
                            style: TextStyle(
                                color: customTextColor,
                                fontFamily: 'Poppins',
                                fontSize: 10.sp),
                          ),
                        ],
                      ),
                    ),
                    Tab(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: primaryColorOfApp),
                              child: Padding(
                                padding: EdgeInsets.all(8.sp),
                                child: Iconify(
                                  postList[3]["icon"],
                                  color: Colors.white,
                                  /*      size: index == 2 ? 27.sp : 20.sp, */
                                ),
                              )),
                          SizedBox(
                            height: 0.5.h,
                          ),
                          Text(
                            postList[3]["label"],
                            style: TextStyle(
                                color: customTextColor,
                                fontFamily: 'Poppins',
                                fontSize: 10.sp),
                          ),
                          SizedBox(
                            height: 0.5.h,
                          ),
                          Text(
                            postList[3]["count"],
                            style: TextStyle(
                                color: customTextColor,
                                fontFamily: 'Poppins',
                                fontSize: 10.sp),
                          ),
                        ],
                      ),
                    ),
                    Tab(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: primaryColorOfApp),
                              child: Padding(
                                padding: EdgeInsets.all(8.sp),
                                child: Iconify(
                                  postList[4]["icon"],
                                  color: Colors.white,
                                  /*      size: index == 2 ? 27.sp : 20.sp, */
                                ),
                              )),
                          SizedBox(
                            height: 0.5.h,
                          ),
                          Text(
                            postList[4]["label"],
                            style: TextStyle(
                                color: customTextColor,
                                fontFamily: 'Poppins',
                                fontSize: 10.sp),
                          ),
                          SizedBox(
                            height: 0.5.h,
                          ),
                          Text(
                            postList[4]["count"],
                            style: TextStyle(
                                color: customTextColor,
                                fontFamily: 'Poppins',
                                fontSize: 10.sp),
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
            Expanded(
              child: TabBarView(controller: tabController, children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisSpacing: 4,
                              mainAxisSpacing: 4,
                              crossAxisCount: 3),
                      scrollDirection: Axis.vertical,
                      itemCount: photos.length,
                      itemBuilder: (_, i) {
                        return Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                    image: AssetImage(
                                      photos[i],
                                    ),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Positioned(
                              top: 5.5.h,
                              child: Column(
                                children: [
                                  Iconify(
                                    i.isEven
                                        ? MaterialSymbols
                                            .play_arrow_outline_rounded
                                        : Bx.photo_album,
                                    color: Colors.white,
                                    size: i.isEven ? 25.sp : 20.sp,
                                  ),
                                  SizedBox(
                                    height: 3.h,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '20-Aug-2020',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                            fontSize: 10.sp),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        );
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisSpacing: 4,
                              mainAxisSpacing: 4,
                              crossAxisCount: 3),
                      scrollDirection: Axis.vertical,
                      itemCount: photos.length,
                      itemBuilder: (_, i) {
                        return Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                    image: AssetImage(
                                      photos[i],
                                    ),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Positioned(
                              top: 5.5.h,
                              child: Column(
                                children: [
                                  Iconify(
                                    i.isEven
                                        ? MaterialSymbols
                                            .play_arrow_outline_rounded
                                        : Bx.photo_album,
                                    color: Colors.white,
                                    size: i.isEven ? 25.sp : 20.sp,
                                  ),
                                  SizedBox(
                                    height: 3.h,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '20-Aug-2020',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                            fontSize: 10.sp),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        );
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisSpacing: 4,
                              mainAxisSpacing: 4,
                              crossAxisCount: 3),
                      scrollDirection: Axis.vertical,
                      itemCount: photos.length,
                      itemBuilder: (_, i) {
                        return Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                    image: AssetImage(
                                      photos[i],
                                    ),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Positioned(
                              top: 5.5.h,
                              child: Column(
                                children: [
                                  Iconify(
                                    i.isEven
                                        ? MaterialSymbols
                                            .play_arrow_outline_rounded
                                        : Bx.photo_album,
                                    color: Colors.white,
                                    size: i.isEven ? 25.sp : 20.sp,
                                  ),
                                  SizedBox(
                                    height: 3.h,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '20-Aug-2020',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                            fontSize: 10.sp),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        );
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisSpacing: 4,
                              mainAxisSpacing: 4,
                              crossAxisCount: 3),
                      scrollDirection: Axis.vertical,
                      itemCount: photos.length,
                      itemBuilder: (_, i) {
                        return Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                    image: AssetImage(
                                      photos[i],
                                    ),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Positioned(
                              top: 5.5.h,
                              child: Column(
                                children: [
                                  Iconify(
                                    i.isEven
                                        ? MaterialSymbols
                                            .play_arrow_outline_rounded
                                        : Bx.photo_album,
                                    color: Colors.white,
                                    size: i.isEven ? 25.sp : 20.sp,
                                  ),
                                  SizedBox(
                                    height: 3.h,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '20-Aug-2020',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                            fontSize: 10.sp),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        );
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisSpacing: 4,
                              mainAxisSpacing: 4,
                              crossAxisCount: 2),
                      scrollDirection: Axis.vertical,
                      itemCount: photos.length,
                      itemBuilder: (_, i) {
                        return Stack(
                          alignment: Alignment.topLeft,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                    image: AssetImage(
                                      photos[i],
                                    ),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Video Ended',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      fontSize: 8.sp),
                                ),
                                Text(
                                  '25-January-2022',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      fontSize: 7.sp),
                                ),
                              ],
                            ),
                          ],
                        );
                      }),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
