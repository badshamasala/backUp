import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/getx/gettimer.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/promote/promote.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bi.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class NewCheck extends StatefulWidget {
  const NewCheck({Key? key}) : super(key: key);

  @override
  State<NewCheck> createState() => _NewCheckState();
}

class _NewCheckState extends State<NewCheck> {
  final GetImage getkar = Get.put(GetImage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                getkar.pickpreBusinessGroup();
              },
              child: const Text("aa")),
          GetBuilder<GetImage>(builder: (controller) {
            return Container(
              child: getkar.imageList.isEmpty
                  ? SizedBox()
                  : Image.file(File(getkar.imageList[0].path)),
            );
          }),
          GetBuilder<GetImage>(builder: (controller) {
            return Container(
              color: const Color(0xffF5F5F5),
              child: Padding(
                padding: EdgeInsets.all(2.sp),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3.w),
                      child: Row(
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
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
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
                                      ),
                                      Text(
                                        "BRAND NAME",
                                        style: TextStyle(
                                            color: const Color(0xff47123E),
                                            fontFamily: "Poppins",
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
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
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3.w),
                      child: Row(
                        children: [
                          Text(
                            "Avail up to 50% additional discount on best foods in the nea",
                            style: TextStyle(
                                color: customTextColor,
                                fontFamily: "Poppins",
                                fontSize:
                                    MediaQuery.of(context).size.height > 667
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
                          padding: EdgeInsets.only(left: 2.w),
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              width: 2.w,
                            );
                          },
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          itemCount: getkar.imageList.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: ((context, index) {
                            return Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.7,
                                      color: const Color(0xffc4c4c4)),
                                  shape: BoxShape.rectangle),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(2.sp),
                                    child: Image.file(
                                      File(getkar.imageList[index].path),
                                      height: 23.h,
                                      width: 48.w,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Boats',
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 8.sp)),
                                          Text('Order only on ',
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 8.sp)),
                                          Text('Flipkart App',
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 8.sp)),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 6.w,
                                      ),
                                      OutlinedButton(
                                          style: OutlinedButton.styleFrom(
                                              side: const BorderSide(
                                                  color: primaryColorOfApp),
                                              padding: EdgeInsets.zero,
                                              tapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              elevation: 0,
                                              minimumSize: Size(25.w, 5.h),
                                              foregroundColor: Colors.white,
                                              backgroundColor:
                                                  primaryColorOfApp,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0))),
                                          onPressed: () {},
                                          child: Text(
                                            'Shop Now',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 10.sp,
                                                fontWeight: FontWeight.bold),
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
            );
          }),
        ],
      ),
    );
  }
}
