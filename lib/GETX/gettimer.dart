import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class GetUpdateSeconds extends GetxController {
  var seconds = 30;

  late Timer? timer;

  bool timerkhatam1 = true;
  void startTimer() {
    print('---------------------------');
    print('badsmadladknsk');
    timer = Timer.periodic( Duration(seconds: 1), (_) {
      if (seconds > 0) {
        seconds--;
        timerchalu();
        update();
      } else {
        timer!.cancel();
        timerband();
        /* timerkinewvalue(); */
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

  nayamethod() {
    timerkhatam1 = true;
    seconds = 30;
    startTimer();
    update();
  }
}
/* class ProviderUpdateSeconds extends ChangeNotifier{


   int seconds = 30;
   int get _seconds => seconds;

  late Timer? timer;

  bool timerkhatam1 = true;
  void startTimer() {
    print('---------------------------');
    print('badsmadladknsk');
    timer = Timer.periodic( Duration(seconds: 1), (_) {
      if (seconds > 0) {
        seconds--;
        timerchalu();
        notifyListeners();
      } else {
        timer!.cancel();
        timerband();
        /* timerkinewvalue(); */
     notifyListeners();
      }
    });
  }


  
  timerchalu() {
    timerkhatam1 = true;
    notifyListeners();
  }

  timerband() {
    timerkhatam1 = false;
   notifyListeners();
  }

  nayamethod() {
    timerkhatam1 = true;
    seconds = 30;
    startTimer();
  notifyListeners();
  }

}
 */