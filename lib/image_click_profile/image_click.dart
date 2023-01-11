import 'package:flutter/material.dart';
import 'package:flutter_application_1/globals/colors.dart';
import 'package:flutter_application_1/homepage/reels.dart';
import 'package:flutter_application_1/reels/reels.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bi.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:iconify_flutter/icons/ri.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/link.dart';
import "package:flutter_application_1/reels/reels.dart";

import '../homepage/home1.dart';

class ImageClick extends StatefulWidget {
  const ImageClick({Key? key}) : super(key: key);

  @override
  State<ImageClick> createState() => _ImageClickState();
}

class _ImageClickState extends State<ImageClick> {
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
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 7.h,
          automaticallyImplyLeading: false,
          titleSpacing: -2.sp,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.w),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: primaryColorOfApp,
                  radius: 17.sp,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 16.sp,
                    child: CircleAvatar(
                      radius: 15.sp,
                      backgroundImage: const AssetImage('assets/image1.webp'),
                    ),
                  ),
                ),
                SizedBox(
                  width: 1.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          '@Nanncyjain23 ',
                          style: TextStyle(
                              color: primaryColorOfApp,
                              fontFamily: 'Poppins',
                              fontSize: 11.sp),
                        ),
                        Iconify(
                          Bi.patch_check,
                          size: 16.sp,
                          color: const Color(0xff038026),
                        ),
                      ],
                    ),
                    Text(
                      'Nanncy jain',
                      style: TextStyle(
                          color: customTextColor,
                          fontFamily: 'Poppins',
                          fontSize: 10.sp),
                    ),
                  ],
                )
              ],
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.more_vert,
                color: customTextColor,
              ),
              tooltip: 'Open shopping cart',
              onPressed: () {
                // handle the press
              },
            ),
          ],
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
        body: Column(
          children: [
            Container(
              height: 5.h,
              decoration: const BoxDecoration(
                color: Color(0xffE2E2E2),
                shape: BoxShape.rectangle,
              ),
              child: TabBar(
                labelPadding: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                indicatorColor: Colors.transparent,
                indicatorSize: TabBarIndicatorSize.label,
                /*   indicatorPadding: EdgeInsets.zero, */
                labelColor: const Color(0xff0087FF),
                unselectedLabelColor: const Color(0xff333333),
                tabs: [
                  Tab(
                    /*  height: 3.h, */
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.photo_library,
                          size: 15.sp,
                        ),
                        Text(
                          'Photos',
                          style:
                              TextStyle(fontFamily: 'Poppins', fontSize: 11.sp),
                        )
                      ],
                    ),
                  ),
                  Tab(
                    /*    height: , */
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.play_arrow_outlined,
                          size: 20.sp,
                        ),
                        Text(
                          'Videos',
                          style:
                              TextStyle(fontFamily: 'Poppins', fontSize: 11.sp),
                        )
                      ],
                    ),
                  ),
                  Tab(
                    /*  height: 20, */
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.restore,
                          size: 15.sp,
                        ),
                        Text(
                          'Story',
                          style:
                              TextStyle(fontFamily: 'Poppins', fontSize: 11.sp),
                        )
                      ],
                    ),
                  ),
                  Tab(
                    /*    height: 20, */
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '@',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Mention',
                          style:
                              TextStyle(fontFamily: 'Poppins', fontSize: 11.sp),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ListView.separated(
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(top: 0.5.h),
                          child: Card(
                            margin: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  height: 1.h,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 2.w),
                                  child: Row(
                                      /*   mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly, */
                                      children: [
                                        Row(
                                          children: [
                                            Stack(
                                              alignment: Alignment.bottomRight,
                                              children: [
                                                CircleAvatar(
                                                  radius: 18.sp,
                                                  backgroundColor:
                                                      primaryColorOfApp,
                                                  child: CircleAvatar(
                                                    radius: 17.sp,
                                                    backgroundColor:
                                                        Colors.white,
                                                    child: CircleAvatar(
                                                      radius: 16.sp,
                                                      backgroundImage:
                                                          AssetImage(
                                                              userlist[index]
                                                                  .image),
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  top: 1.h,
                                                  child: CircleAvatar(
                                                    radius: 4.sp,
                                                    backgroundColor:
                                                        const Color(0xff08A434),
                                                  ),
                                                )
                                              ],
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 1.w),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      Text(
                                                          userlist[index]
                                                              .username,
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 10.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                      Text(
                                                          userlist[index]
                                                              .userId,
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 12.sp,
                                                              color:
                                                                  primaryColorOfApp)),
                                                      Text(
                                                          userlist[index]
                                                              .status,
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 8.sp,
                                                              color: const Color(
                                                                  0xff08A434))),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 0.3.h,
                                                  ),
                                                  Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      Text(
                                                          userlist[index]
                                                              .location,
                                                          style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontSize: 8.sp,
                                                          )),
                                                      Iconify(
                                                        Ri.share_box_line,
                                                        color:
                                                            primaryColorOfApp,
                                                        size: 9.sp,
                                                      ),
                                                      SizedBox(
                                                        height: 2.h,
                                                        child: Link(
                                                          target:
                                                              LinkTarget.self,
                                                          uri: Uri.parse(
                                                            'https://myttube.com/',
                                                          ),
                                                          builder: (context,
                                                              followLink) {
                                                            return TextButton(
                                                              style: TextButton
                                                                  .styleFrom(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                                tapTargetSize:
                                                                    MaterialTapTargetSize
                                                                        .shrinkWrap,
                                                                foregroundColor:
                                                                    const Color(
                                                                        0xff0087FF),
                                                              ),
                                                              onPressed:
                                                                  followLink,
                                                              child: Text(
                                                                'https://myttube.com',
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontSize:
                                                                        8.sp),
                                                              ),
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        const Spacer(),
                                        /*    SizedBox(
                                          width: 2.w,
                                        ), */
                                        OutlinedButton(
                                            style: OutlinedButton.styleFrom(
                                                side: const BorderSide(
                                                    color: primaryColorOfApp),
                                                padding: EdgeInsets.zero,
                                                tapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap,
                                                elevation: 0,
                                                minimumSize:
                                                    Size(20.5.w, 3.8.h),
                                                // padding: EdgeInsets.symmetric(
                                                //     horizontal: 40.0, vertical: 20.0),
                                                backgroundColor: Colors.white,
                                                foregroundColor:
                                                    primaryColorOfApp,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.0))),
                                            onPressed: () {},
                                            child: Text(
                                              'following',
                                              style: TextStyle(
                                                  color: primaryColorOfApp,
                                                  fontFamily: 'Poppins',
                                                  fontSize: 11.sp),
                                            )),
                                        /*    SizedBox(
                                    width: 5,
                                  ), */
                                        IconButton(
                                            /* padding: EdgeInsets.zero, */
                                            constraints: const BoxConstraints(),
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.more_vert,
                                              size: 19.sp,
                                            )),
                                      ]),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 2.0),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 4.0, right: 4),
                                        child: Image.asset(
                                          userlist[index].image,
                                          width: double.infinity,
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                ),
                                SizedBox(
                                  height: 1.5.h,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/likeicon.svg',
                                          height: 3.h,
                                          width: 3.w,
                                          color: primaryColorOfApp,
                                        ),
                                        SizedBox(
                                          height: 1.3.h,
                                        ),
                                        Text(
                                          'Like',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 8.sp),
                                        ),
                                        Text(
                                          userlist[index].likecount.toString(),
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 8.sp),
                                        ),
                                      ],
                                    ),
                                    /*  sizedbox(context), */
                                    Column(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/commenticon.svg',
                                          height: 3.h,
                                          width: 3.w,
                                          color: iconColor,
                                        ),
                                        SizedBox(
                                          height: 1.3.h,
                                        ),
                                        Text(
                                          'Comments',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 8.sp),
                                        ),
                                        Text(
                                          userlist[index]
                                              .commentcount
                                              .toString(),
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 8.sp),
                                        ),
                                      ],
                                    ),
                                    /*    sizedbox(context), */
                                    Padding(
                                      padding: EdgeInsets.only(right: 3.sp),
                                      child: Column(
                                        children: [
                                          SvgPicture.asset(
                                            'assets/shareicon.svg',
                                            height: 3.h,
                                            width: 3.w,
                                            color: iconColor,
                                          ),
                                          SizedBox(
                                            height: 1.3.h,
                                          ),
                                          Text(
                                            'Share',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 8.sp),
                                          ),
                                          Text(
                                            userlist[index]
                                                .sharecount
                                                .toString(),
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 8.sp),
                                          ),
                                        ],
                                      ),
                                    ),
                                    /*    sizedbox(context), */
                                    Column(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/gifticon1.svg',
                                          height: 3.h,
                                          width: 3.w,
                                          color: primaryColorOfApp,
                                        ),
                                        SizedBox(
                                          height: 1.3.h,
                                        ),
                                        Text(
                                          'GIFT',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 8.sp),
                                        ),
                                        Text(
                                          userlist[index].giftcount.toString(),
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 8.sp),
                                        ),
                                      ],
                                    ),
                                    /* sizedbox(context), */
                                    Text(
                                      userlist[index].viewcount.toString(),
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 0.5),
                                    ),
                                    /*  Text(
                                      'View',
                                      style: TextStyle(fontFamily: 'Poppins', fontSize: 10),
                                    ), */
                                    Column(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/starsave.svg',
                                          height: 3.h,
                                          width: 3.w,
                                          color: primaryColorOfApp,
                                        ),
                                        SizedBox(
                                          height: 1.h,
                                        ),
                                        Text(
                                          'Saved',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 8.sp),
                                        ),
                                        SizedBox(
                                          height: 1.3.h,
                                        ),
                                        Text(
                                          '' /* userlist[index].giftcount.toString() */,
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 10.sp),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 0.5.h,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                          text: '#Timepass',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 8.sp),
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: ' @followmyteam',
                                              style: TextStyle(
                                                  color: primaryColorOfApp,
                                                  fontSize: 10.sp),
                                            ),
                                            TextSpan(
                                              text:
                                                  ' #Study#content#content#samplekkxajkjax',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 8.sp),
                                            )
                                          ]),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(8.sp),
                                      child: Row(
                                        children: [
                                          Iconify(
                                            Bi.check_circle_fill,
                                            color: Colors.red,
                                            size: 19.sp,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(left: 2.sp),
                                            child: Text(
                                              'boat',
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12.sp),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(left: 2.sp),
                                            child: Text(
                                              'Sponsered',
                                              style: TextStyle(
                                                  color:
                                                      const Color(0xff737373),
                                                  fontFamily: 'Poppins',
                                                  fontSize: 10.sp),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 8.0),
                                      child: IconButton(
                                          padding: EdgeInsets.zero,
                                          constraints: const BoxConstraints(),
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.more_vert,
                                            size: 19.sp,
                                          )),
                                    )
                                  ],
                                ),
                                Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    SizedBox(
                                      width: double.infinity,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(5),
                                        child: Image.network(
                                          'https://cdn.shopify.com/s/files/1/0057/8938/4802/articles/boAt-Rockerz-510---Best-Wireless-Headphones-of-2021_1_1024x.jpg?v=1611915753',
                                          width: double.infinity,
                                          height: 20.h,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: double.infinity,
                                      height: 5.h,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                            elevation: 0,
                                            backgroundColor: Colors.black,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        5.0))),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Shop Now",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12.sp,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return Divider(
                          color: Colors.transparent,
                        );
                      },
                      itemCount: userlist.length),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisExtent: 25.h,
                            crossAxisSpacing: 1.w,
                            mainAxisSpacing: 1.w,
                            crossAxisCount: 3),
                        scrollDirection: Axis.vertical,
                        itemCount: photos.length,
                        itemBuilder: (_, i) {
                          return Stack(
                            alignment: Alignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Reels1()),
                                  );
                                },
                                child: Container(
                                  /*      width: 200,
                                height: 300, */

                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                        image: AssetImage(
                                          photos[i],
                                        ),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white.withOpacity(0.5)),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: SvgPicture.asset(
                                    'assets/playicon.svg',
                                    height: 2.h,
                                    width: 2.w,
                                    fit: BoxFit.cover,
                                    /*   height: 18,
                                                  width: 18, */
                                  ),
                                ),
                              ),
                            ],
                          );
                        }),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 1.w,
                            mainAxisSpacing: 1.w,
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
                                    Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white.withOpacity(0.5)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: SvgPicture.asset(
                                          'assets/playicon.svg',
                                          height: 1.5.h,
                                          width: 2.w,
                                          fit: BoxFit.cover,
                                          /*height: 18,
                                             width : 18,*/
                                        ),
                                      ),
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
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 1.w,
                            mainAxisSpacing: 1.w,
                            crossAxisCount: 3),
                        scrollDirection: Axis.vertical,
                        itemCount: photos.length,
                        itemBuilder: (_, i) {
                          return Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                /*      width: 200,
                              height: 300, */

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
                                    Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white.withOpacity(0.5)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: SvgPicture.asset(
                                          'assets/playicon.svg',
                                          height: 1.5.h,
                                          width: 2.w,
                                          fit: BoxFit.cover,
                                          /*height: 18,
                                             width : 18,*/
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 3.h,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          '@arvind_khanna1',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              color: Colors.white,
                                              fontSize: 9.sp),
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
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
