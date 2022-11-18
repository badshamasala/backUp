import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';

import 'package:flutter_application_1/homepage/homepage.dart';

import 'package:flutter_application_1/ONBOARDING/phonenumber.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../ACCOUNT_TYPE/uploadimage.dart';
import '../GOOGLE LOGIN/googlenewpage.dart';

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
    'assets/loginimg.svg'
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height, width = size.width;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(
                height: height * 0.03,
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
                    height: 235,
                    onPageChanged: (index, reason) {
                      setState(() {
                        activeIndex = index;
                      });
                    },
                  )),
              SizedBox(
                height: height * 0.02,
              ),
              buildIndicator(),
              SizedBox(
                height: height * 0.02,
              ),
              Text(
                "find".tr,
                style: TextStyle(
                    color: const Color(0xff0087FF),
                    fontSize: width * 0.04,
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
                    fontSize: width * 0.05,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400),
              ),
              Text(
                "myttube".tr,
                style: TextStyle(
                    color: const Color(0xff0087FF),
                    fontSize: width * 0.05,
                    fontFamily: 'Satisfy',
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 15,
                      child: TextButton(
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
                                height: 12,
                                width: 12,
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
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              SizedBox(
                width: double.infinity,
                height: 40,
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
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.8),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              SizedBox(
                height: 40,
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  },
                  style: OutlinedButton.styleFrom(
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
                    style: const TextStyle(
                        color: Color(0xff0087FF),
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.2),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.02,
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
                      style: const TextStyle(
                          color: Color(0xff515253), fontFamily: 'Poppins'),
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
                      style: const TextStyle(
                          color: Color(0xff515253),
                          fontFamily: 'Poppins',
                          wordSpacing: 0),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
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
                    style: const TextStyle(
                        color: Color(0xff0087FF),
                        fontSize: 15,
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
                      height: 5,
                      width: 100,
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('Choose Language',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            color: primaryColorOfApp,
                            fontSize: 15))
                  ],
                ),
                const Divider(),
                ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return ListTile(
                        minVerticalPadding: 10,
                        horizontalTitleGap: 0.0,
                        visualDensity: const VisualDensity(vertical: -3),
                        dense: true,
                        leading: Text(
                          locale[index]['language'].toString(),
                          style: const TextStyle(fontFamily: 'Poppins'),
                        ),
                        trailing: Radio(
                            value: locale[index]['locale'].toString(),
                            groupValue: groupValue,
                            onChanged: (value) {
                              setState(() {
                                groupValue = locale[index]['locale'].toString();
                                updatmethod(locale[index]['locale'].toString());
                                Navigator.pop(context);
                              });
                            }),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const Divider(
                        height: 2,
                      );
                    },
                    itemCount: locale.length),
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
                        border: Border.all(color: Colors.white, width: 2),
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
  );
}

dynamic groupValue;
