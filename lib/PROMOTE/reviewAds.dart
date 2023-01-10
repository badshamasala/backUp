import 'dart:io';

import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/promote/promote.dart';
import 'package:flutter_application_1/promote/promote2.dart';
import 'package:flutter_application_1/promote/promote3.dart';
import 'package:flutter_application_1/text_post/post_text.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bi.dart';
import 'package:iconify_flutter/icons/emojione_monotone.dart';
import 'package:iconify_flutter/icons/fluent_emoji_high_contrast.dart';
import 'package:iconify_flutter/icons/heroicons.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../getx/gettimer.dart';

class ReviewAds extends StatefulWidget {
  final value;
  final value2;
  final groupValue1;
  final groupValue0;
  const ReviewAds(
      {Key? key, this.value, this.value2, this.groupValue1, this.groupValue0})
      : super(key: key);

  @override
  State<ReviewAds> createState() => _ReviewAdsState();
}

class _ReviewAdsState extends State<ReviewAds> {
  final GetImage getkar = Get.put(GetImage());

  var images = [
    'assets/image1.webp',
    'assets/image2.jpg',
    'assets/image3.jpg',
    'assets/image4.webp',
    'assets/image5.jpeg',
  ];
  var names = [
    "Rashid",
    "farhan",
    "hamza",
    "aquib",
    "aquib",
  ];
  @override
  Widget build(BuildContext context) {
    final provider2 = Provider.of<PromoteProvider>(context, listen: false);
    final provider = Provider.of<ChangeColorProvider>(context, listen: false);
    final provider1 = Provider.of<RadioProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 7.h,
        automaticallyImplyLeading: false,
        titleSpacing: -2.sp,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('Review Ads',
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
        padding: EdgeInsets.symmetric(
            horizontal: provider2.isPremium ? 2.5.w : 10.w),
        child: Column(
          children: [
            SizedBox(
              height: provider2.isPremium ? 0 : 5.h,
            ),
            provider2.isPremium
                ? widget.value == 2 && getkar.image5 != null
                    ? Card(
                        margin: EdgeInsets.zero,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              color: Colors.white,
                              height: 13.h,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: ListView.separated(
                                    physics: const ClampingScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                        width: 2.w,
                                      );
                                    },
                                    scrollDirection: Axis.horizontal,
                                    itemCount: images.length,
                                    itemBuilder: (context, index) {
                                      if (index == 0) {
                                        return Column(
                                          children: [
                                            Stack(children: [
                                              Container(
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        width: 1.sp,
                                                        color:
                                                            primaryColorOfApp),
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.all(4.sp),
                                                    child: Icon(
                                                      Icons.person,
                                                      color: const Color(
                                                          0xffc4c4c4),
                                                      size: 40.sp,
                                                    ),
                                                  )),
                                              Positioned(
                                                top: 6.h,
                                                left: 10.w,
                                                child: Container(
                                                    height: 2.h,
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            width: 0.5.w),
                                                        shape: BoxShape.circle,
                                                        color:
                                                            primaryColorOfApp),
                                                    child: IconButton(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(0),
                                                        constraints:
                                                            const BoxConstraints(),
                                                        onPressed: () {},
                                                        icon: Icon(
                                                          Icons.add,
                                                          size: 10.sp,
                                                          color: Colors.black,
                                                        ))),
                                              )
                                            ]),
                                            SizedBox(
                                              height: 1.h,
                                            ),
                                            Text(
                                              'Add Story',
                                              style: TextStyle(
                                                  color: primaryColorOfApp,
                                                  fontFamily: 'Poppins',
                                                  fontSize: 10.sp),
                                            )
                                          ],
                                        );
                                      } else {
                                        return Column(
                                          children: [
                                            Container(
                                              decoration: const BoxDecoration(
                                                gradient: LinearGradient(
                                                    begin: Alignment.topCenter,
                                                    end: Alignment.bottomCenter,
                                                    colors: [
                                                      Color(0xff2C81F8),
                                                      Color(0xff03194B)
                                                    ]),
                                                shape: BoxShape.circle,
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(1.5.sp),
                                                child: Container(
                                                  decoration:
                                                      const BoxDecoration(
                                                    color: Colors.white,
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.all(2.sp),
                                                    child: CircleAvatar(
                                                      radius: 22.sp,
                                                      backgroundImage:
                                                          AssetImage(
                                                        images[index],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 1.h,
                                            ),
                                            Text(
                                              names[index],
                                              style: TextStyle(
                                                  color: customTextColor,
                                                  fontFamily: 'Poppins',
                                                  fontSize: 10.sp),
                                            )
                                          ],
                                        );
                                      }
                                    }),
                              ),
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 3.w,
                                ),
                                CircleAvatar(
                                  radius: 15.sp,
                                  backgroundColor: primaryColorOfApp,
                                  child: CircleAvatar(
                                    radius: 14.sp,
                                    backgroundColor: Colors.white,
                                    child: CircleAvatar(
                                      radius: 13.sp,
                                      backgroundImage: const NetworkImage(
                                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1QprGHP-E72bJzurFg83woK-h_i4Fu0WPfQ&usqp=CAU'),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 2.w,
                                ),
                                Text('Sponsered by',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 10.sp,
                                        color: const Color(0xff737373))),
                                InkWell(
                                  onTap: () {},
                                  child: Text('@SPIDER-MAN',
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 10.sp,
                                          color: primaryColorOfApp)),
                                ),
                                const Spacer(),
                                IconButton(
                                    padding: EdgeInsets.zero,
                                    constraints: const BoxConstraints(),
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.more_vert,
                                      size: 19.sp,
                                    )),
                              ],
                            ),
                            SizedBox(
                              height: 0.5.h,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.file(
                                getkar.image5!,
                                fit: BoxFit.cover,
                                height: 17.h,
                                width: double.infinity,
                              ),
                            ),
                            Row(
                              children: [
                                const Spacer(),
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 1.h,
                                    ),
                                    const Icon(
                                      FluentIcons.thumb_like_24_filled,
                                      color: primaryColorOfApp,
                                    ),
                                    SizedBox(
                                      height: 1.h,
                                    ),
                                    Text(
                                      'Like 67k',
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 8.sp),
                                    ),
                                    SizedBox(
                                      height: 1.h,
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 1.h,
                                    ),
                                    const Icon(
                                      FluentIcons.share_24_filled,
                                      color: Color(0xff0B1C3D),
                                    ),
                                    SizedBox(
                                      height: 1.h,
                                    ),
                                    Text(
                                      'Share 10k',
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 8.sp),
                                    ),
                                    SizedBox(
                                      height: 1.h,
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Text(
                                  "100M+",
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Views",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 12.sp,
                                  ),
                                ),
                                const Spacer(),
                                widget.groupValue0 == 1
                                    ? SizedBox()
                                    : Padding(
                                        padding: EdgeInsets.only(right: 2.w),
                                        child: OutlinedButton(
                                          onPressed: () {},
                                          style: OutlinedButton.styleFrom(
                                              minimumSize: Size(30.w, 5.h),
                                              elevation: 0,
                                              padding: EdgeInsets.zero,
                                              tapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              side: const BorderSide(
                                                color: Color(0xff0087FF),
                                              ),
                                              backgroundColor: Colors.white,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.sp))),
                                          child: Consumer<RadioProvider>(
                                              builder: (context, value, child) {
                                            return Text(
                                              provider1.newDropValue ??
                                                  "Book Now",
                                              style: TextStyle(
                                                  color: primaryColorOfApp,
                                                  fontSize: 10.sp,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w600),
                                            );
                                          }),
                                        ),
                                      ),
                              ],
                            )
                          ],
                        ),
                      )
                    : widget.value == 3 && getkar.image6 != null
                        ? Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.black,
                                        radius: 18.sp,
                                        child: CircleAvatar(
                                          backgroundColor: Colors.white,
                                          radius: 17.sp,
                                          child: CircleAvatar(
                                            radius: 16.sp,
                                            backgroundImage: const AssetImage(
                                                "assets/image1.webp"),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 2.w,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                "BRAND",
                                                style: TextStyle(
                                                    color: Color(0xff47123E),
                                                    fontFamily: "Poppins",
                                                    fontSize: 12.sp,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                "@Profile.Username",
                                                style: TextStyle(
                                                    color: primaryColorOfApp,
                                                    fontFamily: "Poppins",
                                                    fontSize: 12.sp),
                                              ),
                                              Iconify(
                                                Bi.patch_check,
                                                color: primaryColorOfApp,
                                                size: 18.sp,
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                "Sponsered",
                                                style: TextStyle(
                                                    color: customTextColor,
                                                    fontFamily: "Poppins",
                                                    fontSize: 10.sp),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  Icon(
                                    Icons.more_vert,
                                    size: 18.sp,
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 2.h,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Avail up to 50% additional discount on best foods in the nea",
                                    style: TextStyle(
                                        color: customTextColor,
                                        fontFamily: "Poppins",
                                        fontSize:
                                            MediaQuery.of(context).size.height >
                                                    667
                                                ? 8.sp
                                                : 10.sp),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Image.file(
                                  getkar.image6!,
                                  fit: BoxFit.cover,
                                  height: 45.h,
                                  width: double.infinity,
                                ),
                              ),
                              widget.groupValue0 == 1
                                  ? const SizedBox()
                                  : Consumer<ChangeColorProvider>(
                                      builder: (context, value, child) {
                                      return SizedBox(
                                        width: double.infinity,
                                        height: 6.h,
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                              elevation: 0,
                                              tapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              backgroundColor:
                                                  provider.newColor ??
                                                      Colors.black,
                                              foregroundColor: Colors.white,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0))),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                provider1.newDropValue ??
                                                    "Shop Now",
                                                style: TextStyle(
                                                    fontSize: 12.sp,
                                                    fontFamily: 'Poppins',
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Icon(
                                                Icons.arrow_right,
                                                color: Colors.white,
                                              )
                                            ],
                                          ),
                                        ),
                                      );
                                    }),
                              SizedBox(
                                height: 2.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    children: [
                                      const Icon(
                                        FluentIcons.thumb_like_24_filled,
                                        color: primaryColorOfApp,
                                      ),
                                      SizedBox(
                                        height: 1.h,
                                      ),
                                      Text(
                                        'Like 67k',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 8.sp),
                                      ),
                                    ],
                                  ),
                                  /*       const Spacer(), */
                                  Column(
                                    children: [
                                      const Icon(
                                        FluentIcons.share_24_filled,
                                        color: Color(0xff0B1C3D),
                                      ),
                                      SizedBox(
                                        height: 1.h,
                                      ),
                                      Text(
                                        'Share 10k',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 8.sp),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const Icon(
                                        FluentIcons.comment_edit_24_regular,
                                        color: Color(0xff0B1C3D),
                                      ),
                                      SizedBox(
                                        height: 1.h,
                                      ),
                                      Text(
                                        'Comment',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 8.sp),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "100M+",
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Views",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 12.sp,
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Icon(
                                        FluentIcons.bookmark_24_regular,
                                        color: Color(0xff0B1C3D),
                                      ),
                                      SizedBox(
                                        height: 1.h,
                                      ),
                                      Text(
                                        'Save',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 8.sp),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          )
                        : GetBuilder<GetImage>(builder: (controller) {
                            return Column(
                              children: [
                                SizedBox(
                                  height: 13.h,
                                ),
                                Container(
                                  color: const Color(0xffF5F5F5),
                                  child: Padding(
                                    padding: EdgeInsets.all(2.sp),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 3.w),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  CircleAvatar(
                                                    backgroundColor:
                                                        Colors.black,
                                                    radius: 18.sp,
                                                    child: CircleAvatar(
                                                      backgroundColor:
                                                          Colors.white,
                                                      radius: 17.sp,
                                                      child: CircleAvatar(
                                                        radius: 16.sp,
                                                        backgroundImage:
                                                            const AssetImage(
                                                                "assets/image1.webp"),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 2.w,
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Text(
                                                            "@Profile.Username",
                                                            style: TextStyle(
                                                                color:
                                                                    primaryColorOfApp,
                                                                fontFamily:
                                                                    "Poppins",
                                                                fontSize:
                                                                    10.sp),
                                                          ),
                                                          Iconify(
                                                            Bi.patch_check,
                                                            color:
                                                                primaryColorOfApp,
                                                            size: 18.sp,
                                                          ),
                                                          Text(
                                                            "BRAND NAME",
                                                            style: TextStyle(
                                                                color: const Color(
                                                                    0xff47123E),
                                                                fontFamily:
                                                                    "Poppins",
                                                                fontSize: 10.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text(
                                                            "Sponsered",
                                                            style: TextStyle(
                                                                color:
                                                                    customTextColor,
                                                                fontFamily:
                                                                    "Poppins",
                                                                fontSize:
                                                                    10.sp),
                                                          ),
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              Icon(
                                                Icons.more_vert,
                                                size: 18.sp,
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 2.h,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 3.w),
                                          child: Row(
                                            children: [
                                              Text(
                                                "Avail up to 50% additional discount on best foods ",
                                                style: TextStyle(
                                                    color: customTextColor,
                                                    fontFamily: "Poppins",
                                                    fontSize:
                                                        MediaQuery.of(context)
                                                                    .size
                                                                    .height >
                                                                667
                                                            ? 8.sp
                                                            : 10.sp),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 1.h,
                                        ),
                                        SizedBox(
                                          height: 30.h,
                                          child: ListView.separated(
                                              padding:
                                                  EdgeInsets.only(left: 2.w),
                                              separatorBuilder:
                                                  (context, index) {
                                                return SizedBox(
                                                  width: 2.w,
                                                );
                                              },
                                              shrinkWrap: true,
                                              physics:
                                                  const BouncingScrollPhysics(),
                                              itemCount:
                                                  getkar.imageList.length,
                                              scrollDirection: Axis.horizontal,
                                              itemBuilder: ((context, index) {
                                                return Container(
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          width: 0.7,
                                                          color: const Color(
                                                              0xffc4c4c4)),
                                                      shape:
                                                          BoxShape.rectangle),
                                                  child: Column(
                                                    children: [
                                                      Padding(
                                                        padding: EdgeInsets.all(
                                                            2.sp),
                                                        child: Image.file(
                                                          File(getkar
                                                              .imageList[index]
                                                              .path),
                                                          height: 23.h,
                                                          width: 48.w,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text('Boats',
                                                                  style: TextStyle(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontSize:
                                                                          8.sp)),
                                                              Text(
                                                                  'Order only on ',
                                                                  style: TextStyle(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontSize:
                                                                          8.sp)),
                                                              Text(
                                                                  'Flipkart App',
                                                                  style: TextStyle(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontSize:
                                                                          8.sp)),
                                                            ],
                                                          ),
                                                          SizedBox(
                                                            width: 4.w,
                                                          ),
                                                          widget.groupValue0 ==
                                                                  1
                                                              ? SizedBox()
                                                              : OutlinedButton(
                                                                  style: OutlinedButton.styleFrom(
                                                                      side: const BorderSide(
                                                                          color:
                                                                              primaryColorOfApp),
                                                                      padding:
                                                                          EdgeInsets
                                                                              .zero,
                                                                      tapTargetSize:
                                                                          MaterialTapTargetSize
                                                                              .shrinkWrap,
                                                                      elevation:
                                                                          0,
                                                                      minimumSize: Size(
                                                                          25.w,
                                                                          5.h),
                                                                      foregroundColor:
                                                                          Colors
                                                                              .white,
                                                                      backgroundColor:
                                                                          primaryColorOfApp,
                                                                      shape: RoundedRectangleBorder(
                                                                          borderRadius: BorderRadius.circular(
                                                                              5.0))),
                                                                  onPressed:
                                                                      () {},
                                                                  child: Text(
                                                                    provider1
                                                                            .newDropValue ??
                                                                        "Shop Now",
                                                                    style: TextStyle(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        fontSize: 8
                                                                            .sp,
                                                                        fontWeight:
                                                                            FontWeight.bold),
                                                                  )),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              })),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            );
                          })
                : Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Review Ads",
                            style: TextStyle(
                                color: customTextColor,
                                fontFamily: "Poppins",
                                fontSize: 12.sp),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.black,
                                radius: 18.sp,
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 17.sp,
                                  child: CircleAvatar(
                                    radius: 16.sp,
                                    backgroundImage:
                                        const AssetImage("assets/image1.webp"),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 2.w,
                              ),
                              Text(
                                "@Profile.Username",
                                style: TextStyle(
                                    color: primaryColorOfApp,
                                    fontFamily: "Poppins",
                                    fontSize: 12.sp),
                              )
                            ],
                          ),
                          Icon(
                            Icons.more_vert,
                            size: 18.sp,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Container(
                        width: double.infinity,
                        height: 30.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            shape: BoxShape.rectangle,
                            border: Border.all(
                                width: 0.5, color: primaryColorOfApp)),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: const Color(0xffEC416B),
                                radius: 8.sp,
                              ),
                              SizedBox(
                                width: 1.w,
                              ),
                              Text(
                                "BRAND",
                                style: TextStyle(
                                    color: const Color(0xffEC416B),
                                    fontFamily: "Poppins",
                                    fontSize: 12.sp),
                              ),
                              SizedBox(
                                width: 1.w,
                              ),
                              Text(
                                "Sponsered",
                                style: TextStyle(
                                    color: customTextColor,
                                    fontFamily: "Poppins",
                                    fontSize: 10.sp),
                              )
                            ],
                          ),
                          Icon(
                            Icons.more_vert,
                            size: 18.sp,
                          )
                        ],
                      ),
                      widget.value == 2
                          ? GetBuilder<GetImage>(builder: (controller) {
                              return Container(
                                  child: getkar.image2 != null
                                      ? Stack(
                                          alignment: Alignment.bottomCenter,
                                          children: [
                                            Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.transparent,
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  border: Border.all(
                                                      color: Colors.black,
                                                      width: 0.1),
                                                ),
                                                height: 17.h,
                                                width: double.infinity,
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  child: Image.file(
                                                    getkar.image2!,
                                                    fit: BoxFit.cover,
                                                  ),
                                                )),
                                            widget.groupValue0 == 1
                                                ? const SizedBox()
                                                : Consumer<ChangeColorProvider>(
                                                    builder: (context, value,
                                                        child) {
                                                    return SizedBox(
                                                      height: 5.h,
                                                      width: double.infinity,
                                                      child: ElevatedButton(
                                                        onPressed: () {},
                                                        style: ElevatedButton.styleFrom(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 3.w,
                                                                    right: 2.w),
                                                            elevation: 0,
                                                            tapTargetSize:
                                                                MaterialTapTargetSize
                                                                    .shrinkWrap,
                                                            backgroundColor:
                                                                provider.newColor ??
                                                                    Colors
                                                                        .black,
                                                            foregroundColor:
                                                                Colors.white,
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5.0))),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Consumer<
                                                                    RadioProvider>(
                                                                builder:
                                                                    (context,
                                                                        value,
                                                                        child) {
                                                              return Text(
                                                                provider1
                                                                        .newDropValue ??
                                                                    "Show Now",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        12.sp,
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              );
                                                            }),
                                                            const Icon(
                                                              Icons.arrow_right,
                                                              color:
                                                                  Colors.white,
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    );
                                                  })
                                          ],
                                        )
                                      : Text("One image"));
                            })
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GetBuilder<GetImage>(builder: (controller) {
                                  return Container(
                                      child: getkar.image3 != null
                                          ? Stack(
                                              alignment: Alignment.bottomCenter,
                                              children: [
                                                Container(
                                                    decoration: BoxDecoration(
                                                      color: Colors.transparent,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                      border: Border.all(
                                                          color: Colors.black,
                                                          width: 0.1),
                                                    ),
                                                    height: 17.h,
                                                    width: 39.5.w,
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                      child: Image.file(
                                                        getkar.image3!,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    )),
                                                widget.groupValue1 == 2
                                                    ? const SizedBox()
                                                    : widget.groupValue1 == 1
                                                        ? SizedBox(
                                                            height: 5.h,
                                                            width: 39.5.w,
                                                            child: Consumer<
                                                                    ChangeColorProvider>(
                                                                builder:
                                                                    (context,
                                                                        value,
                                                                        child) {
                                                              return ElevatedButton(
                                                                onPressed:
                                                                    () {},
                                                                style: ElevatedButton
                                                                    .styleFrom(
                                                                        padding:
                                                                            EdgeInsets
                                                                                .only(
                                                                          left:
                                                                              2.w,
                                                                        ),
                                                                        elevation:
                                                                            0,
                                                                        tapTargetSize:
                                                                            MaterialTapTargetSize
                                                                                .shrinkWrap,
                                                                        backgroundColor: provider
                                                                                .newColor ??
                                                                            Colors
                                                                                .black,
                                                                        foregroundColor:
                                                                            Colors
                                                                                .white,
                                                                        shape: RoundedRectangleBorder(
                                                                            borderRadius:
                                                                                BorderRadius.circular(5.0))),
                                                                child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Consumer<RadioProvider>(builder:
                                                                        (context,
                                                                            value,
                                                                            child) {
                                                                      print(
                                                                          "----------RadioPRovider");
                                                                      return Text(
                                                                        provider1.newDropValue ??
                                                                            "Shop Now",
                                                                        style: TextStyle(
                                                                            fontSize: 10
                                                                                .sp,
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            fontWeight:
                                                                                FontWeight.bold),
                                                                      );
                                                                    }),
                                                                    const Icon(
                                                                      Icons
                                                                          .arrow_right,
                                                                      color: Colors
                                                                          .white,
                                                                    )
                                                                  ],
                                                                ),
                                                              );
                                                            }),
                                                          )
                                                        : const SizedBox()
                                              ],
                                            )
                                          // Image. file
                                          : Text("First image"));
                                }),
                                GetBuilder<GetImage>(builder: (controller) {
                                  return Container(
                                      child: getkar.image4 != null
                                          ? Stack(
                                              alignment: Alignment.bottomCenter,
                                              children: [
                                                Container(
                                                    decoration: BoxDecoration(
                                                      color: Colors.transparent,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                      border: Border.all(
                                                          color: Colors.black,
                                                          width: 0.1),
                                                    ),
                                                    height: 17.h,
                                                    width: 39.5.w,
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                      child: Image.file(
                                                        getkar.image4!,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    )),
                                                widget.groupValue1 == 2
                                                    ? const SizedBox()
                                                    : widget.groupValue1 == 1
                                                        ? const SizedBox()
                                                        : Consumer<
                                                                ChangeColorProvider>(
                                                            builder: (context,
                                                                value, child) {
                                                            return SizedBox(
                                                              height: 5.h,
                                                              width: 39.5.w,
                                                              child:
                                                                  ElevatedButton(
                                                                onPressed:
                                                                    () {},
                                                                style: ElevatedButton
                                                                    .styleFrom(
                                                                        padding:
                                                                            EdgeInsets
                                                                                .only(
                                                                          left:
                                                                              2.w,
                                                                        ),
                                                                        elevation:
                                                                            0,
                                                                        tapTargetSize:
                                                                            MaterialTapTargetSize
                                                                                .shrinkWrap,
                                                                        backgroundColor: provider
                                                                                .newColor ??
                                                                            Colors
                                                                                .black,
                                                                        foregroundColor:
                                                                            Colors
                                                                                .white,
                                                                        shape: RoundedRectangleBorder(
                                                                            borderRadius:
                                                                                BorderRadius.circular(5.0))),
                                                                child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Consumer<RadioProvider>(builder:
                                                                        (context,
                                                                            value,
                                                                            child) {
                                                                      return Text(
                                                                        provider1.newDropValue ??
                                                                            "Show Now",
                                                                        style: TextStyle(
                                                                            fontSize: 10
                                                                                .sp,
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            fontWeight:
                                                                                FontWeight.bold),
                                                                      );
                                                                    }),
                                                                    const Icon(
                                                                      Icons
                                                                          .arrow_right,
                                                                      color: Colors
                                                                          .white,
                                                                    )
                                                                  ],
                                                                ),
                                                              ),
                                                            );
                                                          })
                                              ],
                                            )
                                          // Image. file
                                          : Text("Second Image"));
                                }),
                              ],
                            ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Icon(
                            FluentIcons.thumb_like_24_filled,
                            color: primaryColorOfApp,
                          ),
                          const Icon(
                            FluentIcons.comment_edit_24_regular,
                            color: Color(0xff0B1C3D),
                          ),
                          const Icon(
                            FluentIcons.share_24_filled,
                            color: Color(0xff0B1C3D),
                          ),
                          Iconify(
                            EmojioneMonotone.wrapped_gift,
                            size: 20.sp,
                            color: const Color(0xff0B1C3D),
                          ),
                          const Text(
                            "100k+ Views",
                            style: TextStyle(
                                color: customTextColor,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.bold),
                          ),
                          Iconify(
                            Bi.bookmark_star,
                            color: const Color(0xff0B1C3D),
                            size: 17.sp,
                          )
                        ],
                      ),
                    ],
                  ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: provider2.isPremium ? 3.w : 0.w),
              child: SizedBox(
                height: 6.h,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Promote3(
                                value: widget.value,
                                value2: widget.value2,
                                groupValue0: widget.groupValue0,
                                groupValue1: widget.groupValue1,
                              )),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      backgroundColor: primaryColorOfApp,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Text(
                      "Confirm & Next",
                      style: TextStyle(fontSize: 12.sp, fontFamily: 'Poppins'),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
          ],
        ),
      ),
    );
  }
}
