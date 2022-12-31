import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
// ignore: unused_import
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:scratcher/scratcher.dart';
import 'package:sizer/sizer.dart';

class RewardsPoint extends StatefulWidget {
  const RewardsPoint({Key? key}) : super(key: key);

  @override
  State<RewardsPoint> createState() => _RewardsPointState();
}

class _RewardsPointState extends State<RewardsPoint> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 7.h,
        automaticallyImplyLeading: false,
        titleSpacing: -2.sp,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('Rewards points',
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
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            Image.asset(
              'assets/uber.jpg',
              height: 30.h,
              width: 90.w,
              fit: BoxFit.cover,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  'How does it work?',
                  style: TextStyle(fontSize: 15, fontFamily: 'Poppins'),
                ),
              ],
            ),
            Stepper(
                currentStep: _index,
                onStepCancel: () {
                  if (_index > 0) {
                    setState(() {
                      _index -= 1;
                    });
                  }
                },
                onStepContinue: () {
                  if (_index <= 0) {
                    setState(() {
                      _index += 1;
                    });
                  }
                },
                onStepTapped: (int index) {
                  setState(() {
                    _index = index;
                  });
                },
                steps: const [
                  Step(
                    title: Text('Step 1 title'),
                    content: Text(''),
                  ),
                  Step(
                    title: Text('Step 2 title'),
                    content: Text('Content for Step 2'),
                  ),
                ])
          ],
        ),
      ),
    );
  }
}
