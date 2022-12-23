// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/homepage/change_interest.dart';
import 'package:flutter_application_1/homepage/profile_self.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ant_design.dart';
import 'package:iconify_flutter/icons/bx.dart';
import 'package:iconify_flutter/icons/bxs.dart';
import 'package:iconify_flutter/icons/ph.dart';
import 'package:sizer/sizer.dart';

import '../ACCOUNT_TYPE/uploadimage.dart';

class SelfProfile extends StatefulWidget {
  const SelfProfile({Key? key}) : super(key: key);

  @override
  State<SelfProfile> createState() => _SelfProfileState();
}

class _SelfProfileState extends State<SelfProfile> {
  Map myMap = {
    "User1": "Images",
    "User2": "Videos",
  };

  var dropdownkivalue;

  var genderValue = "";
  bool username = false;
  bool fullname = false;
  bool full1 = false;
  bool bio = false;
  bool bio1 = false;
  bool cancel = false;
  bool cancel1 = false;
  bool private = false;
  bool public = false;
  bool rewards = false;
  bool value1 = false;
  bool value2 = false;

  bool male = true;
  bool female = true;
  bool other = true;
  bool age1 = true;
  bool age2 = true;
  bool age3 = true;
  bool age4 = true;
  bool age5 = true;

  /* bool value = false;
  bool value1 = false;
  bool value2 = false; */
  bool select = true;
  bool birth = true;

  bool btnchng = true;
  bool valueofswitch = true;

  bool emailid = false;
  bool emailid1 = false;
  var groupemail;
  /* */

  @override
  Widget build(BuildContext context) {
    Size size;
    double height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 7.h,
        automaticallyImplyLeading: false,
        titleSpacing: -10.sp,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Profile',
          style: TextStyle(
              fontFamily: 'Poppins', color: customTextColor, fontSize: 15.sp),
        ),
        leading: IconButton(
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: primaryColorOfApp,
            )),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                SizedBox(
                  height: 5.8.h,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 2.w,
                                  ),
                                  SvgPicture.asset(
                                    'assets/@.svg',
                                    height: 2.h,
                                    width: 4.w,
                                    color: primaryColorOfApp,
                                  ),
                                  Text(
                                    'nancyjain23',
                                    style: TextStyle(
                                        color: customTextColor,
                                        fontFamily: 'Poppins',
                                        fontSize: 12.sp),
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
                        left: 2.w,
                        height: 2.h,
                        child: Container(
                          color: Colors.white,
                          child: Text(
                            'Your Username',
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
                SizedBox(
                  height: 2.5.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                            alignment: Alignment.centerRight,
                            /* minimumSize: Size(100, 5), */
                            elevation: 0,
                            visualDensity: const VisualDensity(vertical: -4),
                            padding: EdgeInsets.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                        onPressed: () {},
                        child: Text('Change',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: primaryColorOfApp,
                                fontSize: 12.sp)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 1.5.h,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 2.w,
                                  ),
                                  Iconify(
                                    Bxs.lock_alt,
                                    color: const Color(0xff737373),
                                    size: 15.sp,
                                  ),
                                  SizedBox(
                                    width: 2.w,
                                  ),
                                  Text(
                                    '+91 8689880061',
                                    style: TextStyle(
                                        color: customTextColor,
                                        fontFamily: 'Poppins',
                                        fontSize: 12.sp),
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
                        left: 2.w,
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
                SizedBox(
                  height: 2.5.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                            alignment: Alignment.centerRight,
                            /* minimumSize: Size(100, 5), */
                            elevation: 0,
                            visualDensity: const VisualDensity(vertical: -4),
                            padding: EdgeInsets.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                        onPressed: () {},
                        child: Text('Change',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: primaryColorOfApp,
                                fontSize: 12.sp)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 1.5.h,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 2.w),
                                    child: Text(
                                      'nancyjain23@yahoo.com',
                                      style: TextStyle(
                                          color: customTextColor,
                                          fontFamily: 'Poppins',
                                          fontSize: 12.sp),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                  padding: EdgeInsets.only(right: 2.w),
                                  child: SvgPicture.asset(
                                    'assets/pentosquare.svg',
                                    height: 2.5.h,
                                    width: 4.5.w,
                                  ))
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 2.w,
                        height: 2.h,
                        child: Container(
                          color: Colors.white,
                          child: Text(
                            'Your Email Id',
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
                SizedBox(
                  height: 2.5.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                            alignment: Alignment.centerRight,
                            /* minimumSize: Size(100, 5), */
                            elevation: 0,
                            visualDensity: const VisualDensity(vertical: -4),
                            padding: EdgeInsets.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                        onPressed: () {},
                        child: Text('Change',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: primaryColorOfApp,
                                fontSize: 12.sp)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 1.5.h,
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
                  height: 2.h,
                ),
                SizedBox(
                  /* color: Colors.red, */
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
                                  width: 0.5, color: const Color(0xff515253)),
                              borderRadius: BorderRadius.circular(5)),
                          child: SizedBox(
                              height: 40,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 18.0, bottom: 3),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 210,
                                      child: TextFormField(
                                          enabled: fullname,
                                          decoration: const InputDecoration(
                                            labelText: '',
                                            border: InputBorder.none,
                                          )),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 10.w),
                                      child: Container(
                                        child: full1
                                            ? IconButton(
                                                padding:
                                                    const EdgeInsets.all(0),
                                                constraints:
                                                    const BoxConstraints(),
                                                onPressed: () {
                                                  setState(() {
                                                    fullname = false;
                                                    full1 = false;
                                                  });
                                                },
                                                icon: SvgPicture.asset(
                                                  'assets/pentosquare.svg',
                                                  height: 2.5.h,
                                                  width: 4.5.w,
                                                ))
                                            : IconButton(
                                                padding:
                                                    const EdgeInsets.all(0),
                                                constraints:
                                                    const BoxConstraints(),
                                                onPressed: () {
                                                  setState(() {
                                                    fullname = true;
                                                    full1 = true;
                                                  });
                                                },
                                                icon: SvgPicture.asset(
                                                  'assets/pentosquare.svg',
                                                  height: 2.5.h,
                                                  width: 4.5.w,
                                                )

                                                /* const Iconify(
                                              Bx.edit,
                                              color: Color(0xff737373),
                                              size: 20,
                                            ) */
                                                ),
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 2.w,
                        height: 2.h,
                        child: Container(
                          color: Colors.white,
                          child: const Text(
                            'Date Of Birth',
                            style: TextStyle(
                                color: Color(0xff515253),
                                fontSize: 10,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 2.w),
                      child: Text(
                        'Show Your Email Contact to',
                        style: TextStyle(
                            color: customTextColor,
                            fontSize: 10.sp,
                            fontFamily: 'Poppins'),
                      ),
                    ),
                  ],
                ),
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
                        child: DropdownButton(
                            isExpanded: true,
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
                              'Show my Email ID only Followers',
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
                SizedBox(
                  height: 3.h,
                ),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {
                      ProfileSelf().buildaddresspage(context);
                      /*   Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        ); */
                    },
                    style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                            color: Color(0xff0087FF), width: 0.5),
                        /*  padding: EdgeInsets.symmetric(
                                          horizontal: 40.0, vertical: 20.0), */
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                    child: const Text(
                      "Add Your Address",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: primaryColorOfApp,
                          /*  fontSize: 18, */
                          fontFamily: 'Poppins'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.5.h,
                ),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ChangeInterest()),
                      );
                      /*   Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        ); */
                    },
                    style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                            color: Color(0xff0087FF), width: 0.5),
                        /*  padding: EdgeInsets.symmetric(
                                          horizontal: 40.0, vertical: 20.0), */
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                    child: const Text(
                      "Change Interest",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: primaryColorOfApp,
                          /*  fontSize: 18, */
                          fontFamily: 'Poppins'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                          minimumSize: Size(44.w, 5.h),
                          /*    minimumSize: Size(32, 30), */
                          elevation: 0,
                          /* padding: EdgeInsets.zero, */
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          side: const BorderSide(
                            color: Color(0xff0087FF),
                          ),
                          /*  padding:
                              EdgeInsets.symmetric(horizontal: 9.0, vertical: 0), */
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                      child: Text(
                        "Cancel",
                        style: TextStyle(
                            color: customTextColor,
                            fontSize: 12.sp,
                            fontFamily: 'Poppins'),
                      ),
                    ),
                    /*  SizedBox(
                                              width: width * 0.03,
                                            ), */
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(44.w, 5.h),
                          /*  minimumSize: Size(32, 30), */
                          elevation: 0,
                          /* padding: EdgeInsets.zero, */
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          /*   side: const BorderSide(
                                                    color: Color(0xff0087FF),
                                                  ), */
                          /*   padding:
                              EdgeInsets.symmetric(horizontal: 9.0, vertical: 0), */
                          backgroundColor: primaryColorOfApp,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                      child: Text(
                        "Save Changes",
                        style:
                            TextStyle(fontSize: 12.sp, fontFamily: 'Poppins'),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.05,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
