// ignore_for_file: prefer_typing_uninitialized_variables, use_build_context_synchronously

import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/CHAT_APP/shared_preference.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/GOOGLE%20LOGIN/googleprovider.dart';
import 'package:flutter_application_1/ONBOARDING/loginpage.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/heroicons.dart';
import 'package:iconify_flutter/icons/ph.dart';
import 'package:image_picker/image_picker.dart';
import 'package:iconify_flutter/icons/ant_design.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class UploadImage extends StatefulWidget {
  final value1;
  final value2;
  final value3;
  final value4;
  final value5;
  const UploadImage(
      {super.key,
      this.value1,
      this.value2,
      this.value3,
      this.value4,
      this.value5});

  @override
  State<UploadImage> createState() => _UploadImageState();

  radius() {
    return BorderRadius.circular(7);
  }
}

class _UploadImageState extends State<UploadImage> {
  bool isloading = false;
  DateTime dateTime = DateTime.now();
  bool male = true;
  bool female = true;
  bool other = true;
  bool age1 = true;
  bool age2 = true;
  bool age3 = true;
  bool age4 = true;
  bool age5 = true;

  var genderValue = "";

  bool value = false;
  bool value1 = false;
  bool value2 = false;
  bool select = true;
  bool birth = true;

  bool btnchng = true;

  File? image;
  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;
      final imageTemporary = File(image.path);
      setState(() => this.image = imageTemporary);
    } on PlatformException catch (e) {
      if (kDebugMode) {
        print('Failed to pick image: $e');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height, width = size.width;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: Column(
            /* mainAxisAlignment: MainAxisAlignment.spaceEvenly, */
            children: [
              SizedBox(
                height: height * 0.03,
              ),
              Container(
                child: image != null
                    ? CircleAvatar(
                        radius: 42.sp,
                        backgroundColor: primaryColorOfApp,
                        child: CircleAvatar(
                          radius: 40.sp,
                          backgroundColor: Colors.white,
                          child: ClipOval(
                            child: Image.file(
                              image!,
                              width: 24.w,
                              height: 11.5.h,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      )
                    // Image. file
                    : CircleAvatar(
                        radius: 42.sp,
                        backgroundColor: const Color(0xffe2e2e2),
                        child: CircleAvatar(
                          radius: 40.sp,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.account_circle,
                            size: 80.sp,
                            color: const Color(0xffe2e2e2),
                          ),
                        ),
                      ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      style: TextButton.styleFrom(
                          alignment: Alignment.topCenter,
                          padding: EdgeInsets.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                      onPressed: () {
                        showModalBottomSheet(
                            isScrollControlled: true,
                            shape: const RoundedRectangleBorder(
                              // <-- SEE HERE
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20.0),
                              ),
                            ),
                            context: context,
                            builder: (BuildContext context) {
                              return Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Container(
                                          color: const Color(0xffE2E2E2),
                                          height: 3.sp,
                                          width: 70.sp,
                                        ),
                                      ),
                                      SizedBox(
                                        height: height * 0.02,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsets.only(left: 70.sp),
                                            child: Text(
                                              'Your Profile Photo',
                                              style: TextStyle(
                                                  color:
                                                      const Color(0xff333333),
                                                  fontSize: 15.sp,
                                                  fontFamily: 'Poppins'),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      const Divider(),
                                      SizedBox(
                                        height: height * 0.03,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Column(
                                            children: [
                                              Container(
                                                  decoration:
                                                      const BoxDecoration(
                                                    color: Color(0xffDADADA),
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: IconButton(
                                                    onPressed: () {
                                                      pickImage(
                                                          ImageSource.camera);
                                                      Navigator.of(context)
                                                          .pop();
                                                      setState(() {
                                                        btnchng = false;
                                                      });
                                                    },
                                                    icon: Iconify(
                                                      AntDesign.camera_filled,
                                                      color: primaryColorOfApp,
                                                      size: 35.sp,
                                                    ),
                                                  )),
                                              Text(
                                                'camera',
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    color: customTextColor,
                                                    fontSize: 12.sp),
                                              )
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Container(
                                                  decoration:
                                                      const BoxDecoration(
                                                    color: Color(0xffDADADA),
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: IconButton(
                                                    onPressed: () {
                                                      pickImage(
                                                          ImageSource.gallery);
                                                      Navigator.of(context)
                                                          .pop();
                                                      setState(() {
                                                        btnchng = false;
                                                      });
                                                    },
                                                    icon: Iconify(
                                                      Heroicons.photo_20_solid,
                                                      color: primaryColorOfApp,
                                                      size: 35.sp,
                                                    ),
                                                  )),
                                              Text(
                                                'gallery',
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    color: customTextColor,
                                                    fontSize: 12.sp),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: height * 0.1,
                                      ),
                                    ],
                                  ),
                                  Positioned.fill(
                                      top: -36,
                                      child: Align(
                                        alignment: Alignment.topCenter,
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                          child: Container(
                                            /*   width: 45,
                                height: 45, */
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.white,
                                                  width: 2),
                                              shape: BoxShape.circle,
                                            ),
                                            child: const Padding(
                                              padding: EdgeInsets.all(4.0),
                                              child: Icon(
                                                Icons.close,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ))
                                ],
                              );
                            });
                      },
                      child: btnchng
                          ? Text(
                              'Upload Profile Picture',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 12.sp,
                                  color: const Color(0xff0087FF)),
                            )
                          : Text(
                              'change profile image',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 12.sp,
                                  color: const Color(0xff0087FF)),
                            ))
                ],
              ),
              SizedBox(
                height: height * 0.02,
              ),
              SizedBox(
                height: 2.5.h,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Select Your Gender',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12.sp,
                          color: customTextColor),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        genderValue = 'Male';
                        male = false;
                        female = true;
                        other = true;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.zero,
                      margin: EdgeInsets.zero,
                      width: 29.w,
                      height: 5.h,
                      decoration: BoxDecoration(
                          color: male
                              ? Colors.transparent
                              : const Color.fromARGB(255, 200, 226, 249),
                          borderRadius: const UploadImage().radius(),
                          border: Border.all(
                              width: 0.2.w,
                              color: male
                                  ? const Color(0xff515253)
                                  : const Color(0xff0087FF))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Iconify(
                            Ph.gender_male,
                            size: 20.sp,
                            color: male
                                ? const Color(0xff515253)
                                : const Color(0xff0087FF),
                          ),
                          Text(
                            'Male',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15.sp,
                                color: male
                                    ? const Color(0xff515253)
                                    : const Color(0xff0087FF)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        genderValue = 'Female';
                        female = false;
                        male = true;
                        other = true;
                      });
                    },
                    child: Container(
                      width: 29.w,
                      height: 5.h,
                      decoration: BoxDecoration(
                          color: female
                              ? Colors.transparent
                              : const Color.fromARGB(255, 247, 212, 214),
                          borderRadius: const UploadImage().radius(),
                          border: Border.all(
                              width: 0.2.w,
                              color: female
                                  ? const Color(0xff515253)
                                  : const Color(0xffF96A70))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Iconify(
                            Ph.gender_female,
                            size: 20.sp,
                            color: female
                                ? const Color(0xff515253)
                                : const Color(0xffF96A70),
                          ),
                          Text(
                            'Female',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15.sp,
                                color: female
                                    ? const Color(0xff515253)
                                    : const Color(0xffF96A70)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        genderValue = 'Other';
                        other = false;
                        male = true;
                        female = true;
                      });
                    },
                    child: Container(
                      width: 29.w,
                      height: 5.h,
                      decoration: BoxDecoration(
                          color: other
                              ? Colors.transparent
                              : const Color.fromARGB(255, 232, 203, 246),
                          borderRadius: const UploadImage().radius(),
                          border: Border.all(
                              width: 0.2.w,
                              color: other
                                  ? const Color(0xff515253)
                                  : const Color(0xff56027D))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Iconify(
                            Ph.gender_intersex,
                            size: 20.sp,
                            color: other
                                ? const Color(0xff515253)
                                : const Color(0xff56027D),
                          ),
                          Text(
                            'Other',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15.sp,
                                color: other
                                    ? const Color(0xff515253)
                                    : const Color(0xff56027D)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.03,
              ),
              SizedBox(
                height: 3.h,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          select = false;
                          birth = true;
                        });
                      },
                      style: TextButton.styleFrom(
                        alignment: Alignment.topCenter,
                        padding: EdgeInsets.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        foregroundColor: select
                            ? const Color(0xff515253)
                            : const Color(0xff0087FF),
                      ),
                      child: Text(
                        'Select Your Age Group',
                        style: TextStyle(fontFamily: 'Poppins', fontSize: 12.sp
                            /*  decoration: TextDecoration.underline, */
                            ),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      'or',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12.sp,
                          color: customTextColor),
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          birth = false;
                          select = true;
                        });
                        showModalBottomSheet<dynamic>(
                            isScrollControlled: true,
                            shape: const RoundedRectangleBorder(
                              // <-- SEE HERE
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20.0),
                              ),
                            ),
                            context: context,
                            builder: (BuildContext context) {
                              return StatefulBuilder(builder:
                                  (BuildContext context, StateSetter setState) {
                                return Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        SizedBox(
                                          height: 3.h,
                                        ),
                                        Text(
                                          'Select Your Birthday',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 15.sp,
                                              color: const Color(0xff000000)),
                                        ),
                                        const Divider(
                                          color: Color(0xffe2e2e2),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 5.w),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Text(
                                                    'Month',
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 15.sp,
                                                        color:
                                                            const Color(0xff000000)),
                                                  ),
                                                  Text(
                                                    'Day',
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 15.sp,
                                                        color:
                                                            const Color(0xff000000)),
                                                  ),
                                                  Text(
                                                    'Year',
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 15.sp,
                                                        color:
                                                            const Color(0xff000000)),
                                                  ),
                                                ],
                                              ),
                                              buildDatePicker(),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'This won\'t be shared any or anywhere',
                                                    style: TextStyle(
                                                        fontSize: 10.sp,
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            const Color(0xff515253)),
                                                  ),
                                                  Checkbox(
                                                      shape:
                                                          const CircleBorder(),
                                                      materialTapTargetSize:
                                                          MaterialTapTargetSize
                                                              .shrinkWrap,
                                                      value: value,
                                                      onChanged: (value) {
                                                        setState(() {
                                                          this.value = value!;
                                                        });
                                                      }),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Show your birthday info everyone',
                                                    style: TextStyle(
                                                        fontSize: 10.sp,
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            const Color(0xff515253)),
                                                  ),
                                                  Switch.adaptive(
                                                      materialTapTargetSize:
                                                          MaterialTapTargetSize
                                                              .shrinkWrap,
                                                      value: value1,
                                                      onChanged: (value1) {
                                                        setState(() {
                                                          this.value1 = value1;
                                                        });
                                                      })
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Show your birthday info everyone',
                                                    style: TextStyle(
                                                        fontSize: 10.sp,
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            const Color(0xff515253)),
                                                  ),
                                                  Switch.adaptive(
                                                      materialTapTargetSize:
                                                          MaterialTapTargetSize
                                                              .shrinkWrap,
                                                      value: value2,
                                                      onChanged: (value2) {
                                                        setState(() {
                                                          this.value2 = value2;
                                                        });
                                                      })
                                                ],
                                              ),
                                              SizedBox(
                                                height: 2.h,
                                              ),
                                              SizedBox(
                                                width: double.infinity,
                                                height: 6.h,
                                                child: ElevatedButton(
                                                  onPressed: () {},
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                          elevation: 0,
                                                          /*      minimumSize:
                                                          const Size(0.0, 40), */
                                                          // padding: EdgeInsets.symmetric(
                                                          //     horizontal: 40.0, vertical: 20.0),
                                                          backgroundColor:
                                                              const Color(
                                                                  0xff0087FF),
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5.0))),
                                                  child: Text(
                                                    "Confirm & Continue",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 15.sp,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: height * 0.05,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Positioned.fill(
                                        top: -36,
                                        child: Align(
                                          alignment: Alignment.topCenter,
                                          child: InkWell(
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
                                            child: Container(
                                              /*   width: 45,
                                  height: 45, */
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.white,
                                                    width: 2),
                                                shape: BoxShape.circle,
                                              ),
                                              child: const Padding(
                                                padding: EdgeInsets.all(4.0),
                                                child: Icon(
                                                  Icons.close,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ))
                                  ],
                                );
                              });
                            });
                      },
                      style: TextButton.styleFrom(
                        alignment: Alignment.topCenter,
                        padding: EdgeInsets.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        foregroundColor: birth
                            ? const Color(0xff515253)
                            : const Color(0xff0087FF),
                      ),
                      child: Text(
                        'Your Birthday',
                        style:
                            TextStyle(fontFamily: 'Poppins', fontSize: 12.sp),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    age1 = false;
                    age2 = true;
                    age3 = true;
                    age4 = true;
                    age5 = true;
                  });
                },
                child: Container(
                  height: 5.h,
                  decoration: BoxDecoration(
                      color: age1
                          ? Colors.transparent
                          : const Color.fromARGB(255, 200, 226, 249),
                      borderRadius: const UploadImage().radius(),
                      border: Border.all(
                          width: 0.5.sp,
                          color: age1
                              ? const Color(0xff515253)
                              : const Color.fromARGB(255, 165, 194, 219))),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.sp),
                        child: Text(
                          'Your Age Group',
                          style: TextStyle(
                              color: age1
                                  ? const Color(0xff515253)
                                  : const Color(0xff0087FF),
                              fontSize: 12.sp),
                        ),
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Text(
                        '0 to 17',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12.sp,
                            color: age1
                                ? const Color(0xff515253)
                                : const Color(0xff0087FF)),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    age2 = false;
                    age1 = true;
                    age3 = true;
                    age4 = true;
                    age5 = true;
                  });
                },
                child: Container(
                  height: 5.h,
                  decoration: BoxDecoration(
                      color: age2
                          ? Colors.transparent
                          : const Color.fromARGB(255, 200, 226, 249),
                      borderRadius: const UploadImage().radius(),
                      border: Border.all(
                          width: 0.5.sp,
                          color: age2
                              ? const Color(0xff515253)
                              : const Color(0xff0087FF))),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Your Age Group',
                          style: TextStyle(
                              color: age2
                                  ? const Color(0xff515253)
                                  : const Color(0xff0087FF),
                              fontSize: 12.sp),
                        ),
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Text(
                        '18 to 29',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12.sp,
                            color: age2
                                ? const Color(0xff515253)
                                : const Color(0xff0087FF)),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    age1 = true;
                    age2 = true;
                    age3 = false;
                    age4 = true;
                    age5 = true;
                  });
                },
                child: Container(
                  height: 5.h,
                  decoration: BoxDecoration(
                      color: age3
                          ? Colors.transparent
                          : const Color.fromARGB(255, 200, 226, 249),
                      borderRadius: const UploadImage().radius(),
                      border: Border.all(
                          width: 0.5.sp,
                          color: age3
                              ? const Color(0xff515253)
                              : const Color(0xff0087FF))),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Your Age Group',
                          style: TextStyle(
                              color: age3
                                  ? const Color(0xff515253)
                                  : const Color(0xff0087FF),
                              fontSize: 12.sp),
                        ),
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Text(
                        '30 to 44',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12.sp,
                            color: age3
                                ? const Color(0xff515253)
                                : const Color(0xff0087FF)),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    age1 = true;
                    age2 = true;
                    age3 = true;
                    age4 = false;
                    age5 = true;
                  });
                },
                child: Container(
                  height: 5.h,
                  decoration: BoxDecoration(
                      color: age4
                          ? Colors.transparent
                          : const Color.fromARGB(255, 200, 226, 249),
                      borderRadius: const UploadImage().radius(),
                      border: Border.all(
                          width: 0.5.sp,
                          color: age4
                              ? const Color(0xff515253)
                              : const Color(0xff0087FF))),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Your Age Group',
                          style: TextStyle(
                              color: age4
                                  ? const Color(0xff515253)
                                  : const Color(0xff0087FF),
                              fontSize: 12.sp),
                        ),
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Text(
                        '45 to 60',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12.sp,
                            color: age4
                                ? const Color(0xff515253)
                                : const Color(0xff0087FF)),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    age1 = true;
                    age2 = true;
                    age3 = true;
                    age4 = true;
                    age5 = false;
                  });
                },
                child: Container(
                  height: 5.h,
                  decoration: BoxDecoration(
                      color: age5
                          ? Colors.transparent
                          : const Color.fromARGB(255, 200, 226, 249),
                      borderRadius: const UploadImage().radius(),
                      border: Border.all(
                          width: 0.5.sp,
                          color: age5
                              ? const Color(0xff515253)
                              : const Color(0xff0087FF))),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Your Age Group',
                          style: TextStyle(
                              color: age5
                                  ? const Color(0xff515253)
                                  : const Color(0xff0087FF),
                              fontSize: 12.sp),
                        ),
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Text(
                        '60 above',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12.sp,
                            color: age5
                                ? const Color(0xff515253)
                                : const Color(0xff0087FF)),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              SizedBox(
                width: double.infinity,
                height: 6.h,
                child: ElevatedButton(
                  onPressed: male && female && other
                      ? null
                      : () {
                          final provider = Provider.of<Googleprovider>(context,
                              listen: false);
                          provider
                              .registerUser(widget.value1, widget.value2,
                                  widget.value3, widget.value4, widget.value5)
                              .then(
                            (value) async {
                              if (value == true) {
                                await SharedPref.savemytubeMobileno(
                                    widget.value1);
                                await SharedPref.savemytubeUsername(
                                    widget.value2);
                                await SharedPref.savemytubePassword(
                                    widget.value3);
                                await SharedPref.savemytubeFullname(
                                    widget.value4);
                                await SharedPref.savemytubeEmail(widget.value5);
                                await SharedPref.savemytubeGender(genderValue);
                                Fluttertoast.showToast(
                                    msg: "User has been created",
                                    backgroundColor: Colors.green,
                                    textColor: Colors.white,
                                    fontSize: 16.0);
                                setState(() {
                                  isloading = false;
                                });

                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const LoginPage()),
                                );
                                return;
                              } else {
                                Fluttertoast.showToast(
                                    msg: "Something Went Wrong ",
                                    backgroundColor: Colors.red,
                                    textColor: Colors.white,
                                    fontSize: 16.0);
                                setState(() {
                                  isloading = false;
                                });
                                return;
                              }
                            },
                          );
                          /*    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SplashScreen()),
                    ); */
                        },
                  style: ElevatedButton.styleFrom(
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      padding: EdgeInsets.zero,
                      elevation: 0,
                      /*  minimumSize: const Size(0.0, 40), */
                      // padding: EdgeInsets.symmetric(
                      //     horizontal: 40.0, vertical: 20.0),
                      backgroundColor: const Color(0xff0087FF),
                      shape: RoundedRectangleBorder(
                          borderRadius: const UploadImage().radius())),
                  child: Text(
                    "Confirm & Continue",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildDatePicker() => SizedBox(
        height: 20.h,
        child: DatePickerWidget(
          looping: true,
          initialDate: DateTime.now(),
          dateFormat: "MMMM/dd/yyyy",
          onChange: (DateTime newDate, _) {},
          pickerTheme: const DateTimePickerTheme(
            backgroundColor: Colors.transparent,
            itemTextStyle: TextStyle(color: Colors.black, fontSize: 19),
            dividerColor: Colors.transparent,
          ),
        ),
      );
}
