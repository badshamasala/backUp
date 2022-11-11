import 'dart:async';

import 'package:flutter_application_1/ONBOARDING/phonenumber.dart';
import 'package:get/get.dart';

class GetUpdateSeconds extends GetxController {
  var seconds = 30;

  late Timer? timer;
/*   bool isSheetOpen = false;

  late Function sheetSetState; */
  bool timerkhatam1 = true;
  void startTimer() {
    print('---------------------------');
    print('badsmadladknsk');
    timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (seconds > 0) {
        seconds--;
        timerchalu();
        update();
      } else {
        timer!.cancel();
        timerband();
        /*       PhoneNumber().timerkhatam = false; */
        update();
      }
    });
  }

  timerchalu() {
    timerkhatam1 = true;
    update();
  }

  timerband() {
    timerkhatam1 = false;
    update();
  }
}
