// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_application_1/account_type/uploadimage.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/homepage/change_interest.dart';
import 'package:flutter_application_1/homepage/home1.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bi.dart';
import 'package:iconify_flutter/icons/emojione_monotone.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:iconify_flutter/icons/ri.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/link.dart';

class Ads extends StatefulWidget {
  const Ads({Key? key}) : super(key: key);

  @override
  State<Ads> createState() => _AdsState();
}

class _AdsState extends State<Ads> {
  List changeinterest = [
    'Enternainment',
    'Technologies',
    'Education',
    'Finance',
    'Music',
    'Hollywood',
    'Foods',
    'Events',
    'Gov. & Law',
    'Health',
    'Fashion',
    'Business',
    'Beauty',
    'Lifestyle',
    'Bollywood',
    'Sports',
    'Science',
    'News',
    'Tourism',
    'International',
  ];
  List templist = [];
  @override
  Widget build(BuildContext context) {
    Size size;
    double height;
    size = MediaQuery.of(context).size;
    height = size.height;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 7.h,
          automaticallyImplyLeading: false,
          titleSpacing: -2.sp,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text('Ads',
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
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xffE2E2E2),
                  shape: BoxShape.rectangle,
                  border:
                      Border.all(width: 0.5, color: const Color(0xffE2E2E2)),
                  borderRadius: BorderRadius.circular(10)),
              child: const TabBar(
                indicatorWeight: 0.1,
                automaticIndicatorColorAdjustment: false,
                /* isScrollable: true, */
                indicatorSize: TabBarIndicatorSize.label,
                indicatorPadding: EdgeInsets.zero,
                labelColor: primaryColorOfApp,
                unselectedLabelColor: Color(0xff333333),
                tabs: [
                  Tab(
                    text: 'Activity',
                  ),
                  Tab(
                    text: 'Change',
                  ),
                ],
              ),
            ),
            Expanded(
              /*   height: 300, */
              child: TabBarView(children: [
                ListView.builder(
                    itemCount: userlist.length,
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
                                padding: EdgeInsets.symmetric(horizontal: 2.w),
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
                                                  backgroundColor: Colors.white,
                                                  child: CircleAvatar(
                                                    radius: 16.sp,
                                                    backgroundImage: AssetImage(
                                                        userlist[index].image),
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
                                            padding: EdgeInsets.only(left: 1.w),
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
                                                    Text(userlist[index].userId,
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontSize: 12.sp,
                                                            color:
                                                                primaryColorOfApp)),
                                                    Text(userlist[index].status,
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
                                                          fontFamily: 'Poppins',
                                                          fontSize: 8.sp,
                                                        )),
                                                    Iconify(
                                                      Ri.share_box_line,
                                                      color: primaryColorOfApp,
                                                      size: 9.sp,
                                                    ),
                                                    SizedBox(
                                                      height: 2.h,
                                                      child: Link(
                                                        target: LinkTarget.self,
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
                                              minimumSize: Size(20.5.w, 3.8.h),
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
                                        userlist[index].commentcount.toString(),
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
                                          userlist[index].sharecount.toString(),
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
                                          padding: EdgeInsets.only(left: 2.sp),
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
                                          padding: EdgeInsets.only(left: 2.sp),
                                          child: Text(
                                            'Sponsered',
                                            style: TextStyle(
                                                color: const Color(0xff737373),
                                                fontFamily: 'Poppins',
                                                fontSize: 10.sp),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
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
                                                  BorderRadius.circular(5.0))),
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
                    }),
                Expanded(child: ChangeInterest(value: false)),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
