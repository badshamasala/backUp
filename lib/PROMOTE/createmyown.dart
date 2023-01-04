import 'package:flutter/material.dart';
import 'package:flutter_application_1/ACCOUNT_TYPE/uploadimage.dart';
import 'package:flutter_application_1/PROMOTE/explore1.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ant_design.dart';
import 'package:iconify_flutter/icons/carbon.dart';
import 'package:iconify_flutter/icons/eva.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:iconify_flutter/icons/ph.dart';
import 'package:iconify_flutter/icons/uil.dart';
import 'package:sizer/sizer.dart';

import '../GLOBALS/colors.dart';

class Createmyown extends StatefulWidget {
  const Createmyown({Key? key}) : super(key: key);

  @override
  State<Createmyown> createState() => _CreatemyownState();
}

class _CreatemyownState extends State<Createmyown> {
  bool male = true;
  bool female = true;
  bool other = true;
  bool age1 = true;
  bool age2 = true;
  bool age3 = true;
  bool age4 = true;
  bool age5 = true;

  var genderValue = "";

  RangeValues _currentRangeValues = const RangeValues(20, 35);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 7.h,
        automaticallyImplyLeading: false,
        titleSpacing: -2.sp,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('Create my own',
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
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: Column(
          children: [
            SizedBox(
              height: 3.h,
            ),
            ListView.separated(
                shrinkWrap: true,
                itemBuilder: ((context, index) {
                  return TextFormField(
                    onTap: () {
                      if (index == 1) {
                        Get.to(() => const Explore1());
                      }
                    },
                    cursorColor: primaryColorOfApp,
                    decoration: InputDecoration(
                        alignLabelWithHint: true,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 8),
                        isDense: true,
                        hintStyle: TextStyle(
                            color: customTextColor,
                            fontFamily: 'Poppins',
                            fontSize: 10.sp),
                        labelText: index == 0 ? "Location" : "Explore",
                        prefixIconConstraints: BoxConstraints(),
                        prefixIcon: index == 1
                            ? Padding(
                                padding: EdgeInsets.only(left: 2.w),
                                child: Iconify(
                                  Eva.hash_outline,
                                  color: primaryColorOfApp,
                                  size: 20.sp,
                                ))
                            : Padding(
                                padding: EdgeInsets.only(left: 1.w),
                                child: Iconify(
                                  MaterialSymbols.location_on,
                                  color: primaryColorOfApp,
                                  size: 20.sp,
                                ),
                              ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: primaryColorOfApp, width: 0.5.sp),
                            borderRadius: BorderRadius.circular(5)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: primaryColorOfApp, width: 0.5.sp),
                            borderRadius: BorderRadius.circular(5)),
                        labelStyle: TextStyle(
                            color: customTextColor,
                            fontFamily: 'Poppins',
                            fontSize: 10.sp),
                        suffixIconConstraints: const BoxConstraints(),
                        suffixIcon: Padding(
                          padding: EdgeInsets.only(right: 3.w),
                          child: Iconify(
                            Uil.search,
                            size: 20.sp,
                            color: const Color(0xffDADADA),
                          ),
                        )),
                  );
                }),
                separatorBuilder: ((context, index) {
                  return Divider(
                    height: 6.h,
                    color: Colors.transparent,
                  );
                }),
                itemCount: 2),
            SizedBox(
              height: 2.h,
            ),
            Row(
              children: [
                Text(
                  "Age Group",
                  style: TextStyle(
                      color: customTextColor,
                      fontFamily: "Poppins",
                      fontSize: 10.sp),
                )
              ],
            ),
            RangeSlider(
              activeColor: primaryColorOfApp,
              inactiveColor: Color(0xffe2e2e2),
              values: _currentRangeValues,
              max: 100,
              divisions: 5,
              labels: RangeLabels(
                _currentRangeValues.start.round().toString(),
                _currentRangeValues.end.round().toString(),
              ),
              onChanged: (RangeValues values) {
                setState(() {
                  _currentRangeValues = values;
                });
              },
            ),
            SizedBox(
              height: 5.h,
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
                    width: 44.w,
                    height: 5.h,
                    decoration: BoxDecoration(
                        color: male
                            ? Colors.transparent
                            : const Color.fromARGB(255, 200, 226, 249),
                        borderRadius: BorderRadius.circular(5),
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
                    width: 44.w,
                    height: 5.h,
                    decoration: BoxDecoration(
                        color: female
                            ? Colors.transparent
                            : const Color.fromARGB(255, 247, 212, 214),
                        borderRadius: BorderRadius.circular(5),
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
              ],
            ),
            SizedBox(
              height: 4.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 76.w,
                  child: TextFormField(
                    cursorColor: primaryColorOfApp,
                    decoration: InputDecoration(
                        labelText: "Partnership",
                        prefixIconConstraints: const BoxConstraints(),
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(left: 2.w),
                          child: Iconify(
                            Carbon.friendship,
                            color: primaryColorOfApp,
                            size: 20.sp,
                          ),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 9),
                        isDense: true,
                        hintStyle: TextStyle(
                            color: customTextColor,
                            fontFamily: 'Poppins',
                            fontSize: 10.sp),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: customTextColor, width: 0.5.sp),
                            borderRadius: BorderRadius.circular(5)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: primaryColorOfApp, width: 0.5.sp),
                            borderRadius: BorderRadius.circular(5)),
                        /*   labelText: '', */
                        labelStyle: TextStyle(
                            color: customTextColor,
                            fontFamily: 'Poppins',
                            fontSize: 10.sp)),
                  ),
                ),
                /*  SizedBox(
                    width: 4.w,
                  ), */
                Container(
                  height: 5.h,
                  width: 13.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: primaryColorOfApp, width: 1),
                      shape: BoxShape.rectangle),
                  child: Padding(
                    padding: EdgeInsets.all(4.sp),
                    child: IconButton(
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        onPressed: () {},
                        icon: const Iconify(
                          Carbon.send_alt_filled,
                          color: primaryColorOfApp,
                        )),
                  ),
                )
              ],
            ),
            Spacer(),
            SizedBox(
              height: 6.h,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  /*   Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Promote2()),
                  ); */
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
            SizedBox(
              height: 10.h,
            )
          ],
        ),
      ),
    );
  }
}
