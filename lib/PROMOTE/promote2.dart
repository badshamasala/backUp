import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/ACCOUNT_TYPE/uploadimage.dart';
import 'package:flutter_application_1/GETX/gettimer.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/PROMOTE/createmyown.dart';
import 'package:flutter_application_1/PROMOTE/editChangeUrl.dart';
import 'package:flutter_application_1/PROMOTE/promote.dart';
import 'package:flutter_application_1/PROMOTE/promote3.dart';
import 'package:flutter_application_1/PROMOTE/reviewAds.dart';
import 'package:flutter_application_1/TEXT%20POST/post_text.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/el.dart';
import 'package:iconify_flutter/icons/heroicons.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class Promote2 extends StatefulWidget {
  final value;
  final value2;
  const Promote2({Key? key, required this.value, required this.value2})
      : super(key: key);

  @override
  State<Promote2> createState() => _Promote2State();
}

class _Promote2State extends State<Promote2> {
  final GetImage getkar = Get.put(GetImage());
  List items = [
    'Order Now',
    'Download Now',
    'Visit Website',
  ];
  String? value;

  int groupseenonline = 2;
  int groupValue = 1;

  @override
  Widget build(BuildContext context) {
    print("badshamasala------------2");
    final provider = Provider.of<ChangeColorProvider>(context, listen: false);
    final provider1 = Provider.of<RadioProvider>(context, listen: false);
    final provider2 = Provider.of<PromoteProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 7.h,
        automaticallyImplyLeading: false,
        titleSpacing: -2.sp,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('Promote',
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
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Column(
            children: [
              widget.value2 == null
                  ? widget.value == 2
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
                                      Positioned(
                                        top: 0,
                                        child: Container(
                                          width: 90.w,
                                          decoration: BoxDecoration(
                                              color:
                                                  Colors.black.withOpacity(0.3),
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(5),
                                                  topRight:
                                                      Radius.circular(5))),
                                          child: TextButton(
                                              style: TextButton.styleFrom(
                                                  padding: EdgeInsets.zero,
                                                  tapTargetSize:
                                                      MaterialTapTargetSize
                                                          .shrinkWrap),
                                              onPressed: () {
                                                getkar.pickforAds(
                                                    ImageSource.gallery);
                                              },
                                              child: Text(
                                                "Change Image",
                                                style: TextStyle(
                                                    color: primaryColorOfApp,
                                                    fontFamily: "Poppins",
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 10.sp),
                                              )),
                                        ),
                                      ),
                                      groupseenonline == 1
                                          ? SizedBox()
                                          : Consumer<ChangeColorProvider>(
                                              builder: (context, value, child) {
                                              return SizedBox(
                                                height: 5.h,
                                                width: double.infinity,
                                                child: ElevatedButton(
                                                  onPressed: () {},
                                                  style: ElevatedButton.styleFrom(
                                                      elevation: 0,
                                                      tapTargetSize:
                                                          MaterialTapTargetSize
                                                              .shrinkWrap,
                                                      backgroundColor: provider
                                                                  .newColor ==
                                                              null
                                                          ? Colors.black
                                                          : provider.newColor,
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
                                                      Icon(
                                                        Icons.arrow_right,
                                                        color: Colors.white,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              );
                                            }),
                                    ],
                                  )
                                // Image. file
                                : Container(
                                    height: 15.h,
                                    decoration: BoxDecoration(
                                      color: Color(0xffD9D9D9),
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
                                                getkar.pickforAds(
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
                                              fontSize: 10.sp),
                                        ),
                                        SizedBox(
                                          height: 2.2.h,
                                        ),
                                        Text(
                                          'Image Size 390 X 170 Pixels',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              color: customTextColor,
                                              fontSize: 8.sp),
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
                                                    color: Colors.black,
                                                    width: 0.1),
                                              ),
                                              height: 17.h,
                                              width: 44.5.w,
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                child: Image.file(
                                                  getkar.image3!,
                                                  fit: BoxFit.cover,
                                                ),
                                              )),
                                          Positioned(
                                            top: 0,
                                            child: Container(
                                              width: 44.5.w,
                                              decoration: BoxDecoration(
                                                  color: Colors.black
                                                      .withOpacity(0.3),
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topLeft: Radius
                                                              .circular(5),
                                                          topRight:
                                                              Radius.circular(
                                                                  5))),
                                              child: TextButton(
                                                  style: TextButton.styleFrom(
                                                      padding: EdgeInsets.zero,
                                                      tapTargetSize:
                                                          MaterialTapTargetSize
                                                              .shrinkWrap),
                                                  onPressed: () {
                                                    getkar.pickfordoubleAds1(
                                                        ImageSource.gallery);
                                                  },
                                                  child: Text(
                                                    "Change Image",
                                                    style: TextStyle(
                                                        color:
                                                            primaryColorOfApp,
                                                        fontFamily: "Poppins",
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 10.sp),
                                                  )),
                                            ),
                                          ),
                                          groupValue == 2
                                              ? SizedBox()
                                              : groupValue == 1
                                                  ? Consumer<
                                                          ChangeColorProvider>(
                                                      builder: (context, value,
                                                          child) {
                                                      return SizedBox(
                                                        height: 5.h,
                                                        width: 44.5.w,
                                                        child: ElevatedButton(
                                                          onPressed: () {},
                                                          style: ElevatedButton.styleFrom(
                                                              elevation: 0,
                                                              tapTargetSize:
                                                                  MaterialTapTargetSize
                                                                      .shrinkWrap,
                                                              backgroundColor:
                                                                  provider.newColor ==
                                                                          null
                                                                      ? Colors
                                                                          .black
                                                                      : provider
                                                                          .newColor,
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
                                                              Text(
                                                                "Shop Now",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        12.sp,
                                                                    fontFamily:
                                                                        'Poppins'),
                                                              ),
                                                              Icon(
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
                                                  : SizedBox()
                                        ],
                                      )
                                    // Image. file
                                    : Container(
                                        height: 17.h,
                                        width: 44.5.w,
                                        decoration: BoxDecoration(
                                          color: Color(0xffD9D9D9),
                                          borderRadius:
                                              BorderRadius.circular(5),
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
                                                  fontSize: 10.sp),
                                            ),
                                            SizedBox(
                                              height: 3.h,
                                            ),
                                            Text(
                                              'Image Size 195 X 170 Pixels',
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
                                                    color: Colors.black,
                                                    width: 0.1),
                                              ),
                                              height: 17.h,
                                              width: 44.5.w,
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                child: Image.file(
                                                  getkar.image4!,
                                                  fit: BoxFit.cover,
                                                ),
                                              )),
                                          Positioned(
                                            top: 0,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.black
                                                      .withOpacity(0.3),
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topLeft: Radius
                                                              .circular(5),
                                                          topRight:
                                                              Radius.circular(
                                                                  5))),
                                              width: 44.5.w,
                                              child: TextButton(
                                                  style: TextButton.styleFrom(
                                                      padding: EdgeInsets.zero,
                                                      tapTargetSize:
                                                          MaterialTapTargetSize
                                                              .shrinkWrap),
                                                  onPressed: () {
                                                    getkar.pickfordoubleAds2(
                                                        ImageSource.gallery);
                                                  },
                                                  child: Text(
                                                    "Change Image",
                                                    style: TextStyle(
                                                        color:
                                                            primaryColorOfApp,
                                                        fontFamily: "Poppins",
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 10.sp),
                                                  )),
                                            ),
                                          ),
                                          groupValue == 2
                                              ? SizedBox()
                                              : groupValue == 1
                                                  ? SizedBox()
                                                  : Consumer<
                                                          ChangeColorProvider>(
                                                      builder: (context, value,
                                                          child) {
                                                      return SizedBox(
                                                        height: 5.h,
                                                        width: 44.5.w,
                                                        child: ElevatedButton(
                                                          onPressed: () {},
                                                          style: ElevatedButton.styleFrom(
                                                              elevation: 0,
                                                              tapTargetSize:
                                                                  MaterialTapTargetSize
                                                                      .shrinkWrap,
                                                              backgroundColor:
                                                                  provider.newColor ==
                                                                          null
                                                                      ? Colors
                                                                          .black
                                                                      : provider
                                                                          .newColor,
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
                                                              Text(
                                                                "Shop Now",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        12.sp,
                                                                    fontFamily:
                                                                        'Poppins'),
                                                              ),
                                                              Icon(
                                                                Icons
                                                                    .arrow_right,
                                                                color: Colors
                                                                    .white,
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      );
                                                    }),
                                        ],
                                      )
                                    // Image. file
                                    : Container(
                                        height: 17.h,
                                        width: 44.5.w,
                                        decoration: BoxDecoration(
                                          color: Color(0xffD9D9D9),
                                          borderRadius:
                                              BorderRadius.circular(5),
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
                                                  fontSize: 10.sp),
                                            ),
                                            SizedBox(
                                              height: 3.h,
                                            ),
                                            Text(
                                              'Image Size 195 X 170 Pixels ',
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
                        )
                  : widget.value2 == 2
                      ? GetBuilder<GetImage>(builder: (controller) {
                          return Container(
                            child: getkar.image5 != null
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
                                              getkar.image5!,
                                              fit: BoxFit.cover,
                                            ),
                                          )),
                                      Container(
                                        width: 90.w,
                                        decoration: BoxDecoration(
                                            color:
                                                Colors.black.withOpacity(0.3),
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(5),
                                                topRight: Radius.circular(5))),
                                        child: TextButton(
                                            style: TextButton.styleFrom(
                                                padding: EdgeInsets.zero,
                                                tapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap),
                                            onPressed: () {
                                              getkar.pickforAds(
                                                  ImageSource.gallery);
                                            },
                                            child: Text(
                                              "Change Image",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: "Poppins",
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 10.sp),
                                            )),
                                      ),
                                    ],
                                  )
                                // Image. file
                                : Container(
                                    height: 15.h,
                                    decoration: BoxDecoration(
                                      color: Color(0xffD9D9D9),
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
                                                getkar.pickpretopper(
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
                                              fontSize: 10.sp),
                                        ),
                                        SizedBox(
                                          height: 2.2.h,
                                        ),
                                        Text(
                                          'Image Size 390 X 170 Pixels',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              color: customTextColor,
                                              fontSize: 8.sp),
                                        ),
                                      ],
                                    ),
                                  ),
                          );
                        })
                      : widget.value2 == 3
                          ? Row(
                              children: [
                                GetBuilder<GetImage>(builder: (controller) {
                                  return Container(
                                    child: getkar.image6 != null
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
                                                  height: 11.5.h,
                                                  width: 26.w,
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    child: Image.file(
                                                      getkar.image6!,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  )),
                                              Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.black
                                                        .withOpacity(0.3),
                                                    borderRadius:
                                                        BorderRadius.only(
                                                            topLeft: Radius
                                                                .circular(5),
                                                            topRight:
                                                                Radius.circular(
                                                                    5))),
                                                width: 26.w,
                                                child: TextButton(
                                                    style: TextButton.styleFrom(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        tapTargetSize:
                                                            MaterialTapTargetSize
                                                                .shrinkWrap),
                                                    onPressed: () {
                                                      getkar.pickfordoubleAds2(
                                                          ImageSource.gallery);
                                                    },
                                                    child: Text(
                                                      "Change",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontFamily: "Poppins",
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 10.sp),
                                                    )),
                                              ),
                                            ],
                                          )
                                        // Image. file
                                        : Container(
                                            height: 11.5.h,
                                            width: 26.w,
                                            decoration: BoxDecoration(
                                              color: Color(0xffD9D9D9),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: 2.h,
                                                ),
                                                Container(
                                                    decoration:
                                                        const BoxDecoration(
                                                      color: Colors.white,
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(9.sp),
                                                      child: IconButton(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        constraints:
                                                            BoxConstraints(),
                                                        onPressed: () {
                                                          getkar
                                                              .pickpreBusiness(
                                                                  ImageSource
                                                                      .gallery);
                                                        },
                                                        icon: Iconify(
                                                          Heroicons
                                                              .photo_20_solid,
                                                          color:
                                                              primaryColorOfApp,
                                                          size: 30.sp,
                                                        ),
                                                      ),
                                                    )),
                                                Text(
                                                  'gallery',
                                                  style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      color: customTextColor,
                                                      fontSize: 9.sp),
                                                ),
                                              ],
                                            ),
                                          ),
                                  );
                                }),
                                SizedBox(
                                  width: 1.w,
                                ),
                                SizedBox(
                                  width: 63.w,
                                  child: TextFormField(
                                    maxLines: 4,
                                    style: TextStyle(
                                        color: customTextColor,
                                        fontFamily: "Poppins",
                                        fontSize: 10.sp),
                                    cursorColor: primaryColorOfApp,
                                    decoration: InputDecoration(
                                        alignLabelWithHint: true,
                                        prefixIconConstraints:
                                            const BoxConstraints(),
                                        hintText: "e.g Something write",
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                                horizontal: 10, vertical: 9),
                                        isDense: true,
                                        hintStyle: TextStyle(
                                            color: Color(0xffe2e2e2),
                                            fontFamily: 'Poppins',
                                            fontSize: 10.sp),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: customTextColor,
                                                width: 0.5.sp),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: primaryColorOfApp,
                                                width: 0.5.sp),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        /*   labelText: '', */
                                        labelStyle: TextStyle(
                                            color: customTextColor,
                                            fontFamily: 'Poppins',
                                            fontSize: 10.sp)),
                                  ),
                                )
                              ],
                            )
                          : Row(
                              children: [
                                GetBuilder<GetImage>(builder: (controller) {
                                  return Container(
                                    child: getkar.image7 != null
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
                                                  height: 11.5.h,
                                                  width: 26.w,
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    child: Image.file(
                                                      getkar.image7!,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  )),
                                              Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.black
                                                        .withOpacity(0.3),
                                                    borderRadius:
                                                        BorderRadius.only(
                                                            topLeft: Radius
                                                                .circular(5),
                                                            topRight:
                                                                Radius.circular(
                                                                    5))),
                                                width: 26.w,
                                                child: TextButton(
                                                    style: TextButton.styleFrom(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        tapTargetSize:
                                                            MaterialTapTargetSize
                                                                .shrinkWrap),
                                                    onPressed: () {
                                                      getkar
                                                          .pickpreBusinessGroup(
                                                              ImageSource
                                                                  .gallery);
                                                    },
                                                    child: Text(
                                                      "Change",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontFamily: "Poppins",
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 10.sp),
                                                    )),
                                              ),
                                            ],
                                          )
                                        // Image. file
                                        : Container(
                                            height: 11.5.h,
                                            width: 26.w,
                                            decoration: BoxDecoration(
                                              color: Color(0xffD9D9D9),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: 2.h,
                                                ),
                                                Container(
                                                    decoration:
                                                        const BoxDecoration(
                                                      color: Colors.white,
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(9.sp),
                                                      child: IconButton(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        constraints:
                                                            BoxConstraints(),
                                                        onPressed: () {
                                                          getkar
                                                              .pickfordoubleAds2(
                                                                  ImageSource
                                                                      .gallery);
                                                        },
                                                        icon: Iconify(
                                                          Heroicons
                                                              .photo_20_solid,
                                                          color:
                                                              primaryColorOfApp,
                                                          size: 30.sp,
                                                        ),
                                                      ),
                                                    )),
                                                Text(
                                                  'gallery',
                                                  style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      color: customTextColor,
                                                      fontSize: 9.sp),
                                                ),
                                              ],
                                            ),
                                          ),
                                  );
                                }),
                                SizedBox(
                                  width: 1.w,
                                ),
                                SizedBox(
                                  width: 63.w,
                                  child: TextFormField(
                                    maxLines: 4,
                                    style: TextStyle(
                                        color: customTextColor,
                                        fontFamily: "Poppins",
                                        fontSize: 10.sp),
                                    cursorColor: primaryColorOfApp,
                                    decoration: InputDecoration(
                                        alignLabelWithHint: true,
                                        prefixIconConstraints:
                                            const BoxConstraints(),
                                        hintText: "e.g Something write",
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                                horizontal: 10, vertical: 9),
                                        isDense: true,
                                        hintStyle: TextStyle(
                                            color: Color(0xffe2e2e2),
                                            fontFamily: 'Poppins',
                                            fontSize: 10.sp),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: customTextColor,
                                                width: 0.5.sp),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: primaryColorOfApp,
                                                width: 0.5.sp),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        /*   labelText: '', */
                                        labelStyle: TextStyle(
                                            color: customTextColor,
                                            fontFamily: 'Poppins',
                                            fontSize: 10.sp)),
                                  ),
                                )
                              ],
                            ),
              widget.value == 2
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Button Not Required",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: customTextColor,
                              fontSize: 10.sp),
                        ),
                        Transform.scale(
                          scale: 1.1.sp,
                          child: Radio(
                              visualDensity: VisualDensity.compact,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              groupValue: groupseenonline,
                              value: 1,
                              onChanged: (val) {
                                setState(() {
                                  groupseenonline = 1;
                                });
                              }),
                        ),
                        Text(
                          "Button Required",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: customTextColor,
                              fontSize: 10.sp),
                        ),
                        Transform.scale(
                          scale: 1.1.sp,
                          child: Radio(
                              visualDensity: VisualDensity.compact,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              groupValue: groupseenonline,
                              value: 2,
                              onChanged: (val) {
                                setState(() {
                                  groupseenonline = 2;
                                });
                              }),
                        ),
                      ],
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Button Left",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: customTextColor,
                              fontSize: 10.sp),
                        ),
                        Transform.scale(
                          scale: 1.1.sp,
                          child: Radio(
                              visualDensity: VisualDensity.compact,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              groupValue: groupValue,
                              value: 1,
                              onChanged: (val) {
                                setState(() {
                                  groupValue = 1;
                                });
                              }),
                        ),
                        Text(
                          "Not Required",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: customTextColor,
                              fontSize: 10.sp),
                        ),
                        Transform.scale(
                          scale: 1.1.sp,
                          child: Radio(
                              visualDensity: VisualDensity.compact,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              groupValue: groupValue,
                              value: 2,
                              onChanged: (val) {
                                setState(() {
                                  groupValue = 2;
                                });
                              }),
                        ),
                        Text(
                          "Button Right",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: customTextColor,
                              fontSize: 10.sp),
                        ),
                        Transform.scale(
                          scale: 1.1.sp,
                          child: Radio(
                              visualDensity: VisualDensity.compact,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              groupValue: groupValue,
                              value: 3,
                              onChanged: (val) {
                                setState(() {
                                  groupValue = 3;
                                });
                              }),
                        ),
                      ],
                    ),
              widget.value2 == 2
                  ? SizedBox(
                      height: 2.h,
                    )
                  : Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 4.w),
                              child: Text(
                                "Select Button Color",
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: customTextColor,
                                    fontSize: 10.sp),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 6.h,
                          child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemBuilder: (context, i) {
                                return InkWell(
                                  onTap: () {
                                    provider.changeColor(i);
                                  },
                                  child: CircleAvatar(
                                    backgroundColor: provider.colorlist[i],
                                    radius: 12.sp,
                                  ),
                                );
                              },
                              separatorBuilder: (context, index) {
                                return SizedBox(
                                  width: 1.w,
                                );
                              },
                              itemCount: provider.colorlist.length),
                        ),
                      ],
                    ),
              GetBuilder<GetImage>(builder: (controller) {
                return SizedBox(
                  height: 4.5.h,
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: provider2.isPremium
                        ? widget.value2 == 2 && getkar.image5 != null
                            ? () {
                                Get.to(() => ReviewAds(
                                      value: widget.value2,
                                      groupValue: groupValue,
                                      groupseenonline: groupseenonline,
                                    ));
                              }
                            : widget.value2 == 3 && getkar.image6 !=null ?
                            () {
                                Get.to(() => ReviewAds(
                                      value: widget.value2,
                                      groupValue: groupValue,
                                      groupseenonline: groupseenonline,
                                    ));
                              } : null
                        : widget.value == 2
                            ? getkar.image2 != null
                                ? () {
                                    Get.to(() => ReviewAds(
                                          value: widget.value,
                                          groupValue: groupValue,
                                          groupseenonline: groupseenonline,
                                        ));
                                  }
                                : null
                            : getkar.image3 != null && getkar.image4 != null
                                ? () {
                                    Get.to(() => ReviewAds(
                                          value: widget.value,
                                          groupValue: groupValue,
                                          groupseenonline: groupseenonline,
                                        ));
                                  }
                                : widget.value2 == 2
                                    ? getkar.image5 != null
                                        ? () {
                                            Get.to(() => ReviewAds(
                                                  value: widget.value,
                                                  groupValue: groupValue,
                                                  groupseenonline:
                                                      groupseenonline,
                                                ));
                                          }
                                        : null
                                    : null,
                    style: OutlinedButton.styleFrom(
                        elevation: 0,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        side: BorderSide(
                          width: 0.5,
                          color: customTextColor,
                        ),
                        foregroundColor: primaryColorOfApp,
                        backgroundColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                    child: Text(
                      "Review Ads",
                      style: TextStyle(fontSize: 12.sp, fontFamily: 'Poppins'),
                    ),
                  ),
                );
              }),
              SizedBox(
                height: 1.h,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4.w),
                    child: Text(
                      "Audience Impressions",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color: customTextColor,
                          fontSize: 12.sp),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4.w),
                    child: Text(
                      "Select Results",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color: customTextColor,
                          fontSize: 10.sp),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              Container(
                height: 5.h,
                decoration: BoxDecoration(
                  borderRadius: const UploadImage().radius(),
                  border: Border.all(color: primaryColorOfApp, width: 0.5),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                        /*    iconSize: 28.sp, */
                        iconEnabledColor: primaryColorOfApp,
                        hint: Padding(
                          padding: EdgeInsets.only(left: 5.0),
                          child: Text(
                            'Shop Now',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 10.sp,
                                color: customTextColor),
                          ),
                        ),
                        isExpanded: true,
                        value: value,
                        items: items
                            .map((item) => DropdownMenuItem(
                                value: item,
                                child: Text(
                                  item,
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: customTextColor,
                                      fontSize: 12.sp),
                                )))
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            this.value = value as String?;
                          });
                        }),
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Consumer<RadioProvider>(builder: (context, value, child) {
                return ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      if (index == 1) {
                        return provider1.groupValue == 1
                            ? Row(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 4.w),
                                    child: SizedBox(
                                      height: 4.h,
                                      child: TextButton(
                                          style: TextButton.styleFrom(
                                              elevation: 0,
                                              alignment: Alignment.topCenter,
                                              padding: EdgeInsets.zero,
                                              tapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap),
                                          onPressed: () {
                                            Get.to(() => EditChangeUrl());
                                          },
                                          child: Text(
                                            "Edit/Change URL",
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              color: primaryColorOfApp,
                                              fontSize: 10
                                                  .sp, /*  fontWeight: FontWeight.bold */
                                            ),
                                          )),
                                    ),
                                  )
                                ],
                              )
                            : SizedBox(
                                height: 2.5.h,
                              );
                      } else {
                        return Consumer<RadioProvider>(
                            builder: (context, value, child) {
                          return Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                border: Border.all(
                                    width: 0.5, color: customTextColor),
                                borderRadius: BorderRadius.circular(5)),
                            child: Padding(
                              padding: EdgeInsets.all(2.sp),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 3.w),
                                    child: Text(
                                      provider1.radioList[index],
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          color: customTextColor,
                                          fontSize: 10.sp),
                                    ),
                                  ),
                                  Transform.scale(
                                    scale: 1.1.sp,
                                    child: Radio(
                                        visualDensity: VisualDensity.compact,
                                        materialTapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        groupValue: provider1.groupValue,
                                        value: index == 0
                                            ? 1
                                            : index == 2
                                                ? 2
                                                : 3,
                                        onChanged: (val) {
                                          provider1.updateRadio(index);
                                        }),
                                  )
                                ],
                              ),
                            ),
                          );
                        });
                      }
                    },
                    separatorBuilder: (context, index) {
                      return Divider(
                        height: index == 0
                            ? 0
                            : index == 1
                                ? 0
                                : 2.5.h,
                        color: Colors.transparent,
                      );
                    },
                    itemCount: provider1.radioList.length);
              }),
              SizedBox(
                height: 2.5.h,
              ),
              InkWell(
                onTap: () {
                  Get.to(() => Createmyown(
                        value: widget.value,
                        groupValue: groupValue,
                        groupseenonline: groupseenonline,
                      ));
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 0.5, color: primaryColorOfApp),
                      borderRadius: BorderRadius.circular(5),
                      shape: BoxShape.rectangle),
                  child: Padding(
                    padding: EdgeInsets.all(4.5.sp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 2.w),
                          child: Text(
                            "Create my own ",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: customTextColor,
                                fontSize: 10.sp),
                          ),
                        ),
                        Transform.scale(
                          scale: 1.2,
                          child: Icon(
                            Icons.arrow_right,
                            color: primaryColorOfApp,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              SizedBox(
                height: 6.h,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => Promote3(
                          value: widget.value,
                          groupValue: groupValue,
                          groupseenonline: groupseenonline,
                        ));
                  },
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      backgroundColor: primaryColorOfApp,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                  child: Padding(
                    padding: EdgeInsets.all(1.0),
                    child: Text(
                      "Confirm & Next",
                      style: TextStyle(fontSize: 12.sp, fontFamily: 'Poppins'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RadioProvider extends ChangeNotifier {
  List radioList = [
    "Maximum website Or URL Visits",
    "",
    "Maximum Profile Visits",
    "Maximum Message Or Connect",
  ];

  int groupValue = 1;

  updateRadio(index) {
    groupValue = index == 0
        ? 1
        : index == 2
            ? 2
            : 3;
    notifyListeners();
  }

  bool value1 = false;
  bool value2 = false;
  bool value3 = false;
}
