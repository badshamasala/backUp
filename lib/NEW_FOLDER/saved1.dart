import 'package:flutter/material.dart';
import 'package:flutter_application_1/ACCOUNT_TYPE/uploadimage.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/NEW_FOLDER/create_folder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:sizer/sizer.dart';

class Saved1 extends StatefulWidget {
  const Saved1({Key? key}) : super(key: key);

  @override
  State<Saved1> createState() => _Saved1State();
}

class _Saved1State extends State<Saved1> {
  Map myMap = {
    "User1": "Images",
    "User2": "Videos",
  };

  var dropdownkivalue;
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 7.h,
          automaticallyImplyLeading: false,
          titleSpacing: -2.sp,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text('Saved',
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
        padding: EdgeInsets.symmetric(horizontal: 3.w),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: const UploadImage().radius(),
                    border: Border.all(color: primaryColorOfApp, width: 0.5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8),
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
                                    value: e.value, child: Text(e.value)))
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
                            mainAxisAlignment: MainAxisAlignment.center,
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
                            border:
                                Border.all(width: 0.5, color: customTextColor)),
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
                                  borderRadius: BorderRadius.circular(5.sp),
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
                            mainAxisAlignment: MainAxisAlignment.center,
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
                            border:
                                Border.all(width: 0.5, color: customTextColor)),
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
                                  borderRadius: BorderRadius.circular(5.sp),
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
                            mainAxisAlignment: MainAxisAlignment.center,
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
                            border:
                                Border.all(width: 0.5, color: customTextColor)),
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
                                  borderRadius: BorderRadius.circular(5.sp),
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
    );
  }
}
