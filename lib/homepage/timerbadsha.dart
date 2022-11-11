import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/GETX/gettimer.dart';
import 'package:get/get.dart';

class Timerbadsha extends StatefulWidget {
  const Timerbadsha({Key? key}) : super(key: key);

  @override
  State<Timerbadsha> createState() => _TimerbadshaState();
}

class _TimerbadshaState extends State<Timerbadsha> {
  /*  var seconds = 30;

  Timer? timer;
  bool isSheetOpen = false;

  late Function sheetSetState;

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (_) {
      if (isSheetOpen) {
        sheetSetState(() {
          if (seconds > 0) {
            setState(() => seconds--);
          } else {
            timer!.cancel();
          }
        });
      }
    });
  } */

 final GetUpdateSeconds getkar = Get.put(GetUpdateSeconds());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Column(
        children: [
     /*      Text('sssss'), */
          GetBuilder<GetUpdateSeconds>(
            builder: (builder) => Text(
              '${getkar.seconds}',
              style: TextStyle(fontSize: 25),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                getkar.startTimer();
                showModalBottomSheet(
                    context: context,
                    builder: ((context) {
                      return StatefulBuilder(builder:
                          (BuildContext context, /* StateSetter */ setState) {
                        /*   sheetSetState = setState; */
                        return Column(
                          children: [
                          GetBuilder<GetUpdateSeconds>(
            builder: (builder) => Text(
              '${getkar.seconds}',
              style: TextStyle(fontSize: 25),
            ),
          ),], );
                      });
                    }));
              },
              child: Text('stb'))
        ],
      ),
    );
  }
}


