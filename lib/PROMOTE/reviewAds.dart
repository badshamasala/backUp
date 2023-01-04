import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/PROMOTE/promote3.dart';
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

import '../GETX/gettimer.dart';

class ReviewAds extends StatefulWidget {
  final value;
  final groupValue;
  final groupseenonline;
  const ReviewAds(
      {Key? key,
      required this.value,
      required this.groupValue,
      required this.groupseenonline})
      : super(key: key);

  @override
  State<ReviewAds> createState() => _ReviewAdsState();
}

class _ReviewAdsState extends State<ReviewAds> {
  final GetImage getkar = Get.put(GetImage());
  @override
  Widget build(BuildContext context) {
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
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          children: [
            SizedBox(
              height: 5.h,
            ),
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
                  border: Border.all(width: 0.5, color: primaryColorOfApp)),
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
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                          color: Colors.black, width: 0.1),
                                    ),
                                    height: 17.h,
                                    width: double.infinity,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Image.file(
                                        getkar.image2!,
                                        fit: BoxFit.cover,
                                      ),
                                    )),
                                widget.groupseenonline == 1
                                    ? const SizedBox()
                                    : SizedBox(
                                        height: 5.h,
                                        width: double.infinity,
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                              elevation: 0,
                                              tapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              backgroundColor: Colors.black,
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
                                                "Shop Now",
                                                style: TextStyle(
                                                    fontSize: 12.sp,
                                                    fontFamily: 'Poppins'),
                                              ),
                                              const Icon(
                                                Icons.arrow_right,
                                                color: Colors.white,
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                              ],
                            )
                          // Image. file
                          : Container(
                              height: 17.h,
                              decoration: BoxDecoration(
                                color: const Color(0xffD9D9D9),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              width: double.infinity,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 1.h,
                                  ),
                                  Container(
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                      ),
                                      child: IconButton(
                                        onPressed: () {
                                          getkar
                                              .pickforAds(ImageSource.gallery);
                                        },
                                        icon: Iconify(
                                          Heroicons.photo_20_solid,
                                          color: primaryColorOfApp,
                                          size: 30.sp,
                                        ),
                                      )),
                                  Text(
                                    'gallery',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: customTextColor,
                                        fontSize: 12.sp),
                                  ),
                                  SizedBox(
                                    height: 3.h,
                                  ),
                                  Text(
                                    'Image Size 390 X 170 Pixels',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: customTextColor,
                                        fontSize: 10.sp),
                                  ),
                                  SizedBox(
                                    height: 1.h,
                                  ),
                                ],
                              ),
                            ),
                    );
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
                                              BorderRadius.circular(5),
                                          border: Border.all(
                                              color: Colors.black, width: 0.1),
                                        ),
                                        height: 17.h,
                                        width: 39.5.w,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          child: Image.file(
                                            getkar.image3!,
                                            fit: BoxFit.cover,
                                          ),
                                        )),
                                    widget.groupValue == 2
                                        ? const SizedBox()
                                        : widget.groupValue == 1
                                            ? SizedBox(
                                                height: 5.h,
                                                width: 39.5.w,
                                                child: ElevatedButton(
                                                  onPressed: () {},
                                                  style: ElevatedButton.styleFrom(
                                                      elevation: 0,
                                                      tapTargetSize:
                                                          MaterialTapTargetSize
                                                              .shrinkWrap,
                                                      backgroundColor: Colors
                                                          .black,
                                                      foregroundColor:
                                                          Colors.white,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5.0))),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        "Shop Now",
                                                        style: TextStyle(
                                                            fontSize: 12.sp,
                                                            fontFamily:
                                                                'Poppins'),
                                                      ),
                                                      const Icon(
                                                        Icons.arrow_right,
                                                        color: Colors.white,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              )
                                            : const SizedBox()
                                  ],
                                )
                              // Image. file
                              : Container(
                                  height: 17.h,
                                  width: 39.5.w,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffD9D9D9),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 1.h,
                                      ),
                                      Container(
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                          ),
                                          child: IconButton(
                                            onPressed: () {
                                              getkar.pickfordoubleAds1(
                                                  ImageSource.gallery);
                                            },
                                            icon: Iconify(
                                              Heroicons.photo_20_solid,
                                              color: primaryColorOfApp,
                                              size: 30.sp,
                                            ),
                                          )),
                                      Text(
                                        'gallery',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color: customTextColor,
                                            fontSize: 12.sp),
                                      ),
                                      SizedBox(
                                        height: 3.h,
                                      ),
                                      Text(
                                        'Image Size 390 X 170 Pixels',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color: customTextColor,
                                            fontSize: 8.sp),
                                      ),
                                      SizedBox(
                                        height: 1.h,
                                      ),
                                    ],
                                  ),
                                ),
                        );
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
                                              BorderRadius.circular(5),
                                          border: Border.all(
                                              color: Colors.black, width: 0.1),
                                        ),
                                        height: 17.h,
                                        width: 39.5.w,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          child: Image.file(
                                            getkar.image4!,
                                            fit: BoxFit.cover,
                                          ),
                                        )),
                                    widget.groupValue == 2
                                        ? const SizedBox()
                                        : widget.groupValue == 1
                                            ? const SizedBox()
                                            : SizedBox(
                                                height: 5.h,
                                                width: 39.5.w,
                                                child: ElevatedButton(
                                                  onPressed: () {},
                                                  style: ElevatedButton.styleFrom(
                                                      elevation: 0,
                                                      tapTargetSize:
                                                          MaterialTapTargetSize
                                                              .shrinkWrap,
                                                      backgroundColor: Colors
                                                          .black,
                                                      foregroundColor:
                                                          Colors.white,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5.0))),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        "Shop Now",
                                                        style: TextStyle(
                                                            fontSize: 12.sp,
                                                            fontFamily:
                                                                'Poppins'),
                                                      ),
                                                      const Icon(
                                                        Icons.arrow_right,
                                                        color: Colors.white,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              )
                                  ],
                                )
                              // Image. file
                              : Container(
                                  height: 17.h,
                                  width: 39.5.w,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffD9D9D9),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 1.h,
                                      ),
                                      Container(
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                          ),
                                          child: IconButton(
                                            onPressed: () {
                                              getkar.pickfordoubleAds2(
                                                  ImageSource.gallery);
                                            },
                                            icon: Iconify(
                                              Heroicons.photo_20_solid,
                                              color: primaryColorOfApp,
                                              size: 30.sp,
                                            ),
                                          )),
                                      Text(
                                        'gallery',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color: customTextColor,
                                            fontSize: 12.sp),
                                      ),
                                      SizedBox(
                                        height: 3.h,
                                      ),
                                      Text(
                                        'Image Size 390 X 170 Pixels',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color: customTextColor,
                                            fontSize: 8.sp),
                                      ),
                                      SizedBox(
                                        height: 1.h,
                                      ),
                                    ],
                                  ),
                                ),
                        );
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
            const Spacer(),
            SizedBox(
              height: 6.h,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  Promote3(value: widget.value,groupValue: widget.groupValue,groupseenonline: widget.groupseenonline,)),
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
            SizedBox(
              height: 5.h,
            ),
          ],
        ),
      ),
    );
  }
}
