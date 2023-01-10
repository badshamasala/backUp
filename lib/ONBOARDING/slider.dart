import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';

import 'package:flutter_application_1/homepage/homepage.dart';

import 'package:flutter_application_1/ONBOARDING/phonenumber.dart';
import 'package:flutter_application_1/homepage/widget_notification.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../account_type/uploadimage.dart';
import '../google_login/googlenewpage.dart';

class Slider1 extends StatefulWidget {
  const Slider1({super.key});

  @override
  State<Slider1> createState() => _Slider1State();
}

class _Slider1State extends State<Slider1> {
  int activeIndex = 0;

  List urlImages = [
    'assets/loginimg.svg',
    'assets/loginimg.svg',
    'assets/3rdimage.svg'
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height, width = size.width;

    return SafeArea(
      child: WillPopScope(
        onWillPop: () {
          SystemNavigator.pop();
          return Future.value(true);
        },
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                SizedBox(
                  height: 5.h,
                ),
                CarouselSlider.builder(
                    itemCount: urlImages.length,
                    itemBuilder: (context, index, realIndex) {
                      // final urlImage = urlImages[index];
                      // return buildImage(urlImage, index);
                      return SvgPicture.asset(urlImages[index]);
                    },
                    options: CarouselOptions(
                      viewportFraction: 1,
                      height: 35.h,
                      onPageChanged: (index, reason) {
                        setState(() {
                          activeIndex = index;
                        });
                      },
                    )),
                SizedBox(
                  height: 2.h,
                ),
                buildIndicator(),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "find".tr,
                  style: TextStyle(
                      color: const Color(0xff0087FF),
                      fontSize: 13.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Text(
                  "welcome".tr,
                  style: TextStyle(
                      color: const Color(0xff0087FF),
                      fontSize: /* width * 0.05 */ 15.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  "myttube".tr,
                  style: TextStyle(
                      color: const Color(0xff0087FF),
                      fontSize: /* width * 0.05 */ 15.sp,
                      fontFamily: 'Satisfy',
                      fontWeight: FontWeight.w400),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        onPressed: () {
                          selectlanguagemethod(context);
                        },
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              'assets/globemap.svg',
                              height: 2.h,
                              width: 2.w,
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            const Text(
                              'Select your language',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xff515253),
                                  fontSize: 12),
                            ),
                          ],
                        )),
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 6.h,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const GooglePage1()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        elevation: 0,

                        /*     minimumSize: const Size(0.0, 40), */
                        // padding: EdgeInsets.symmetric(
                        //     horizontal: 40.0, vertical: 20.0),
                        backgroundColor: const Color(0xff0087FF),
                        shape: RoundedRectangleBorder(
                            borderRadius: const UploadImage().radius())),
                    child: Text(
                      "login".tr,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.8),
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                SizedBox(
                  height: 6.h,
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()),
                      );
                    },
                    style: OutlinedButton.styleFrom(
                        elevation: 0,
                        side: const BorderSide(
                          color: Color(0xff0087FF),
                        ),
                        /*  padding: EdgeInsets.symmetric(
                                        horizontal: 40.0, vertical: 20.0), */
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: const UploadImage().radius())),
                    child: Text(
                      "guest".tr,
                      style: TextStyle(
                          color: primaryColorOfApp,
                          fontSize: 12.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.2),
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      color: const Color(0xff515253),
                      height: height * 0.001,
                      width: width * 0.38,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8),
                      child: Text(
                        'or'.tr,
                        style: TextStyle(
                            color: const Color(0xff515253),
                            fontFamily: 'Poppins',
                            fontSize: 10.sp),
                      ),
                    ),
                    Container(
                      color: const Color(0xff515253),
                      height: height * 0.001,
                      width: width * 0.38,
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: width * 0.03),
                      child: Text(
                        "dont".tr,
                        style: TextStyle(
                            color: customTextColor,
                            fontFamily: 'Poppins',
                            fontSize: 10.sp,
                            wordSpacing: 0),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 6.h,
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PhoneNumber()),
                      );
                    },
                    style: OutlinedButton.styleFrom(
                        elevation: 0,
                        side: const BorderSide(
                          color: Color(0xff0087FF),
                        ),
                        /*  padding: EdgeInsets.symmetric(
                                    horizontal: 40.0, vertical: 20.0), */
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: const UploadImage().radius())),
                    child: Text(
                      "signup".tr,
                      style: TextStyle(
                          color: primaryColorOfApp,
                          fontSize: 12.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.8),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
      effect: const ExpandingDotsEffect(
          expansionFactor: 4.5,
          spacing: 3,
          activeDotColor: Color(0xff0087FF),
          dotColor: Color(0xffD9D9D9),
          dotHeight: 3,
          dotWidth: 3),
      activeIndex: activeIndex,
      count: 3 /* urlImages.length */);
}

List locale = [
  {'language': 'English', 'locale': const Locale('en', 'IN')},
  {'language': 'Hindi', 'locale': const Locale('hi', 'IN')},
  {'language': 'Bengali', 'locale': const Locale('bn', 'IN')},
  {'language': 'Gujarati', 'locale': const Locale('gu', 'IN')},
  {'language': 'Marathi', 'locale': const Locale('mr', 'IN')},
  {'language': 'Urdu', 'locale': const Locale('ur', 'IN')},
  {'language': 'Odia', 'locale': const Locale('or', 'IN')},
  {'language': 'Kannada', 'locale': const Locale('kn', 'IN')},
  {'language': 'Tamil', 'locale': const Locale('ta', 'IN')},
  {'language': 'Telugu', 'locale': const Locale('te', 'IN')},
];

updatmethod(locale) {
  Get.updateLocale(Locale(locale));
}

selectlanguagemethod(context) {
  Size size = MediaQuery.of(context).size;
  var height = size.height;

  return showModalBottomSheet(
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      // <-- SEE HERE
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(20.0),
      ),
    ),
    context: context,
    builder: (BuildContext context) {
      return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
        return Stack(
          clipBehavior: Clip.none,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: const Color(0xffE2E2E2),
                          borderRadius: BorderRadius.circular(8)),
                      height: 0.5.h,
                      width: 30.w,
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Choose Language',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            color: primaryColorOfApp,
                            fontSize: 12.sp))
                  ],
                ),
                const Divider(),
                ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      if (index == 9) {
                        return SizedBox(
                          height: 2.h,
                        );
                      } else {
                        return ListTile(
                          minVerticalPadding: 10,
                          horizontalTitleGap: 0.0,
                          visualDensity: const VisualDensity(vertical: -3),
                          dense: true,
                          leading: Text(
                            locale[index]['language'].toString(),
                            style: const TextStyle(fontFamily: 'Poppins'),
                          ),
                          trailing: Transform.scale(
                            scale: 1.2.sp,
                            child: Radio(
                                value: locale[index]['locale'].toString(),
                                groupValue: groupValue,
                                onChanged: (value) {
                                  setState(() {
                                    groupValue =
                                        locale[index]['locale'].toString();
                                    updatmethod(
                                        locale[index]['locale'].toString());
                                    Navigator.pop(context);
                                  });
                                }),
                          ),
                        );
                      }
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 1.5.h,
                      );
                    },
                    itemCount: locale.length),
              ],
            ),
            positionCross(context)
          ],
        );
      });
    },
  );
}

dynamic groupValue;
