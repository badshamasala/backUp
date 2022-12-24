// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
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
    'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg?quality=75&width=982&height=726&auto=webp',
    'https://images.unsplash.com/photo-1544168190-79c17527004f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&w=1000&q=80',
    'https://media.istockphoto.com/id/1007763808/photo/portrait-of-handsome-latino-african-man.jpg?s=612x612&w=0&k=20&c=XPL1ukeC99OY8HBfNa_njDujOPf9Xz4yCEOo7O3evU0=',
    'https://api.time.com/wp-content/uploads/2017/12/joey-degrandis-hsam-memory.jpg',
  
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJxv0P4qDS_KAn-lIeyKpOSVEM87pPKbIVIQ&usqp=CAU',
    'https://i.gremicdn.pl/image/free/4104b01f2c33bd2758e86f296b92d03d/?t=crop:1313:814:nowe:0:37.075845974329,resize:fill:408:255,enlarge:1',
    'https://media.istockphoto.com/id/1009749608/photo/young-woman-portrait-in-the-city.jpg?s=612x612&w=0&k=20&c=nBmdXrCkI6Zz-J1EkCGQAamaYlZeIOQAtKunC4WMT-U=',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSejyWxg3_4iE9iSY9SuGG4Yhy2Hm3Tk_rxHg&usqp=CAU',
    'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80',
    'https://cdn.pixabay.com/photo/2017/06/20/22/14/man-2425121__340.jpg',
    'https://cdn.stocksnap.io/img-thumbs/280h/businessmeeting-people_QVIEE1UZSX.jpg',
    'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg?quality=75&width=982&height=726&auto=webp',
    'https://images.unsplash.com/photo-1544168190-79c17527004f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&w=1000&q=80',
    'https://media.istockphoto.com/id/1007763808/photo/portrait-of-handsome-latino-african-man.jpg?s=612x612&w=0&k=20&c=XPL1ukeC99OY8HBfNa_njDujOPf9Xz4yCEOo7O3evU0=',
    'https://api.time.com/wp-content/uploads/2017/12/joey-degrandis-hsam-memory.jpg',
    '',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJxv0P4qDS_KAn-lIeyKpOSVEM87pPKbIVIQ&usqp=CAU',
    'https://i.gremicdn.pl/image/free/4104b01f2c33bd2758e86f296b92d03d/?t=crop:1313:814:nowe:0:37.075845974329,resize:fill:408:255,enlarge:1',
    'https://media.istockphoto.com/id/1009749608/photo/young-woman-portrait-in-the-city.jpg?s=612x612&w=0&k=20&c=nBmdXrCkI6Zz-J1EkCGQAamaYlZeIOQAtKunC4WMT-U=',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSejyWxg3_4iE9iSY9SuGG4Yhy2Hm3Tk_rxHg&usqp=CAU',
    'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80',
    'https://cdn.pixabay.com/photo/2017/06/20/22/14/man-2425121__340.jpg',
    'https://cdn.stocksnap.io/img-thumbs/280h/businessmeeting-people_QVIEE1UZSX.jpg',
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
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.zero,
              decoration: BoxDecoration(
                  /*         color: Colors.red, */
                  shape: BoxShape.rectangle,
                  border: Border.all(width: 0.5, color: customTextColor),
                  borderRadius: BorderRadius.circular(5)),
              child: ButtonsTabBar(
                  radius: 7,
                  labelSpacing: 0,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 4.5),
                  buttonMargin: const EdgeInsets.all(4),
                  unselectedBorderColor: Colors.white,
                  borderColor: Colors.black,
                  borderWidth: 0,
                  height: 76,
                  unselectedBackgroundColor: Colors.white,
                  backgroundColor: const Color(0xffe2e2e2),
                  /* overlayColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.hovered))
                        return Colors.amberAccent; //<-- SEE HERE
                      return null;
                    },
                  ), */
                  /*   labelColor: primaryColorOfApp,
                  unselectedLabelColor: customTextColor,
                  padding: EdgeInsets.zero,
                  indicatorWeight: 0.1,
                  indicatorColor: primaryColorOfApp,
                  indicatorSize: TabBarIndicatorSize.label, */
                  controller: tabController,
                  tabs: [
                    Tab(
                      iconMargin: EdgeInsets.zero,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0),
                            child: CircleAvatar(
                              backgroundColor: primaryColorOfApp,
                              child: SvgPicture.asset(
                                'assets/posticon.svg',
                                height: 18,
                                width: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const Text(
                            'Post',
                            style: TextStyle(
                                color: customTextColor,
                                fontFamily: 'Poppins',
                                fontSize: 10),
                          ),
                          const Text(
                            '130',
                            style: TextStyle(
                                color: customTextColor,
                                fontFamily: 'Poppins',
                                fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                    Tab(
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: primaryColorOfApp,
                            child: SvgPicture.asset(
                              'assets/historyicon.svg',
                              height: 18,
                              width: 18,
                              color: Colors.white,
                            ),
                          ),
                          const Text(
                            'Story',
                            style: TextStyle(
                                color: customTextColor,
                                fontFamily: 'Poppins',
                                fontSize: 10),
                          ),
                          const Text(
                            '130',
                            style: TextStyle(
                                color: customTextColor,
                                fontFamily: 'Poppins',
                                fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                    Tab(
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: primaryColorOfApp,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 4.0),
                              child: SvgPicture.asset(
                                'assets/videoicon.svg',
                                height: 18,
                                width: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const Text(
                            'video',
                            style: TextStyle(
                                color: customTextColor,
                                fontFamily: 'Poppins',
                                fontSize: 10),
                          ),
                          const Text(
                            '130',
                            style: TextStyle(
                                color: customTextColor,
                                fontFamily: 'Poppins',
                                fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                    Tab(
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: primaryColorOfApp,
                            child: SvgPicture.asset(
                              'assets/highlights.svg',
                              height: 18,
                              width: 18,
                              color: Colors.white,
                            ),
                          ),
                          const Text(
                            'High',
                            style: TextStyle(
                                color: customTextColor,
                                fontFamily: 'Poppins',
                                fontSize: 10),
                          ),
                          const Text(
                            '130',
                            style: TextStyle(
                                color: customTextColor,
                                fontFamily: 'Poppins',
                                fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                    Tab(
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: primaryColorOfApp,
                            child: SvgPicture.asset(
                              'assets/privacygroup.svg',
                              height: 18,
                              width: 18,
                              color: Colors.white,
                            ),
                          ),
                          const Text(
                            'Live',
                            style: TextStyle(
                                color: customTextColor,
                                fontFamily: 'Poppins',
                                fontSize: 10),
                          ),
                          const Text(
                            '130',
                            style: TextStyle(
                                color: customTextColor,
                                fontFamily: 'Poppins',
                                fontSize: 10),
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
                        return Container(
                          /*       width: 200, */
                          height: 300,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                                image: NetworkImage(photos[i]),
                                fit: BoxFit.cover),
                          ),
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
                        return Container(
                          /*       width: 200, */
                          height: 300,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                                image: NetworkImage(photos[i]),
                                fit: BoxFit.cover),
                          ),
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
                        return Container(
                          /*       width: 200, */
                          height: 300,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                                image: NetworkImage(photos[i]),
                                fit: BoxFit.cover),
                          ),
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
                        return Container(
                          /*       width: 200, */
                          height: 300,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                                image: NetworkImage(photos[i]),
                                fit: BoxFit.cover),
                          ),
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
                        return Container(
                          /*       width: 200, */
                          height: 300,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                                image: NetworkImage(photos[i]),
                                fit: BoxFit.cover),
                          ),
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
