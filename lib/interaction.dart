import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/eva.dart';
import 'package:sizer/sizer.dart';

class Interaction1 extends StatefulWidget {
  const Interaction1({Key? key}) : super(key: key);

  @override
  State<Interaction1> createState() => _Interaction1State();
}

class _Interaction1State extends State<Interaction1> {
  var images = [
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
  var names = [
    "Rashid",
    "farhan",
    "hamza",
    "aquib",
    "shiraj",
    "pravin",
    "sufiya",
    "sadaf",
    "tahera",
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 7.h,
          automaticallyImplyLeading: false,
          titleSpacing: -10.sp,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text('Interactions',
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
              icon: const Icon(
                Icons.arrow_back,
                color: primaryColorOfApp,
              )),
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: ButtonsTabBar(
                borderWidth: 1,
                buttonMargin: EdgeInsets.all(7.sp),
                borderColor: primaryColorOfApp,
                unselectedBorderColor: primaryColorOfApp,
                contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
                radius: 20.sp,
                backgroundColor: primaryColorOfApp,
                unselectedBackgroundColor: const Color(0xffFFFFFF),
                unselectedLabelStyle: TextStyle(
                  color: primaryColorOfApp,
                  fontFamily: 'Poppins',
                  fontSize: 10.sp,
                ),
                labelStyle: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontSize: 10.sp,
                    fontWeight: FontWeight.bold),
                tabs: const [
                  Tab(
                    text: "Viewed me",
                  ),
                  Tab(
                    text: "Public-Survey",
                  ),
                  Tab(
                    text: "Likes-Post",
                  ),
                  Tab(
                    text: "Viewed post",
                  ),
                  Tab(
                    text: "Share-Post",
                  ),
                  Tab(
                    text: "Comments",
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Visit Your Profile',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: customTextColor,
                                  fontSize: 12.sp),
                            )
                          ],
                        ),
                      ),
                      Divider(
                        height: 1.sp,
                      ),
                      Expanded(
                        child: ListView.separated(
                            separatorBuilder: (context, index) {
                              return Divider(
                                height: 1.sp,
                              );
                            },
                            shrinkWrap: true,
                            itemCount: images.length,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 4.w),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            CircleAvatar(
                                              radius: 17.sp,
                                              backgroundColor: customTextColor,
                                              child: CircleAvatar(
                                                radius: 16.sp,
                                                backgroundColor: Colors.white,
                                                child: CircleAvatar(
                                                  radius: 15.sp,
                                                  backgroundImage: AssetImage(
                                                      images[index]),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: 1.w, top: 1.5.h),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                /*  mainAxisAlignment:
                                                    MainAxisAlignment.end, */
                                                children: [
                                                  Text(
                                                    '@abdcprofile',
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            primaryColorOfApp,
                                                        fontSize: 12.sp),
                                                  ),
                                                  Text(
                                                    'profile name',
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        color: customTextColor,
                                                        fontSize: 11.sp),
                                                  ),
                                                  Text(
                                                    '25-November 2022  7:33PM',
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        color: customTextColor,
                                                        fontSize: 6.sp),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                        ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                              elevation: 0,
                                              minimumSize: Size(24.w, 4.h),
                                              // padding: EdgeInsets.symmetric(
                                              //     horizontal: 40.0, vertical: 20.0),
                                              backgroundColor:
                                                  const Color(0xff0087FF),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0))),
                                          child: Text(
                                            "follow",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 11.sp,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              );
                            }),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 6.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Your Survey Post',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: customTextColor,
                                  fontSize: 11.sp),
                            )
                          ],
                        ),
                      ),
                      Divider(
                        height: 10.sp,
                      ),
                      Expanded(
                        child: ListView.separated(
                            separatorBuilder: (context, index) {
                              return const Divider();
                            },
                            shrinkWrap: true,
                            itemCount: images.length,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 6.w),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              width: 15.w,
                                              height: 7.h,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.rectangle,
                                                  border: Border.all(
                                                      width: 0.5,
                                                      color: customTextColor),
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              child: SvgPicture.asset(
                                                'assets/graph.svg',
                                                width: 60,
                                                height: 30,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      Text(
                                                        'Post',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            color:
                                                                customTextColor,
                                                            fontSize: 11.sp),
                                                      ),
                                                      SizedBox(
                                                        width: 1.w,
                                                      ),
                                                      Text(
                                                        '25-September 2022  7:33PM',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            color:
                                                                customTextColor,
                                                            fontSize: 8.sp),
                                                      )
                                                    ],
                                                  ),
                                                  Text(
                                                    'Survey Topic',
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        color: customTextColor,
                                                        fontSize: 12.sp),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                        const Iconify(
                                          Eva.arrow_right_fill,
                                          size: 15,
                                          color: Color(0xff333333),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              );
                            }),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text(
                              'Likes Your Post',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: customTextColor,
                                  fontSize: 12),
                            )
                          ],
                        ),
                      ),
                      const Divider(),
                      Expanded(
                        child: ListView.separated(
                            separatorBuilder: (context, index) {
                              return const Divider();
                            },
                            shrinkWrap: true,
                            itemCount: images.length,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              child: Image.network(
                                                images[index],
                                                height: 40,
                                                width: 40,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      Text(
                                                        'Post',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            color:
                                                                customTextColor,
                                                            fontSize: 11.sp),
                                                      ),
                                                      SizedBox(
                                                        width: 1.w,
                                                      ),
                                                      Text(
                                                        '25-September 2022  7:33PM',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            color:
                                                                customTextColor,
                                                            fontSize: 8.sp),
                                                      )
                                                    ],
                                                  ),
                                                  Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      Text(
                                                        '@profile-id',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            color:
                                                                primaryColorOfApp,
                                                            fontSize: 11.sp),
                                                      ),
                                                      SizedBox(
                                                        width: 1.w,
                                                      ),
                                                      Text(
                                                        'and',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            color:
                                                                customTextColor,
                                                            fontSize: 8.sp),
                                                      )
                                                    ],
                                                  ),
                                                  Text(
                                                    'Others 175 liked Your Post',
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        color: customTextColor,
                                                        fontSize: 11.sp),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                        const Iconify(
                                          Eva.arrow_right_fill,
                                          size: 15,
                                          color: Color(0xff333333),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              );
                            }),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text(
                              'Viewed Your Post',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: customTextColor,
                                  fontSize: 12),
                            )
                          ],
                        ),
                      ),
                      const Divider(),
                      Expanded(
                        child: ListView.separated(
                            separatorBuilder: (context, index) {
                              return const Divider();
                            },
                            shrinkWrap: true,
                            itemCount: images.length,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              child: Image.network(
                                                images[index],
                                                height: 40,
                                                width: 40,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: const [
                                                  Text(
                                                    '@abdcprofile',
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            primaryColorOfApp,
                                                        fontSize: 10),
                                                  ),
                                                  Text(
                                                    'profile name',
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        color: customTextColor,
                                                        fontSize: 10),
                                                  ),
                                                  Text(
                                                    '25-November 2022  7:33PM',
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        color: customTextColor,
                                                        fontSize: 8),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                        const Iconify(
                                          Eva.arrow_right_fill,
                                          size: 15,
                                          color: Color(0xff333333),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              );
                            }),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text(
                              'Share Your Post',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: customTextColor,
                                  fontSize: 12),
                            )
                          ],
                        ),
                      ),
                      const Divider(),
                      Expanded(
                        child: ListView.separated(
                            separatorBuilder: (context, index) {
                              return const Divider();
                            },
                            shrinkWrap: true,
                            itemCount: images.length,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              child: Image.network(
                                                images[index],
                                                height: 40,
                                                width: 40,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: const [
                                                  Text(
                                                    '@abdcprofile',
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            primaryColorOfApp,
                                                        fontSize: 10),
                                                  ),
                                                  Text(
                                                    'profile name',
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        color: customTextColor,
                                                        fontSize: 10),
                                                  ),
                                                  Text(
                                                    '25-November 2022  7:33PM',
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        color: customTextColor,
                                                        fontSize: 8),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                        const Iconify(
                                          Eva.arrow_right_fill,
                                          size: 15,
                                          color: Color(0xff333333),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              );
                            }),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text(
                              'Comments',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: customTextColor,
                                  fontSize: 12),
                            )
                          ],
                        ),
                      ),
                      const Divider(),
                      Expanded(
                        child: ListView.separated(
                            separatorBuilder: (context, index) {
                              return const Divider();
                            },
                            shrinkWrap: true,
                            itemCount: images.length,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              child: Image.network(
                                                images[index],
                                                height: 40,
                                                width: 40,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: const [
                                                  Text(
                                                    '@abdcprofile',
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            primaryColorOfApp,
                                                        fontSize: 10),
                                                  ),
                                                  Text(
                                                    'profile name',
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        color: customTextColor,
                                                        fontSize: 10),
                                                  ),
                                                  Text(
                                                    '25-November 2022  7:33PM',
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        color: customTextColor,
                                                        fontSize: 8),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                        const Iconify(
                                          Eva.arrow_right_fill,
                                          size: 15,
                                          color: Color(0xff333333),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              );
                            }),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
