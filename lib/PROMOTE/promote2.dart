import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/ACCOUNT_TYPE/uploadimage.dart';
import 'package:flutter_application_1/GETX/gettimer.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/PROMOTE/createmyown.dart';
import 'package:flutter_application_1/PROMOTE/editChangeUrl.dart';
import 'package:flutter_application_1/PROMOTE/promote3.dart';
import 'package:flutter_application_1/PROMOTE/reviewAds.dart';
import 'package:flutter_application_1/TEXT%20POST/post_text.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/heroicons.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class Promote2 extends StatefulWidget {
  final value;
  const Promote2({Key? key, required this.value}) : super(key: key);

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

  int _groupseenonline = 1;
  int groupseenonline = 2;
  int groupValue = 1;

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ChangeColorProvider>(context, listen: false);
    final provider1 = Provider.of<RadioProvider>(context, listen: false);
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
                                  Positioned(
                                    top: 0,
                                    child: Container(
                                      width: 90.w,
                                      decoration: BoxDecoration(
                                          color: Colors.black.withOpacity(0.3),
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
                                                  backgroundColor:
                                                      provider.newColor == null
                                                          ? Colors.black
                                                          : provider.newColor,
                                                  foregroundColor: Colors.white,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
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
                                                        fontFamily: 'Poppins'),
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
                                height: 17.h,
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
                                                getkar.pickfordoubleAds1(
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
                                      groupValue == 2
                                          ? SizedBox()
                                          : groupValue == 1
                                              ? Consumer<ChangeColorProvider>(
                                                  builder:
                                                      (context, value, child) {
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
                                                                  ? Colors.black
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
                                              fontSize: 10.sp),
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
                                              color:
                                                  Colors.black.withOpacity(0.3),
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(5),
                                                  topRight:
                                                      Radius.circular(5))),
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
                                                    color: primaryColorOfApp,
                                                    fontFamily: "Poppins",
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 10.sp),
                                              )),
                                        ),
                                      ),
                                      groupValue == 2
                                          ? SizedBox()
                                          : groupValue == 1
                                              ? SizedBox()
                                              : Consumer<ChangeColorProvider>(
                                                  builder:
                                                      (context, value, child) {
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
                                                                  ? Colors.black
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
                                    height: 17.h,
                                    width: 44.5.w,
                                    decoration: BoxDecoration(
                                      color: Color(0xffD9D9D9),
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
                                              fontSize: 10.sp),
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
              GetBuilder<GetImage>(builder: (controller) {
                return SizedBox(
                  height: 4.5.h,
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: widget.value == 2 ? getkar.image2 !=null ? () {
                            Get.to(() => ReviewAds(
                                  value: widget.value,
                                  groupValue: groupValue,
                                  groupseenonline: groupseenonline,
                                ));
                          } : null :
                    
                    getkar.image3 != null && getkar.image4 != null
                        ? () {
                            Get.to(() => ReviewAds(
                                  value: widget.value,
                                  groupValue: groupValue,
                                  groupseenonline: groupseenonline,
                                ));
                          }
                        : null,
                    style: OutlinedButton.styleFrom(
                        elevation: 0,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        side: BorderSide(
                          color: getkar.image4 != null
                              ? Color(0xff0087FF)
                              : Color(0xffd9d9d9),
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
                        iconEnabledColor: primaryColorOfApp,
                        hint: Padding(
                          padding: EdgeInsets.only(left: 5.0),
                          child: Text(
                            'Shop Now',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12.sp,
                                color: primaryColorOfApp),
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
                                      color: primaryColorOfApp,
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
              ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    if (index == 1) {
                      return Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 4.w),
                            child: SizedBox(
                              height: 4.h,
                              child: TextButton(
                                  style: TextButton.styleFrom(
                                      elevation: 0,
                                      alignment: Alignment.topCenter,
                                      padding: EdgeInsets.zero,
                                      tapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap),
                                  onPressed: () {
                                    Get.to(() => EditChangeUrl());
                                  },
                                  child: Text(
                                    "Edit/Change URL",
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: primaryColorOfApp,
                                        fontSize: 11.sp,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ),
                          )
                        ],
                      );
                    } else {
                      return Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            border: Border.all(
                                width: 0.5, color: primaryColorOfApp),
                            borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                          padding: EdgeInsets.all(2.sp),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 3.w),
                                child: Text(
                                  provider1.radioList[index],
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: customTextColor,
                                      fontSize: 11.sp),
                                ),
                              ),
                              Transform.scale(
                                scale: 1.1.sp,
                                child: Radio(
                                    visualDensity: VisualDensity.compact,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    groupValue: _groupseenonline,
                                    value: index == 0
                                        ? 1
                                        : index == 2
                                            ? 2
                                            : 3,
                                    onChanged: (val) {
                                      setState(() {
                                        _groupseenonline = index == 0
                                            ? 1
                                            : index == 2
                                                ? 2
                                                : 3;
                                      });
                                    }),
                              ),
                            ],
                          ),
                        ),
                      );
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
                  itemCount: provider1.radioList.length),
              SizedBox(
                height: 2.5.h,
              ),
              InkWell(
                onTap: () {
                  Get.to(() => Createmyown());
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
                          padding: EdgeInsets.only(left: 3.w),
                          child: Text(
                            "Create my own ",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: customTextColor,
                                fontSize: 11.sp),
                          ),
                        ),
                        Icon(
                          Icons.arrow_right,
                          color: primaryColorOfApp,
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
}
