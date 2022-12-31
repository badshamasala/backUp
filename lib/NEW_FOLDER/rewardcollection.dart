import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/NEW_FOLDER/rewardSponsored.dart';
import 'package:flutter_application_1/homepage/monetize_check.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bi.dart';
import 'package:iconify_flutter/icons/ei.dart';
import 'package:iconify_flutter/icons/emojione_monotone.dart';
import 'package:iconify_flutter/icons/eva.dart';
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
            height: 60.h,
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
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/awardicon.svg',
                      ),
                    ],
                  )
                ],
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}
