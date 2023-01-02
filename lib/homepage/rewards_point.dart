import 'dart:developer';

import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
// ignore: unused_import
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/fluent_emoji_high_contrast.dart';
import 'package:iconify_flutter/icons/icon_park_outline.dart';
import 'package:iconify_flutter/icons/ion.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:scratcher/scratcher.dart';
import 'package:sizer/sizer.dart';

class RewardsPoint extends StatefulWidget {
  const RewardsPoint({Key? key}) : super(key: key);

  @override
  State<RewardsPoint> createState() => _RewardsPointState();
}

class _RewardsPointState extends State<RewardsPoint> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 7.h,
        automaticallyImplyLeading: false,
        titleSpacing: -2.sp,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('Rewards points',
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Material(
                borderRadius: BorderRadius.circular(10),
                elevation: 5,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/uber.jpg',
                    height: 30.h,
                    width: 70.w,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:
                              Border.all(width: 0.5, color: primaryColorOfApp)),
                      child: Padding(
                        padding: EdgeInsets.all(12.sp),
                        child: Text(
                          'UBER',
                          style: TextStyle(
                              fontSize: 8.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      'UBER',
                      style: TextStyle(
                          fontSize: 15.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      'Sponsored by ',
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 11.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Congratulations! get ₹ 300 Flat OFF',
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Row(
                      children: [
                        Text(
                          'Offer from UBER RIDE',
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'How does it work?',
                      style: TextStyle(
                          fontSize: 15.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border:
                                Border.all(width: 1, color: primaryColorOfApp)),
                        child: Padding(
                          padding: EdgeInsets.all(7.sp),
                          child: Text("1"),
                        ),
                      ),
                      Container(
                        color: primaryColorOfApp,
                        height: 5.h,
                        width: 0.1.h,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border:
                                Border.all(width: 1, color: primaryColorOfApp)),
                        child: Padding(
                          padding: EdgeInsets.all(7.sp),
                          child: Text("2"),
                        ),
                      ),
                      Container(
                        color: primaryColorOfApp,
                        height: 5.h,
                        width: 0.1.h,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border:
                                Border.all(width: 1, color: primaryColorOfApp)),
                        child: Padding(
                          padding: EdgeInsets.all(7.sp),
                          child: Text("3"),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 23.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 6.sp, left: 2.w),
                          child: Text(
                            "Scratch this card Win to Surprise Gift",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 2.w),
                          child: Text(
                            "Scratch this card Win to Surprise Gift",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 2.w),
                          child: Text(
                            "Scratch this card Win to Surprise Gift",
                            style: TextStyle(
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
              SizedBox(
                height: 2.h,
              ),
              Row(
                children: [
                  Iconify(
                    Ion.alert_circle,
                    color: primaryColorOfApp,
                  ),
                  Text(
                    "Expires December 2022",
                    style: TextStyle(
                      fontSize: 9.sp,
                      fontFamily: 'Poppins',
                    ),
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
                        border:
                            Border.all(width: 0.6, color: primaryColorOfApp),
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(5),
                            bottomLeft: Radius.circular(5))),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Row(
                        children: [
                          Iconify(MaterialSymbols.content_copy_outline),
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
                    decoration: BoxDecoration(
                        color: primaryColorOfApp,
                        shape: BoxShape.rectangle,
                        borderRadius: const BorderRadius.only(
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
              SizedBox(
                height: 4.h,
              ),
              SizedBox(
                height: 6.h,
                width: double.infinity,
                child: ElevatedButton.icon(
                  icon: Icon(FluentIcons.share_24_regular),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      backgroundColor: primaryColorOfApp,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                  label: Text(
                    "REDEEM NOW",
                    style: TextStyle(fontSize: 12.sp, fontFamily: 'Poppins'),
                  ),
                ),
              ),
              SizedBox(
                height: 9.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
