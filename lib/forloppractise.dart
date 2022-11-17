// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Forloppractise extends StatefulWidget {
  const Forloppractise({Key? key}) : super(key: key);

  @override
  State<Forloppractise> createState() => _ForloppractiseState();
}

class _ForloppractiseState extends State<Forloppractise> {
  final ForGetUpdate getkar = Get.put(ForGetUpdate());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Column(
        children: [
          GetBuilder<ForGetUpdate>(builder: (controller) {
            return ListView.builder(
                shrinkWrap: true,
                itemCount: getkar.newlist.length,
                itemBuilder: (context, index) {
                  return Text(getkar.newlist[index]);
                });
          }),
          ElevatedButton(
              onPressed: () {
                getkar.badshakamethod();
              },
              child: const Text('button'))
        ],
      ),
    );
  }
}

class ForGetUpdate extends GetxController {
  var forkilist = [
    'rashid',
    'farhan',
    'badsha',
    'masala',
    'pasta',
  ];
  var newlist = [];
  badshakamethod() {
    for (int i = 0; i < forkilist.length; i++) {
    /*   newlist.add(forkilist[i]); */
      newlist.add(forkilist[i]);
      if (    newlist.isNotEmpty) {
        print(newlist);
     
      }
    }
    update();
  }
  badshamasala(){
   
  }
}
