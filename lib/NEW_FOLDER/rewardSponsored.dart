import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/homepage/rewards_point.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bi.dart';
import 'package:iconify_flutter/icons/ei.dart';
import 'package:iconify_flutter/icons/emojione_monotone.dart';
import 'package:iconify_flutter/icons/eva.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:scratcher/scratcher.dart';
import 'package:sizer/sizer.dart';

import '../homepage/monetize_check.dart';
import '../homepage/widget_notification.dart';

class RewardSponsored extends StatefulWidget {
  const RewardSponsored({Key? key}) : super(key: key);

  @override
  State<RewardSponsored> createState() => _RewardSponsoredState();
}

class _RewardSponsoredState extends State<RewardSponsored> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 7.h,
          automaticallyImplyLeading: false,
          titleSpacing: -2.sp,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Row(
            children: [
              Text('Rewards from',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      color: customTextColor,
                      fontSize: 11.sp)),
              SizedBox(
                width: 1.w,
              ),
              Text('myttube',
                  style: TextStyle(
                      fontFamily: 'Satisfy',
                      color: primaryColorOfApp,
                      fontSize: 11.sp)),
              SizedBox(
                width: 1.w,
              ),
              Text('Sponsored partners',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      color: customTextColor,
                      fontSize: 11.sp)),
            ],
          ),
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
              decoration: BoxDecoration(
                  color: const Color(0xffE2E2E2),
                  shape: BoxShape.rectangle,
                  border:
                      Border.all(width: 0.5, color: const Color(0xffE2E2E2)),
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
                    text: 'Scratch card',
                  ),
                  Tab(
                    text: 'Gift Card',
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: 31.h,
                          /*     childAspectRatio: 3.5, */
                          crossAxisSpacing: 2.w,
                          mainAxisSpacing: 0,
                          crossAxisCount: 2),
                      shrinkWrap: true,
                      itemBuilder: ((context, index) {
                        return InkWell(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: ((context) {
                                  return Dialog(
                                    child: Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        Scratcher(
                                          onScratchEnd: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const RewardsPoint()),
                                            );
                                          },
                                          image: Image.asset(
                                            'assets/scratchcard.png',
                                          ),
                                          brushSize: 30,
                                          threshold: 50,
                                          color: primaryColorOfApp,
                                          onChange: (value) => debugPrint(
                                              "Scratch progress: $value%"),
                                          onThreshold: () => log(
                                              "Threshold reached, you won!"),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            child: Container(
                                              height: 250,
                                              width: 275,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        positionCross(context)
                                      ],
                                    ),
                                  );
                                }));
                          },
                          child: Padding(
                            padding: EdgeInsets.only(top: 1.h),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/ww.jpg',
                                  fit: BoxFit.cover,
                                ),
                                Container(
                                    width: 44.w,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.rectangle,
                                        border: Border.all(
                                            width: 0.5,
                                            color: primaryColorOfApp),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Padding(
                                      padding: EdgeInsets.all(15.sp),
                                      child: Center(
                                        child: Text(
                                          "Scratch This Card",
                                          style: TextStyle(
                                              color: customTextColor,
                                              fontFamily: "Poppins",
                                              fontSize: 10.sp),
                                        ),
                                      ),
                                    ))
                              ],
                            ),
                          ),
                        );
                      }),
                      itemCount: 10),
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
          ],
        ),
      ),
    );
  }
}
