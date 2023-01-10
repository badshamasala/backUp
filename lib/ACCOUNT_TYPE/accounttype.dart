// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/account_type/formfill.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/ONBOARDING/loginpage.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ant_design.dart';
import 'package:iconify_flutter/icons/bxs.dart';
import 'package:sizer/sizer.dart';

class AccountType extends StatefulWidget {
  final value;
  const AccountType({super.key, this.value});

  @override
  State<AccountType> createState() => _AccountTypeState();
}
bool value1 = false;
  bool value2 = false;
  bool value3 = false;
  dynamic groupvalues;

  List acttypeList = [
    {
      "type": "Viewer Or Private",
      "label1": "#content-excellent for Entertainment,",
      "label2": "collect points, surprise gift and more"
    },
    {
      "type": "Business Or Brand",
      "label1": "#content-excellent for grow your",
      "label2": "brand, business in the world and more"
    },
    {
      "type": "Creator Or Public Figure",
      "label1": "#content-excellent for collaboration,",
      "label2": "earn money and many more"
    },
  ];


class _AccountTypeState extends State<AccountType> {
  
  @override
  Widget build(BuildContext context) {
    Size size;
    double height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 6.h,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: const Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: Column(
            children: [
              SizedBox(
                height: 5.6.h,
                child: Stack(
                  children: [
                    Positioned(
                      top: 1.h,
                      height: 4.5.h,
                      width: 90.w,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                width: 0.5.sp, color: customTextColor),
                            borderRadius: BorderRadius.circular(5.sp)),
                        child: Row(
                          /*   mainAxisSize: MainAxisSize.max, */
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 5.w,
                                ),
                                Iconify(
                                  Bxs.lock_alt,
                                  color: const Color(0xffE2E2E2),
                                  size: 19.sp,
                                ),
                                SizedBox(
                                  width: 2.w,
                                ),
                                Text(
                                  '+91 ${widget.value}',
                                  style: TextStyle(
                                      color: const Color(0xffE2E2E2),
                                      fontFamily: 'Poppins',
                                      fontSize: 16.sp),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 2.w),
                              child: Iconify(
                                AntDesign.check_circle_outlined,
                                color: const Color(0xff08A434),
                                size: 19.sp,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 5.w,
                      height: 2.h,
                      child: Container(
                        color: Colors.white,
                        child: Text(
                          'Your 10 digit Mobile number is verified',
                          style: TextStyle(
                              color: customTextColor,
                              fontSize: 8.5.sp,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 5.w, top: 0.5.h),
                child: Row(
                  children: [
                    Text(
                      'This contact won\'t be shared anyone or anywhere',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 8.sp,
                          color: customTextColor),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 5.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Select type of account',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16.sp,
                        color: customTextColor,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 5.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'You can change this anytime ',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12.sp,
                          color: customTextColor),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 0.5,
                              color: index == 0 && value1
                                  ? primaryColorOfApp
                                  : index == 1 && value2
                                      ? primaryColorOfApp
                                      : index == 2 && value3
                                          ? primaryColorOfApp
                                          : customTextColor),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: EdgeInsets.only(left: 5.w, bottom: 2.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      acttypeList[index]["type"],
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                          color: customTextColor,
                                          fontSize: 15.sp,
                                          letterSpacing: 0.5),
                                    ),
                                  ],
                                ),
                                Transform.scale(
                                  scale: 1.2.sp,
                                  child: Radio(
                                    splashRadius: 0,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    value: index == 0
                                        ? value1
                                        : index == 1
                                            ? value2
                                            : value3,
                                    groupValue: groupvalues,
                                    onChanged: (val) {
                                      if (index == 0) {
                                        setState(() {
                                          value1 = true;
                                          value2 = false;
                                          value3 = false;
                                          groupvalues = value1;
                                        });
                                      } else if (index == 1) {
                                        setState(() {
                                          value1 = false;
                                          value2 = true;
                                          value3 = false;
                                          groupvalues = value2;
                                        });
                                      } else if (index == 2) {
                                        setState(() {
                                          value1 = false;
                                          value2 = false;
                                          value3 = true;
                                          groupvalues = value3;
                                        });
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              acttypeList[index]["label1"],
                              style: TextStyle(
                                  fontFamily: 'Poppins', fontSize: 11.sp),
                            ),
                            Text(
                              acttypeList[index]["label2"],
                              style: TextStyle(
                                  fontFamily: 'Poppins', fontSize: 11.sp),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 1.h,
                    );
                  },
                  itemCount: acttypeList.length),
              SizedBox(
                height: 2.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 5.w),
                child: Row(
                  children: [
                    Text('You have an account?',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Poppins',
                            fontSize: 12.sp)),
                    TextButton(
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()),
                          );
                        },
                        child: Text(
                          'login',
                          style: TextStyle(
                              color: primaryColorOfApp,
                              fontFamily: 'Poppins',
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              SizedBox(
                height: 3.h,
                child: Padding(
                  padding: EdgeInsets.only(left: width * 0.05),
                  child: Row(
                    children: [
                      Text(
                        'I accepted ',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            color: customTextColor,
                            fontSize: 10.sp),
                      ),
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          foregroundColor: const Color(0xff0087FF),
                        ),
                        child: Text(
                          'terms of services',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: primaryColorOfApp,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        width: 1.w,
                      ),
                      const Text(
                        '|',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: customTextColor,
                        ),
                      ),
                      SizedBox(
                        width: 1.w,
                      ),
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          foregroundColor: const Color(0xff0087FF),
                        ),
                        child: Text(
                          'privacy policy',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: primaryColorOfApp,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 3.h,
                child: Padding(
                  padding: EdgeInsets.only(left: 5.w),
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          foregroundColor: const Color(0xff0087FF),
                        ),
                        child: Text(
                          'Licence agreement',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: primaryColorOfApp,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        width: 1.w,
                      ),
                      const Text(
                        '&',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: customTextColor,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          foregroundColor: const Color(0xff0087FF),
                        ),
                        child: Text(
                          'read more',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: primaryColorOfApp,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              SizedBox(
                width: double.infinity,
                height: 6.h,
                child: ElevatedButton(
                  onPressed: groupvalues == null
                      ? null
                      : () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Formfill(
                                      value1: value1,
                                      value2: value2,
                                      value3: value3,
                                      value: widget.value,
                                    )),
                          );
                        },
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: const Color(0xff0087FF),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7.0))),
                  child: Text(
                    "Confirm & Continue",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: width * 0.045,
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
}
