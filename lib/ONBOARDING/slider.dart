import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';

import 'package:flutter_application_1/ONBOARDING/loginpage.dart';
import 'package:flutter_application_1/homepage/homepage.dart';

import 'package:flutter_application_1/ONBOARDING/phonenumber.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../ACCOUNT_TYPE/uploadimage.dart';
import '../GOOGLE LOGIN/googlenewpage.dart';



class Slider1 extends StatefulWidget {
   Slider1({super.key});

  @override
  State<Slider1> createState() => _Slider1State();
var groupValue;

  var locale = [
    {'language': 'English', 'locale': Locale('en', 'IN')},
    {'language': 'Hindi', 'locale': Locale('hi', 'IN')},
    {'language': 'Bengali', 'locale': Locale('bn', 'IN')},
    {'language': 'Gujarati', 'locale': Locale('gu', 'IN')},
    {'language': 'Marathi', 'locale': Locale('mr', 'IN')},
    {'language': 'Urdu', 'locale': Locale('ur', 'IN')},
    {'language': 'Odia', 'locale': Locale('or', 'IN')},
    {'language': 'Kannada', 'locale': Locale('kn', 'IN')},
    {'language': 'Tamil', 'locale': Locale('ta', 'IN')},
    {'language': 'Telugu', 'locale': Locale('te', 'IN')},
  ];

   updatmethod(locale) {
    Get.updateLocale(Locale(locale));
  }
}

class _Slider1State extends State<Slider1> {
  int activeIndex = 0;
  var size, height, width;
  language _site = language.english;
  List urlImages = [
    'assets/loginimg.svg',
    'assets/loginimg.svg',
    'assets/loginimg.svg'
  ];
  

  

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
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
                    return Container(child: SvgPicture.asset(urlImages[index]));
                  },
                  options: CarouselOptions(
                    viewportFraction: 1,
                    height: 220,
                    onPageChanged: (index, reason) {
                      setState(() {
                        activeIndex = index;
                      });
                    },
                  )),
              SizedBox(
                height: height * 0.02,
              ),
              Text(
                "find".tr,
                style: TextStyle(
                    color: const Color(0xff0087FF),
                    /*  fontSize: width * 0.04, */
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400),
              ),
              buildIndicator(),
              SizedBox(
                height: height * 0.02,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
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
                            return StatefulBuilder(builder:
                                (BuildContext context, StateSetter setState) {
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                color: Color(0xffE2E2E2),
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                            height: 5,
                                            width: 100,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text('Choose Language',
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  color: primaryColorOfApp,
                                                  fontSize: 15))
                                        ],
                                      ),
                                      Divider(),
                                      ListView.separated(
                                          shrinkWrap: true,
                                          itemBuilder: (context, index) {
                                            return ListTile(
                                              minVerticalPadding: 10,
                                              horizontalTitleGap: 0.0,
                                              visualDensity:
                                                  const VisualDensity(
                                                      vertical: -3),
                                              dense: true,
                                              leading: Text(
                                                Slider1().locale[index]['language']
                                                    .toString(),
                                                style: TextStyle(
                                                    fontFamily: 'Poppins'),
                                              ),
                                              trailing: Radio(
                                                  value: Slider1().locale[index]['locale']
                                                      .toString(),
                                                  groupValue: Slider1().groupValue,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      Slider1().groupValue = Slider1().locale[index]
                                                              ['locale']
                                                          .toString();
                                                      Slider1().updatmethod(Slider1().locale[index]
                                                              ['locale']
                                                          .toString());
                                                      Navigator.pop(context);
                                                    });
                                                  }),
                                            );
                                          },
                                          separatorBuilder: (context, index) {
                                            return Divider(
                                              height: 2,
                                            );
                                          },
                                          itemCount: Slider1().locale.length),
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
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(4.0),
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
                      },
                      child: Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.globe,
                            size: 15,
                            color: Color(0xff666666),
                          ),
                          SizedBox(
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
                width: double.infinity,
                // height: 50,
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
                          borderRadius: UploadImage().radius())),
                  child: Text(
                    "login".tr,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'Poppins'),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
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
                          borderRadius: UploadImage().radius())),
                  child: Text(
                    "guest".tr,
                    style: TextStyle(
                        color: Color(0xff0087FF),
                        fontSize: 15,
                        fontFamily: 'Poppins'),
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
                    width: width * 0.30,
                  ),
                  Text(
                    'or'.tr,
                    style: TextStyle(
                        color: Color(0xff515253), fontFamily: 'Poppins'),
                  ),
                  Container(
                    color: const Color(0xff515253),
                    height: height * 0.001,
                    width: width * 0.30,
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: width * 0.04),
                    child: Text(
                      "dont".tr,
                      style: TextStyle(
                          color: Color(0xff515253), fontFamily: 'Poppins'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PhoneNumber()),
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
                          borderRadius: UploadImage().radius())),
                  child: Text(
                    "signup".tr,
                    style: TextStyle(
                        color: Color(0xff0087FF),
                        fontSize: 15,
                        fontFamily: 'Poppins'),
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
          activeDotColor: Color(0xff0087FF),
          dotColor: Color(0xffD9D9D9),
          dotHeight: 7,
          dotWidth: 7),
      activeIndex: activeIndex,
      count: 3 /* urlImages.length */);
 
}
