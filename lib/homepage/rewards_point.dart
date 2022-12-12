import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scratcher/scratcher.dart';

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
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              size: 25,
              color: primaryColorOfApp,
            )),
        title: const Text(
          'Rewards Points',
          style: TextStyle(
              fontFamily: 'Poppins', color: customTextColor, fontSize: 14),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            Scratcher(
              onScratchEnd: () {},
              image: Image.asset(
                'assets/scratchcard.png',
              ),
              brushSize: 30,
              threshold: 50,
              color: primaryColorOfApp,
              onChange: (value) => debugPrint("Scratch progress: $value%"),
              onThreshold: () => log("Threshold reached, you won!"),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  height: 250,
                  width: 275,
                  color: Colors.white,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
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
                steps: [
                  Step(
                    title: const Text('Step 1 title'),
                    content: const Text(''),
                  ),
                  const Step(
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
