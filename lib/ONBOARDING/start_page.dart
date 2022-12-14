import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/ONBOARDING/slider.dart';
import 'package:sizer/sizer.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
   @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 1),
        () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => const Slider1()
            )
            )
            );
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height, width = size.width;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 14.h,
              ),
              ShaderMask(
                  blendMode: BlendMode.srcIn,
                  shaderCallback: (rect) => const LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.topLeft,
                          colors: [Color(0xff03194B), Color(0xff2C81F8)])
                      .createShader(rect),
                  child: Text(
                    'welcome to myttube,',
                    style: TextStyle(
                        fontSize: 20.sp,
                        fontFamily: 'Poppins',
                        color: Colors.black),
                  )),
              ShaderMask(
                  blendMode: BlendMode.srcIn,
                  shaderCallback: (rect) => const LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.topLeft,
                          colors: [Color(0xff03194B), Color(0xff2C81F8)])
                      .createShader(rect),
                  child: Text(
                    'entertainment world',
                    style: TextStyle(fontSize: 20.sp, fontFamily: 'Poppins'),
                  )),
              SizedBox(
                height: 14.h,
              ),
              ShaderMask(
                  blendMode: BlendMode.srcIn,
                  shaderCallback: (rect) => const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xff2C81F8),
                            Color(0xff03194B),
                          ]).createShader(rect),
                  child: Text(
                    'CREATE',
                    style: TextStyle(fontSize: 25.sp, fontFamily: 'Satisfy'),
                  )),
              ShaderMask(
                  blendMode: BlendMode.srcIn,
                  shaderCallback: (rect) => const LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.topLeft,
                          colors: [
                            Color(0xff2C81F8),
                            Color(0xff03194B),
                          ]).createShader(rect),
                  child: Text(
                    'your own story and',
                    style: TextStyle(fontSize: 25.sp, fontFamily: 'Poppins'),
                  )),
              ShaderMask(
                  blendMode: BlendMode.srcIn,
                  shaderCallback: (rect) => const LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.topLeft,
                          colors: [
                            Color(0xff2C81F8),
                            Color(0xff03194B),
                          ]).createShader(rect),
                  child: Text(
                    'share it with',
                    style: TextStyle(fontSize: 25.sp, fontFamily: 'Poppins'),
                  )),
              ShaderMask(
                  blendMode: BlendMode.srcIn,
                  shaderCallback: (rect) => const LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.topLeft,
                          colors: [
                            Color(0xff2C81F8),
                            Color(0xff03194B),
                          ]).createShader(rect),
                  child: Text(
                    'the world',
                    style: TextStyle(fontSize: 25.sp, fontFamily: 'Poppins'),
                  )),
              SizedBox(
                height: 16.h,
              ),
              ShaderMask(
                  blendMode: BlendMode.srcIn,
                  shaderCallback: (rect) => const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            primaryColorOfApp,
                            Color(0xff03194B),
                          ]).createShader(rect),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Get started',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.5.sp),
                      ),
                    ],
                  )),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                      image: const AssetImage(
                        'assets/logo.png',
                      ),
                      height: 5.h,
                      width: 10.w,
                      fit: BoxFit.cover),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'myttube',
                    style: TextStyle(
                      color: Color(0xff18346D),
                      fontFamily: 'Satisfy',
                      fontSize: 20.sp,
                      shadows: [
                        Shadow(
                          blurRadius: 8.sp,
                          color: Color(0xff0087FF),
                          offset: Offset(1.sp, 1.sp),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
