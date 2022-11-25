import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scratcher/scratcher.dart';

class ScratchCard extends StatefulWidget {
  const ScratchCard({Key? key}) : super(key: key);

  @override
  State<ScratchCard> createState() => _ScratchCardState();
}

class _ScratchCardState extends State<ScratchCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Column(
        children: [
          Scratcher(
            onScratchEnd: () {
            },
            image:  Image.asset(
              'assets/logo.png',
              height: 50,
              width: 50,
            ),
            brushSize: 30,
            threshold: 50,
            color: primaryColorOfApp,
            onChange: (value) => debugPrint("Scratch progress: $value%"),
            onThreshold: () => log("Threshold reached, you won!"),
            child: Container(
              height: 300,
              width: 300,
              color: Colors.white,
              child: SvgPicture.asset('assets/scratch.svg'),
            ),
          )
        ],
      ),
    );
  }
}
