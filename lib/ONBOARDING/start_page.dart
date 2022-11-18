import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/ONBOARDING/slider.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height, width = size.width;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.07),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: height * 0.17,
              ),
              ShaderMask(
                  blendMode: BlendMode.srcIn,
                  shaderCallback: (rect) => const LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.topLeft,
                          colors: [Color(0xff03194B), Color(0xff2C81F8)])
                      .createShader(rect),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        ' welcome to myttube,\n entertainment world',
                        style: TextStyle(
                            fontSize: width * 0.071, fontFamily: 'Imprima'),
                      ),
                    ],
                  )),
              SizedBox(
                height: height * 0.1,
              ),
              SizedBox(
                height: 50,
                child: ShaderMask(
                    blendMode: BlendMode.srcIn,
                    shaderCallback: (rect) => const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xff2C81F8),
                              Color(0xff03194B),
                            ]).createShader(rect),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 7.0, top: 10),
                          child: Text(
                            'CREATE',
                            style: TextStyle(
                                fontSize: width * 0.11, fontFamily: 'Satisfy'),
                          ),
                        ),
                      ],
                    )),
              ),
              ShaderMask(
                  blendMode: BlendMode.srcIn,
                  shaderCallback: (rect) => const LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.topLeft,
                          colors: [
                            Color(0xff2C81F8),
                            Color(0xff03194B),
                          ]).createShader(rect),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        ' your own story and\n share it with\n the world',
                        style: TextStyle(
                            fontSize: width * 0.11, fontFamily: 'Imprima'),
                      ),
                    ],
                  )),
              SizedBox(
                height: height * 0.2,
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
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Slider1()),
                        );
                      },
                      child: Text(
                        'Get started',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: width * 0.055,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.5),
                      ))),
              SizedBox(
                height: height * 0.04,
              ),
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.bottomCenter,
                children: [
                  Image(
                      image: const AssetImage(
                        'assets/logo.png',
                      ),
                      height: height * 0.05,
                      width: width * 0.10,
                      fit: BoxFit.fitHeight),
                  Positioned(
                    top: 28,
                    child: Text(
                      'myttube',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color(0xff18346D),
                        fontFamily: 'Satisfy',
                        fontSize: width * 0.08,
                        shadows: const [
                          Shadow(
                            blurRadius: 8.0,
                            color: Color(0xff0087FF),
                            offset: Offset(1.0, 1.0),
                          ),
                        ],
                      ),
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
