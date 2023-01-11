import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/account_type/uploadimage.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/archive_post/rewardSponsored.dart';

import 'package:flutter_application_1/homepage/monetize_check.dart';
import 'package:flutter_application_1/homepage/widget_notification.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bi.dart';
import 'package:iconify_flutter/icons/carbon.dart';
import 'package:iconify_flutter/icons/ei.dart';
import 'package:iconify_flutter/icons/emojione_monotone.dart';
import 'package:iconify_flutter/icons/eva.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:sizer/sizer.dart';

class Rewardcollection extends StatefulWidget {
  const Rewardcollection({Key? key}) : super(key: key);

  @override
  State<Rewardcollection> createState() => _RewardcollectionState();
}

class _RewardcollectionState extends State<Rewardcollection> {
  @override
  Widget build(BuildContext context) {
    Size size;
    double height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 7.h,
          automaticallyImplyLeading: false,
          titleSpacing: -2.sp,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text('Reward Collections',
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
        body: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 8.w),
                child: Text(
                  'Today 21-January 2023 02:32 PM',
                  style: TextStyle(
                      color: customTextColor,
                      fontFamily: 'Poppins',
                      fontSize: 8.sp),
                ),
              )
            ],
          ),
          SizedBox(
            height: 1.5.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Post',
                style: TextStyle(
                    color: customTextColor,
                    fontFamily: 'Poppins',
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Views',
                style: TextStyle(
                    color: customTextColor,
                    fontFamily: 'Poppins',
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 1.5.h,
          ),
          SizedBox(
            height: 0.2.h,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    height: 0.1.h,
                    width: 2.w,
                    decoration: BoxDecoration(
                        color: primaryColorOfApp,
                        borderRadius: BorderRadius.circular(5),
                        border:
                            Border.all(width: 0.5, color: primaryColorOfApp)),
                  );
                },
                separatorBuilder: ((context, index) {
                  return SizedBox(
                    width: 1.w,
                  );
                }),
                itemCount: 25),
          ),
          SizedBox(
            height: 1.5.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(5.sp),
                child: Padding(
                  padding: EdgeInsets.all(8.sp),
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(5.sp)),
                    child: Text(
                      '10065',
                      style: TextStyle(
                          color: customTextColor,
                          letterSpacing: 1,
                          fontFamily: 'Poppins',
                          fontSize: 13.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(5.sp),
                child: Padding(
                  padding: EdgeInsets.all(8.sp),
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(5.sp)),
                    child: Text(
                      '0002365',
                      style: TextStyle(
                          color: customTextColor,
                          letterSpacing: 1,
                          fontFamily: 'Poppins',
                          fontSize: 13.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 1.5.h,
          ),
          Container(
            height: 5.h,
            decoration: BoxDecoration(
                color: const Color(0xffE2E2E2),
                shape: BoxShape.rectangle,
                border: Border.all(width: 0.5, color: const Color(0xffE2E2E2)),
                borderRadius: BorderRadius.circular(10)),
            child: const TabBar(
              labelStyle: TextStyle(fontFamily: 'Poppins'),
              indicatorWeight: 0.1,
              indicatorColor: Colors.transparent,
              automaticIndicatorColorAdjustment: false,
              /* isScrollable: true, */
              indicatorSize: TabBarIndicatorSize.label,
              indicatorPadding: EdgeInsets.zero,
              labelColor: primaryColorOfApp,
              unselectedLabelColor: Color(0xff333333),
              tabs: [
                Tab(
                  text: 'Received',
                ),
                Tab(
                  text: 'Sent',
                ),
              ],
            ),
          ),
          SizedBox(
            height: 65.h,
            child: TabBarView(children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Column(
                  children: [
                    SizedBox(
                      height: 2.h,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RewardSponsored()),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Iconify(
                                Ei.trophy,
                                color: primaryColorOfApp,
                                size: 25.sp,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Rewards from',
                                    style: TextStyle(
                                        color: customTextColor,
                                        fontFamily: 'Poppins',
                                        fontSize: 10.sp),
                                  ),
                                  SizedBox(
                                    width: 1.w,
                                  ),
                                  Text('myttube’s',
                                      style: TextStyle(
                                          color: primaryColorOfApp,
                                          fontFamily: 'Satisfy',
                                          fontSize: 10.sp)),
                                  SizedBox(
                                    width: 1.w,
                                  ),
                                  Text('Sponshored partners',
                                      style: TextStyle(
                                          color: customTextColor,
                                          fontFamily: 'Poppins',
                                          fontSize: 10.sp)),
                                ],
                              ),
                            ],
                          ),
                          Iconify(
                            Eva.arrow_right_fill,
                            size: 15.sp,
                            color: customTextColor,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    InkWell(
                      onTap: () {
                        showRecievedGift(context);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 0.5.w,
                              ),
                              const Iconify(
                                EmojioneMonotone.wrapped_gift,
                                color: primaryColorOfApp,
                              ),
                              SizedBox(
                                width: 1.w,
                              ),
                              Text(
                                'Received Gift from Fans/Followers',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: customTextColor,
                                    fontSize: 10.sp),
                              ),
                            ],
                          ),
                          Iconify(
                            Eva.arrow_right_fill,
                            size: 15.sp,
                            color: customTextColor,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    InkWell(
                      onTap: () {
                        showCollectedPoints(context);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 0.5.w,
                              ),
                              Iconify(
                                Bi.gift,
                                color: primaryColorOfApp,
                                size: 18.sp,
                              ),
                              SizedBox(
                                width: 1.5.w,
                              ),
                              Row(
                                children: [
                                  Text('Collect Points from',
                                      style: TextStyle(
                                          color: customTextColor,
                                          fontFamily: 'Poppins',
                                          fontSize: 10.sp)),
                                  SizedBox(
                                    width: 1.w,
                                  ),
                                  Text('myttube’s',
                                      style: TextStyle(
                                        color: primaryColorOfApp,
                                        fontSize: 10.sp,
                                        fontFamily: 'Satisfy',
                                      )),
                                ],
                              ),
                            ],
                          ),
                          Iconify(
                            Eva.arrow_right_fill,
                            size: 15.sp,
                            color: customTextColor,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.05,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'Invite your friends\n Win surprise gift',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xff333333),
                              /*     fontWeight:
                                                                                                      FontWeight.bold, */
                              fontSize: 10),
                        ),
                        OutlinedButton.icon(
                          icon: SvgPicture.asset(
                            'assets/inviteicon.svg',
                            /*     height: 18,
                                                                                                    width: 18, */
                          ),
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                              minimumSize: const Size(140, 35),
                              /*    minimumSize: Size(32, 30), */
                              elevation: 0,
                              /* padding: EdgeInsets.zero, */
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              side: const BorderSide(
                                color: Color(0xff0087FF),
                              ),
                              /*  padding:
                                                                      EdgeInsets.symmetric(horizontal: 9.0, vertical: 0), */
                              foregroundColor: primaryColorOfApp,
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0))),
                          label: const Padding(
                            padding: EdgeInsets.all(1.0),
                            child: Text(
                              "Invite",
                              style: TextStyle(
                                  fontSize: 12, fontFamily: 'Poppins'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SvgPicture.asset(
                      'assets/multidigi.svg',
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 2.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.w),
                    child: Row(
                      children: [
                        Text(
                          "You didn’t send any gift yet",
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: 'Poppins',
                              color: customTextColor),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.bottomCenter,
                    children: [
                      Positioned(
                        top: 18.9.h,
                        child: ShaderMask(
                            blendMode: BlendMode.srcIn,
                            shaderCallback: (rect) => const LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xff03194B),
                                      Color(0xff2C81F8),
                                    ]).createShader(rect),
                            child: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  border: Border.all(width: 0.5),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: EdgeInsets.all(8.sp),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 2.h,
                                    ),
                                    Text(
                                      'Start to sending gift to your friend & your’s',
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          fontFamily: 'Poppins'),
                                    ),
                                    Text(
                                      'favorites star',
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          fontFamily: 'Poppins'),
                                    ),
                                  ],
                                ),
                              ),
                            )),
                      ),
                      SvgPicture.asset(
                        "assets/rewardSent.svg",
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 9.w),
                    child: SizedBox(
                      width: double.infinity,
                      height: 6.h,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: const Color(0xff0087FF),
                            shape: RoundedRectangleBorder(
                                borderRadius: const UploadImage().radius())),
                        child: Text(
                          "Start",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 9.w),
                    child: Row(
                      children: [
                        Text(
                          'Invite your friends and community circle',
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: 'Poppins',
                              color: primaryColorOfApp),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 9.w),
                    child: Row(
                      children: [
                        Text(
                          'chance to win surprise gift',
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: 'Poppins',
                              color: primaryColorOfApp),
                        ),
                        Iconify(
                          EmojioneMonotone.wrapped_gift,
                          color: primaryColorOfApp,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 9.w),
                    child: ShaderMask(
                      blendMode: BlendMode.srcIn,
                      shaderCallback: (rect) => const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xff03194B),
                            Color(0xff2C81F8),
                          ]).createShader(rect),
                      child: SizedBox(
                        width: double.infinity,
                        child: OutlinedButton.icon(
                          icon: Iconify(Carbon.partnership),
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                              minimumSize: Size(42.w, 5.h),
                              elevation: 0,
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              side: const BorderSide(
                                color: Color(0xff0087FF),
                              ),
                              /*         backgroundColor: Colors.white, */
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0))),
                          label: Text(
                            "Invite",
                            style: TextStyle(
                                /*        color: customTextColor, */
                                fontSize: 12.sp,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}

showRecievedGift(context) {
  Size size = MediaQuery.of(context).size;
  double height = size.height, width = size.width;
  return showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        // <-- SEE HERE
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20.0),
        ),
      ),
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
          return Stack(
            clipBehavior: Clip.none,
            children: [
              Column(mainAxisSize: MainAxisSize.min, children: [
                SizedBox(
                  height: 2.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6.w),
                  child: Row(
                    children: [
                      IconButton(
                          padding: const EdgeInsets.all(0),
                          constraints: const BoxConstraints(),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: const Iconify(
                            Mdi.arrow_back,
                            color: primaryColorOfApp,
                          )),
                      SizedBox(
                        width: 4.w,
                      ),
                      Text(
                        'Received Gift from fans/followers',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Poppins',
                            fontSize: 12.sp),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Container(
                    decoration: BoxDecoration(
                        /*   boxShadow: const [
                          BoxShadow(
                              blurStyle: BlurStyle.outer,
                              color: Colors.grey,
                              blurRadius: 15.0,
                              offset: Offset(0.0, 0.75)),
                        ], */
                        shape: BoxShape.rectangle,
                        border: Border.all(width: 1, color: primaryColorOfApp),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 2.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 6.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                '@Profile_Username',
                                style: TextStyle(
                                    color: primaryColorOfApp,
                                    fontFamily: 'Poppins',
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0.5),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Iconify(
                                    EmojioneMonotone.wrapped_gift,
                                    color: primaryColorOfApp,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'GIFT ',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 10.sp),
                                      ),
                                      Text(
                                        ' 5',
                                        style: TextStyle(
                                            color: primaryColorOfApp,
                                            fontFamily: 'Poppins',
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '\u{20B9}',
                                    style: TextStyle(
                                        fontSize: 25.sp,
                                        color: primaryColorOfApp),
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '\u{20B9}',
                                        style: TextStyle(
                                            fontSize: 20.sp,
                                            color: const Color(0xff0B1C3D)),
                                      ),
                                      Text(
                                        '1825.00',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 15.sp,
                                            color: const Color(0xff0B1C3D)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 3.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        '\u{20B9}',
                                        style: TextStyle(
                                            fontSize: 20.sp,
                                            color: const Color(0xff0B1C3D)),
                                      ),
                                      Text(
                                        '1825.00',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 15.sp,
                                            color: const Color(0xff0B1C3D)),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    '*tax applicable & conditions apply',
                                    style: TextStyle(
                                        color: customTextColor,
                                        fontFamily: 'Poppins',
                                        fontSize: 8.sp),
                                  ),
                                ],
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    minimumSize: Size(40.w, 5.h),
                                    // padding: EdgeInsets.symmetric(
                                    //     horizontal: 40.0, vertical: 20.0),
                                    backgroundColor: const Color(0xff0087FF),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            const UploadImage().radius())),
                                child: Text(
                                  "Withdraw",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.sp,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                SizedBox(
                  height: 300,
                  child: ListView.separated(
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            showFlipkart(context);
                          },
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 10.w),
                                    child: Text(
                                      'Sended you gift Gift amount autometically added your main wallet',
                                      style: TextStyle(
                                        fontSize: 8.sp,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        CircleAvatar(
                                          backgroundColor: Colors.black,
                                          radius: 17.sp,
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 16.sp,
                                            child: CircleAvatar(
                                              radius: 15.sp,
                                              backgroundImage: const NetworkImage(
                                                  'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg?quality=75&width=982&height=726&auto=webp'),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 1.w,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              '@abdcprofile',
                                              style: TextStyle(
                                                color: primaryColorOfApp,
                                                fontSize: 10,
                                                fontFamily: 'Poppins',
                                              ),
                                            ),
                                            Text(
                                              'profile name',
                                              style: TextStyle(
                                                fontSize: 10,
                                                fontFamily: 'Poppins',
                                              ),
                                            ),
                                            Text(
                                              '25-November 2022  7:33PM',
                                              style: TextStyle(
                                                fontSize: 10,
                                                fontFamily: 'Poppins',
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Container(
                                      height: 5.h,
                                      width: 40.w,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          border: Border.all(
                                              width: 1,
                                              color: primaryColorOfApp),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            CircleAvatar(
                                              radius: 13.sp,
                                              backgroundImage: const NetworkImage(
                                                  'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg?quality=75&width=982&height=726&auto=webp'),
                                            ),
                                            SizedBox(
                                              width: 1.w,
                                            ),
                                            Text(
                                              'Flipkart',
                                              style: TextStyle(
                                                fontSize: 10.sp,
                                                fontFamily: 'Poppins',
                                              ),
                                            ),
                                            SizedBox(
                                              width: 1.w,
                                            ),
                                            Text(
                                              '\u{20B9} 825.00',
                                              style: TextStyle(
                                                fontSize: 10.sp,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const Divider(
                          height: 1,
                        );
                      },
                      itemCount: 10),
                )
              ]),
              positionCross(context)
            ],
          );
        });
      });
}

showFlipkart(context) {
  Size size = MediaQuery.of(context).size;
  double height = size.height;
  return showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        // <-- SEE HERE
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20.0),
        ),
      ),
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
          return Stack(
            clipBehavior: Clip.none,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 6.w),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(
                    height: 2.h,
                  ),
                  Image.network(
                    'https://d1o7uku192uawx.cloudfront.net/mobile/media/catalog/product/3/1/312x200_flipkart.png',
                    height: 15.h,
                    width: 45.w,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Flipkart Gift Voucher ₹ 1000',
                        style: TextStyle(
                            color: primaryColorOfApp,
                            fontFamily: 'Poppins',
                            fontSize: 18.sp),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Iconify(
                        MaterialSymbols.error_circle_rounded,
                        color: primaryColorOfApp,
                        size: 20.sp,
                      ),
                      SizedBox(
                        width: 1.w,
                      ),
                      Text(
                        'Expires December 2022',
                        style:
                            TextStyle(fontFamily: 'Poppins', fontSize: 10.sp),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Copy Code & Use at Brand Official Checkout page ',
                        style:
                            TextStyle(fontFamily: 'Poppins', fontSize: 10.sp),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 54.w,
                        height: 6.h,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            border: Border.all(
                                width: 0.6, color: primaryColorOfApp),
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(5),
                                bottomLeft: Radius.circular(5))),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Row(
                            children: [
                              const Iconify(
                                  MaterialSymbols.content_copy_outline),
                              Text(
                                'FLIPKART2022ORDER',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 34.w,
                        height: 6.h,
                        decoration: const BoxDecoration(
                            color: primaryColorOfApp,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(5),
                                bottomRight: Radius.circular(5))),
                        child: Center(
                          child: Text(
                            "SHOP NOW",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.sp,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '*terms and conditions apply',
                          style:
                              TextStyle(fontFamily: 'Poppins', fontSize: 10.sp),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.1,
                  )
                ]),
              ),
              positionCross(context)
            ],
          );
        });
      });
}

showCollectedPoints(context) {
  Size size = MediaQuery.of(context).size;
  double height = size.height, width = size.width;
  return showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        // <-- SEE HERE
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20.0),
        ),
      ),
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
          return Stack(
            clipBehavior: Clip.none,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 6.w),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Hey @profile username',
                        style:
                            TextStyle(fontFamily: 'Poppins', fontSize: 10.sp),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Your reward points details is below',
                        style:
                            TextStyle(fontFamily: 'Poppins', fontSize: 10.sp),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        border: Border.all(width: 1, color: primaryColorOfApp),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 2.h,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              FluentIcons.gift_card_24_regular,
                              color: const Color(0xff03194B),
                              size: 40.sp,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Today 26 January 2022',
                                  style: TextStyle(
                                      fontFamily: 'Poppins', fontSize: 10.sp),
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'YOUR RANK',
                                      style: TextStyle(
                                          color: const Color(0xff0B1C3D),
                                          fontFamily: 'Poppins',
                                          fontSize: 10.sp),
                                    ),
                                    Text(
                                      'LEVEL-0',
                                      style: TextStyle(
                                          color: const Color(0xff0B1C3D),
                                          fontFamily: 'Poppins',
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Text(
                              'January',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 12.sp,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'VI-1',
                              style: TextStyle(
                                  fontFamily: 'Poppins', fontSize: 10.sp),
                            ),
                            Text(
                              'LK-2',
                              style: TextStyle(
                                  fontFamily: 'Poppins', fontSize: 10.sp),
                            ),
                            Text(
                              'SR-3',
                              style: TextStyle(
                                  fontFamily: 'Poppins', fontSize: 10.sp),
                            ),
                            Text(
                              'VISIT',
                              style: TextStyle(
                                  fontFamily: 'Poppins', fontSize: 10.sp),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        SizedBox(
                          height: 0.2.h,
                          child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Container(
                                  height: 0.1.h,
                                  width: 2.w,
                                  decoration: BoxDecoration(
                                      color: primaryColorOfApp,
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                          width: 0.5,
                                          color: primaryColorOfApp)),
                                );
                              },
                              separatorBuilder: ((context, index) {
                                return SizedBox(
                                  width: 1.w,
                                );
                              }),
                              itemCount: 25),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Text(
                              '00013',
                              style: TextStyle(
                                  color: Color(0xff0B1C3D),
                                  fontFamily: 'Poppins',
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '00013',
                              style: TextStyle(
                                  color: Color(0xff0B1C3D),
                                  fontFamily: 'Poppins',
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '00013',
                              style: TextStyle(
                                  color: Color(0xff0B1C3D),
                                  fontFamily: 'Poppins',
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '00013',
                              style: TextStyle(
                                  color: Color(0xff0B1C3D),
                                  fontFamily: 'Poppins',
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 6.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                '@Profile_Username',
                                style: TextStyle(
                                    color: primaryColorOfApp,
                                    fontFamily: 'Poppins',
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 6.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '*NOTE: you not collect yet, any gift from myttube',
                                style: TextStyle(
                                    fontFamily: 'Poppins', fontSize: 8.sp),
                              ),
                              Text(
                                'See More',
                                style: TextStyle(
                                    color: primaryColorOfApp,
                                    fontFamily: 'Poppins',
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  )
                ]),
              ),
              positionCross(context)
            ],
          );
        });
      });
}
