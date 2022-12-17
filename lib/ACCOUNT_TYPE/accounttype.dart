// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/ACCOUNT_TYPE/formfill.dart';
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

class _AccountTypeState extends State<AccountType> {
  bool value1 = false;
  bool value2 = false;
  bool value3 = false;
  dynamic groupvalues;

  @override
  Widget build(BuildContext context) {
    Size size;
    double height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: Column(
            children: [
              SizedBox(
                height: height * 0.1,
              ),
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
                height: height * 0.04,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 0.5,
                        color: value1 ? primaryColorOfApp : Colors.black),
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
                                'Viewer or private',
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
                              value: value1,
                              groupValue: groupvalues,
                              onChanged: (val) {
                                setState(() {
                                  value1 = true;
                                  value2 = false;
                                  value3 = false;
                                  groupvalues = value1;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      Text(
                        '#content-excellent for Entertainment,',
                        style:
                            TextStyle(fontFamily: 'Poppins', fontSize: 11.sp),
                      ),
                      Text(
                        'collect points, surprise gift and more',
                        style:
                            TextStyle(fontFamily: 'Poppins', fontSize: 11.sp),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 1.2.h,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 0.5,
                        color: value2 ? primaryColorOfApp : Colors.black),
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
                          Text(
                            'Business or Brand',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                color: customTextColor,
                                fontSize: 15.sp),
                          ),
                          Transform.scale(
                            scale: 1.2.sp,
                            child: Radio(
                              splashRadius: 0,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: value2,
                              groupValue: groupvalues,
                              onChanged: (val) {
                                setState(() {
                                  value1 = false;
                                  value2 = true;
                                  value3 = false;
                                  groupvalues = value2;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      Text(
                        '#content-excellent for Entertainment,',
                        style:
                            TextStyle(fontFamily: 'Poppins', fontSize: 11.sp),
                      ),
                      Text(
                        'collect points, surprise gift and more',
                        style:
                            TextStyle(fontFamily: 'Poppins', fontSize: 11.sp),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 1.2.h,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 0.5,
                        color: value3 ? primaryColorOfApp : Colors.black),
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
                          Text(
                            'creator or public figure',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                color: customTextColor,
                                fontSize: 15.sp),
                          ),
                          Transform.scale(
                            scale: 1.2.sp,
                            child: Radio(
                              splashRadius: 0,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: value3,
                              groupValue: groupvalues,
                              onChanged: (val) {
                                setState(() {
                                  value1 = false;
                                  value2 = false;
                                  value3 = true;
                                  groupvalues = value3;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      Text(
                        '#content-excellent for Entertainment,',
                        style:
                            TextStyle(fontFamily: 'Poppins', fontSize: 11.sp),
                      ),
                      Text(
                        'collect points, surprise gift and more',
                        style:
                            TextStyle(fontFamily: 'Poppins', fontSize: 11.sp),
                      ),
                    ],
                  ),
                ),
              ),
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
                          /*  /* setState(() { */
                    if (value1 == false || value2== false || value3 ==false) {
                      Fluttertoast.showToast(
                          msg: "Invalid Credentials",
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 16.0);
                    } else {
                    /* value1 == false ? null :  value2  == false ? null : */ Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Formfill(
                                  value1: value1,
                                  value2: value2,
                                  value3: value3,
                                )),
                      );
                    } */
                          /* if (groupvalues == value1) {
                        /* var value1 = 'Private'; */
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Formfill(
                                    value1: value1,
                                    value2: value2,
                                    value3: value3,
                                  )),
                        );
                      } */ /* else if (groupvalues == value2) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FormfillBrand()),
                        );
                      } */ /*  else if (groupvalues == value3) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FormfillPublic()),
                        );
                      } */
                          /*     }); */
                        },
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      /*     minimumSize: const Size(0.0, 40), */
                      // padding: EdgeInsets.symmetric(
                      //     horizontal: 40.0, vertical: 20.0),
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
