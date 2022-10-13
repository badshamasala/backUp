import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/guestlogin.dart';
import 'package:flutter_application_1/phonenumber.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

enum language {
  english,
  hindi,
  marathi,
  urud,
  telugu,
  bengali,
  gujrati,
  odia,
  kannada,
  tamil
}

class Slider1 extends StatefulWidget {
  const Slider1({super.key});

  @override
  State<Slider1> createState() => _Slider1State();
}

var logo = "assets/group.png";
var mobile = "assets/group1.png";
var phone = "assets/group11.png";

class _Slider1State extends State<Slider1> {
  int activeIndex = 0;
  var size, height, width;
  language _site = language.english;
  List urlImages = [
    {
      "assets": logo,
    },
    {
      'assets': mobile,
    },
    {'assets': phone}
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
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Skip',
                        style: TextStyle(
                          color: Color(
                            0xff0087FF,
                          ),
                          decoration: TextDecoration.underline,
                          fontFamily: 'Poppins',
                          fontSize: 18,
                        ),
                      )),
                ],
              ),
              CarouselSlider.builder(
                  itemCount: urlImages.length,
                  itemBuilder: (context, index, realIndex) {
                    // final urlImage = urlImages[index];
                    // return buildImage(urlImage, index);
                    return Container(
                        child: Image.asset(urlImages[index]['assets']));
                  },
                  options: CarouselOptions(
                    viewportFraction: 1,
                    height: 300,
                    onPageChanged: (index, reason) {
                      setState(() {
                        activeIndex = index;
                      });
                    },
                  )),
              Text(
                "Find Friends & Get Inspiration\nthe world",
                style: TextStyle(
                    color: const Color(0xff0087FF),
                    fontSize: width * 0.05,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400),
              ),
              buildIndicator(),
              Text(
                "welcome to the myttube",
                style: TextStyle(
                    color: const Color(0xff0087FF),
                    fontSize: width * 0.05,
                    fontFamily: 'Poppins',
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
                              return Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Container(
                                      color: Colors.black,
                                      height: 5,
                                      width: 100,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text('choose language'),
                                  const Divider(),
                                  ListTile(
                                    visualDensity: const VisualDensity(vertical: -3),
                                    dense: true,
                                    leading: const Text(
                                      'English',
                                      style: TextStyle(fontFamily: 'Poppins'),
                                    ),
                                    trailing: Radio(
                                      value: language.english,
                                      groupValue: _site,
                                      onChanged: (language? value) {
                                        setState(() {
                                          _site = value!;
                                        });
                                      },
                                    ),
                                  ),
                                  ListTile(
                                    visualDensity: const VisualDensity(vertical: -3),
                                    dense: true,
                                    leading: const Text(
                                      'Hindi',
                                      style: TextStyle(fontFamily: 'Poppins'),
                                    ),
                                    trailing: Radio(
                                      value: language.hindi,
                                      groupValue: _site,
                                      onChanged: (language? value) {
                                        setState(() {
                                          _site = value!;
                                        });
                                      },
                                    ),
                                  ),
                                  ListTile(
                                    visualDensity: const VisualDensity(vertical: -3),
                                    dense: true,
                                    leading: const Text('Bengali',
                                        style:
                                            TextStyle(fontFamily: 'Poppins')),
                                    trailing: Radio(
                                      value: language.bengali,
                                      groupValue: _site,
                                      onChanged: (language? value) {
                                        setState(() {
                                          _site = value!;
                                        });
                                      },
                                    ),
                                  ),
                                  ListTile(
                                    visualDensity: const VisualDensity(vertical: -3),
                                    dense: true,
                                    leading: const Text('Gujarati',
                                        style:
                                            TextStyle(fontFamily: 'Poppins')),
                                    trailing: Radio(
                                      value: language.gujrati,
                                      groupValue: _site,
                                      onChanged: (language? value) {
                                        setState(() {
                                          _site = value!;
                                        });
                                      },
                                    ),
                                  ),
                                  ListTile(
                                    visualDensity: const VisualDensity(vertical: -3),
                                    dense: true,
                                    leading: const Text('Marathi',
                                        style:
                                            TextStyle(fontFamily: 'Poppins')),
                                    trailing: Radio(
                                      value: language.marathi,
                                      groupValue: _site,
                                      onChanged: (language? value) {
                                        setState(() {
                                          _site = value!;
                                        });
                                      },
                                    ),
                                  ),
                                  ListTile(
                                    visualDensity: const VisualDensity(vertical: -3),
                                    dense: true,
                                    leading: const Text('Urdu',
                                        style:
                                            TextStyle(fontFamily: 'Poppins')),
                                    trailing: Radio(
                                      value: language.urud,
                                      groupValue: _site,
                                      onChanged: (language? value) {
                                        setState(() {
                                          _site = value!;
                                        });
                                      },
                                    ),
                                  ),
                                  ListTile(
                                    visualDensity: const VisualDensity(vertical: -3),
                                    dense: true,
                                    leading: const Text('Odia (oria)',
                                        style:
                                            TextStyle(fontFamily: 'Poppins')),
                                    trailing: Radio(
                                      value: language.odia,
                                      groupValue: _site,
                                      onChanged: (language? value) {
                                        setState(() {
                                          _site = value!;
                                        });
                                      },
                                    ),
                                  ),
                                  ListTile(
                                    visualDensity: const VisualDensity(vertical: -3),
                                    dense: true,
                                    leading: const Text('Kannada',
                                        style:
                                            TextStyle(fontFamily: 'Poppins')),
                                    trailing: Radio(
                                      value: language.kannada,
                                      groupValue: _site,
                                      onChanged: (language? value) {
                                        setState(() {
                                          _site = value!;
                                        });
                                      },
                                    ),
                                  ),
                                  ListTile(
                                    visualDensity: const VisualDensity(vertical: -3),
                                    dense: true,
                                    leading: const Text('Tamil',
                                        style:
                                            TextStyle(fontFamily: 'Poppins')),
                                    trailing: Radio(
                                      value: language.tamil,
                                      groupValue: _site,
                                      onChanged: (language? value) {
                                        setState(() {
                                          _site = value!;
                                        });
                                      },
                                    ),
                                  ),
                                  ListTile(
                                    visualDensity: const VisualDensity(vertical: -3),
                                    dense: true,
                                    leading: const Text('Telugu',
                                        style:
                                            TextStyle(fontFamily: 'Poppins')),
                                    trailing: Radio(
                                      value: language.telugu,
                                      groupValue: _site,
                                      onChanged: (language? value) {
                                        setState(() {
                                          _site = value!;
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              );
                            });
                          },
                        );
                      },
                      child: const Text(
                        'Choose language',
                        style: TextStyle(
                            fontFamily: 'Poppins', color: Colors.black),
                      )),
                  const FaIcon(
                    FontAwesomeIcons.globe,
                    size: 15,
                  )
                ],
              ),
              SizedBox(
                width: double.infinity,
                // height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const GuestLogin()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      minimumSize: const Size(0.0, 40),
                      // padding: EdgeInsets.symmetric(
                      //     horizontal: 40.0, vertical: 20.0),
                      backgroundColor: const Color(0xff0087FF),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                  child: const Text(
                    "Login",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.02,
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
                          borderRadius: BorderRadius.circular(10.0))),
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(color: Color(0xff0087FF), fontSize: 18),
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
      count: urlImages.length);
}
