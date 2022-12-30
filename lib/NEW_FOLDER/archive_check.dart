// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/ACCOUNT_TYPE/uploadimage.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/NEW_FOLDER/create_folder.dart';
import 'package:flutter_application_1/homepage/chat_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bi.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:sizer/sizer.dart';

class ArchiveCheck extends StatefulWidget {
  const ArchiveCheck({Key? key}) : super(key: key);

  @override
  State<ArchiveCheck> createState() => _ArchiveCheckState();
}

class _ArchiveCheckState extends State<ArchiveCheck> {
  Map myMap = {
    "User1": "HOSPITAL",
    "User2": "PATIENT",
  };
  var mypost = [
    'assets/image1.webp',
    'assets/image2.jpg',
    'assets/image3.jpg',
    'assets/image4.webp',
  ];
  var friends = [
    'assets/image5.jpeg',
    'assets/image6.webp',
    'assets/image7.jpg',
    'assets/image8.jpg',
  ];
  var collection = [
    'assets/image3.jpg',
    'assets/image4.webp',
    'assets/image5.jpeg',
    'assets/image6.webp',
  ];

  var dropdownkivalue;
  var photos = [
    'assets/image1.webp',
    'assets/image2.jpg',
    'assets/image3.jpg',
    'assets/image4.webp',
    'assets/image5.jpeg',
    'assets/image6.webp',
    'assets/image7.jpg',
    'assets/image8.jpg',
    'assets/image9.jpg',
    'assets/image1.webp',
    'assets/image2.jpg',
    'assets/image3.jpg',
    'assets/image4.webp',
    'assets/image5.jpeg',
    'assets/image6.webp',
    'assets/image7.jpg',
    'assets/image8.jpg',
    'assets/image9.jpg',
  ];
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
          title: Text('Archived',
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
                    text: 'Chat-Box',
                  ),
                  Tab(
                    text: 'All Post',
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(children: [
                Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 5.w, vertical: 10.sp),
                    child: ListView.separated(
                        shrinkWrap: true,
                        separatorBuilder: (context, index) => const Divider(
                              color: Colors.transparent,
                              height: 8,
                            ),
                        itemCount: photos.length,
                        itemBuilder: ((context, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ChatScreen(
                                          value: photos[index],
                                        )),
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: const Color(0xffF0F0F0),
                                  shape: BoxShape.rectangle),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            CircleAvatar(
                                              radius: 16,
                                              backgroundImage:
                                                  AssetImage(photos[index]),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 2.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: const [
                                                      Text(
                                                        '@myttube',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            color:
                                                                customTextColor,
                                                            fontSize: 12),
                                                      ),
                                                      Iconify(
                                                        Bi.patch_check,
                                                        size: 10,
                                                        color:
                                                            primaryColorOfApp,
                                                      ),
                                                    ],
                                                  ),
                                                  const Text(
                                                    'hello, how are you?',
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        color: customTextColor,
                                                        fontSize: 12),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 30,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              const Text(
                                                '10:15 pm',
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    color: customTextColor,
                                                    fontSize: 8),
                                              ),
                                              SvgPicture.asset(
                                                'assets/doubletick.svg',
                                                height: 10,
                                                width: 10,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }))),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: const UploadImage().radius(),
                              border: Border.all(
                                  color: primaryColorOfApp, width: 0.5),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8),
                              child: DropdownButtonHideUnderline(
                                child: SizedBox(
                                  height: 5.h,
                                  width: 44.w,
                                  child: DropdownButton(
                                      iconEnabledColor: primaryColorOfApp,
                                      focusColor: primaryColorOfApp,
                                      borderRadius: BorderRadius.circular(5.sp),
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 12.sp,
                                          color: primaryColorOfApp),
                                      /*   isDense: true, */
                                      elevation: 0,
                                      hint: Text(
                                        'Images',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 12.sp,
                                            color: primaryColorOfApp),
                                      ),
                                      value: dropdownkivalue,
                                      items: myMap.entries
                                          .map((e) => DropdownMenuItem(
                                              value: e.value,
                                              child: Text(e.value)))
                                          .toList(),
                                      onChanged: (val) {
                                        setState(() {
                                          dropdownkivalue = val;
                                        });
                                      }),
                                ),
                              ),
                            ),
                          ),
                          ElevatedButton.icon(
                            icon: SvgPicture.asset(
                              'assets/c2c.svg',
                              /* width: 17,
                          height: 17, */
                              color: Colors.white,
                            ),
                            onPressed: () {
                              crateFolder(context);
                            },
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                minimumSize: Size(44.w, 5.h),
                                // padding: EdgeInsets.symmetric(
                                //     horizontal: 40.0, vertical: 20.0),
                                backgroundColor: const Color(0xff0087FF),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0))),
                            label: const Text(
                              "Create",
                              style: TextStyle(
                                  color: Colors.white,
                                  /*       fontSize: 18, */
                                  fontFamily: 'Poppins'),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 45.w,
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(5.sp),
                                      topRight: Radius.circular(5.sp)),
                                  child: Container(
                                    color: primaryColorOfApp,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'my post',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 12.sp,
                                              color: Colors.white),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(5.sp),
                                          bottomRight: Radius.circular(5.sp)),
                                      border: Border.all(
                                          width: 0.5, color: customTextColor)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(1.0),
                                    child: GridView.builder(
                                        padding: const EdgeInsets.all(0),
                                        shrinkWrap: true,
                                        gridDelegate:
                                            const SliverGridDelegateWithFixedCrossAxisCount(
                                                /*    mainAxisExtent: 33, */
                                                /*     childAspectRatio: 3.5, */
                                                crossAxisSpacing: 2,
                                                mainAxisSpacing: 2,
                                                crossAxisCount: 2),
                                        itemCount: mypost.length,
                                        itemBuilder: (context, index) {
                                          return ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(5.sp),
                                            child: Image.asset(
                                              mypost[index],
                                              height: 5.h,
                                              width: 10.w,
                                              fit: BoxFit.cover,
                                            ),
                                          );
                                        }),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 45.w,
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(5.sp),
                                      topRight: Radius.circular(5.sp)),
                                  child: Container(
                                    color: primaryColorOfApp,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Friends',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 12.sp,
                                              color: Colors.white),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(5.sp),
                                          bottomRight: Radius.circular(5.sp)),
                                      border: Border.all(
                                          width: 0.5, color: customTextColor)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: GridView.builder(
                                        padding: const EdgeInsets.all(0),
                                        shrinkWrap: true,
                                        gridDelegate:
                                            const SliverGridDelegateWithFixedCrossAxisCount(
                                                /*    mainAxisExtent: 33, */
                                                /*     childAspectRatio: 3.5, */
                                                crossAxisSpacing: 2,
                                                mainAxisSpacing: 2,
                                                crossAxisCount: 2),
                                        itemCount: friends.length,
                                        itemBuilder: (context, index) {
                                          return ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(5.sp),
                                            child: Image.asset(
                                              friends[index],
                                              height: 5.h,
                                              width: 10.w,
                                              fit: BoxFit.cover,
                                            ),
                                          );
                                        }),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 45.w,
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(5.sp),
                                      topRight: Radius.circular(5.sp)),
                                  child: Container(
                                    color: primaryColorOfApp,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Collections',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 12.sp,
                                              color: Colors.white),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(5.sp),
                                          bottomRight: Radius.circular(5.sp)),
                                      border: Border.all(
                                          width: 0.5, color: customTextColor)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: GridView.builder(
                                        padding: const EdgeInsets.all(0),
                                        shrinkWrap: true,
                                        gridDelegate:
                                            const SliverGridDelegateWithFixedCrossAxisCount(
                                                /*    mainAxisExtent: 33, */
                                                /*     childAspectRatio: 3.5, */
                                                crossAxisSpacing: 2,
                                                mainAxisSpacing: 2,
                                                crossAxisCount: 2),
                                        itemCount: collection.length,
                                        itemBuilder: (context, index) {
                                          return ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(5.sp),
                                            child: Image.asset(
                                              collection[index],
                                              height: 5.h,
                                              width: 10.w,
                                              fit: BoxFit.cover,
                                            ),
                                          );
                                        }),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
