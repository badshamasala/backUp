import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class GetUpdateSeconds extends GetxController {
  File? image;

  pickforprofile123(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;
      final imageTemporary = File(image.path);

      this.image = imageTemporary;
    } on PlatformException catch (e) {
      if (kDebugMode) {
        print('Failed to pick image: $e');
      }
    }
    update();
  }

  var seconds = 30;

  late Timer? timer;

  bool timerkhatam1 = true;
  void startTimer() {
    print('---------------------------');
    print('badsmadladknsk');
    timer = Timer.periodic(Duration(seconds: 1), (_) {
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

class GetImage extends GetxController {
  File? image;
  File? image1;
 

  pickforprofile(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);

      if (image == null) return;

      final imageTemporary = File(image.path);

      this.image = imageTemporary;
    } on PlatformException catch (e) {
      if (kDebugMode) {
        print('Failed to pick image: $e');
      }
    }
    update();
  }

  

  pickforbanner(ImageSource source) async {
    try {
      final image1 = await ImagePicker().pickImage(source: source);
      if (image1 == null) return;
      final imageTemporary = File(image1.path);

      this.image1 = imageTemporary;
    } on PlatformException catch (e) {
      if (kDebugMode) {
        print('Failed to pick image: $e');
      }
    }
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