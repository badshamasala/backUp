// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class StackAndPositionedDemo extends StatefulWidget {
  const StackAndPositionedDemo({super.key});

  @override
  _StackAndPositionedDemoState createState() => _StackAndPositionedDemoState();
}

class _StackAndPositionedDemoState extends State<StackAndPositionedDemo> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
   
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack & Positioned Widget'),
        centerTitle: true,
      ),
      body: Column(

        children: [
          SizedBox(
            height: 200,
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 20,
                  left: 20,
                  height: 50,
                  width: 280,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 0.5, color: const Color(0xff515253)),
                        borderRadius: BorderRadius.circular(10)),
                    /*  width: 150,
                    height: 150, */
                    /*  color: Colors.green[300], */
                    child: Row(
                      children: [
                        SizedBox(
                          width: width * 0.08,
                        ),
                        const Icon(
                          Icons.lock,
                          color: Color(0xffC4C4C4),
                        ),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        Text(
                          '+91 8689880061',
                          style: TextStyle(
                              color: const Color(0xffC4C4C4),
                              fontFamily: 'Poppins',
                              fontSize: width * 0.06),
                            ),
                        SizedBox(
                          width: width * 0.15,
                        ),
                        const Icon(
                          Icons.check_circle_outline,
                          color: Colors.green,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 13,
                  left: 50,
                  width: 180,
                  height: 10,
                  child: Container(
                    /*   width: 200,
                    height: 150, */
                    color: Colors.white,
                    child: const Text(
                      'Your 10 digit Mobile number is verified',
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
        ],
      ),
    );
  }
}
