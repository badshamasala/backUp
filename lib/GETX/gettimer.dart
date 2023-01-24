// ignore_for_file: avoid_print

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/CHAT_APP/shared_preference.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

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
    timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (seconds > 0) {
        seconds--;
        timerchalu();
        update();
      } else {
        timer!.cancel();
        timerband();
        update();
      }
    });
  }

  timerchalu() {
    timerkhatam1 = true;
    update();
  }

  methodAfterNavigation() {
    print('++++++++++++++++++++++++++++++');
    timer!.cancel();
    timerkhatam1 = true;
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
  File? image2;
  File? image3;
  File? image4;
  File? image5;
  File? image6;
  File? imagePost;
  List<XFile> imageList = [];
  List<XFile> imagePostList = [];
  List<String> imagePostPathList = [];

  pickforprofile(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);

      if (image == null) return;

      File? imageTemporary = File(image.path);
      imageTemporary = await cropImage(imageTemporary);
      this.image = imageTemporary;

      final bytes = File(image.path).readAsBytesSync();
      String base64Image = /* "data:image/png; base64,"+ */ base64Encode(bytes);

      print("img_pan : $base64Image");
      SharedPref.savemytubeProfileImage(base64Image);
    } on PlatformException catch (e) {
      if (kDebugMode) {
        print('Failed to pick image: $e');
      }
    }
    update();
  }

  removeImage() {
    image = null;
    update();
  }

  removeImagebanner() {
    image1 = null;
    update();
  }

  pickforbanner(ImageSource source) async {
    try {
      final image1 = await ImagePicker().pickImage(source: source);
      if (image1 == null) return;

      File? imageTemporary = File(image1.path);
      imageTemporary = await cropImage(imageTemporary);
      this.image1 = imageTemporary;
    } on PlatformException catch (e) {
      if (kDebugMode) {
        print('Failed to pick image: $e');
      }
    }
    update();
  }

  Future<File?> cropImage(File imageFile) async {
    CroppedFile? croppedFile = await ImageCropper().cropImage(
      sourcePath: imageFile.path,
      aspectRatioPresets: [
        CropAspectRatioPreset.square,
        CropAspectRatioPreset.ratio3x2,
        CropAspectRatioPreset.original,
        CropAspectRatioPreset.ratio4x3,
        CropAspectRatioPreset.ratio16x9
      ],
      uiSettings: [
        AndroidUiSettings(
            toolbarTitle: 'Cropper',
            toolbarColor: primaryColorOfApp,
            toolbarWidgetColor: Colors.white,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: false),
        IOSUiSettings(
          title: 'Cropper',
        ),
      ],
    );
    if (croppedFile == null) return null;
    return File(croppedFile.path);
  }

  pickforAds(ImageSource source) async {
    try {
      final image2 = await ImagePicker().pickImage(source: source);
      if (image2 == null) return;
      File? imageTemporary = File(image2.path);
      imageTemporary = await cropImage(imageTemporary);
      this.image2 = imageTemporary;
    } on PlatformException catch (e) {
      if (kDebugMode) {
        print('Failed to pick image: $e');
      }
    }
    update();
  }

  pickfordoubleAds1(ImageSource source) async {
    try {
      final image3 = await ImagePicker().pickImage(source: source);
      if (image3 == null) return;
      File? imageTemporary = File(image3.path);
      imageTemporary = await cropImage(imageTemporary);
      this.image3 = imageTemporary;
    } on PlatformException catch (e) {
      if (kDebugMode) {
        print('Failed to pick image: $e');
      }
    }
    update();
  }

  pickfordoubleAds2(ImageSource source) async {
    try {
      final image4 = await ImagePicker().pickImage(source: source);
      if (image4 == null) return;
      File? imageTemporary = File(image4.path);
      imageTemporary = await cropImage(imageTemporary);
      this.image4 = imageTemporary;
    } on PlatformException catch (e) {
      if (kDebugMode) {
        print('Failed to pick image: $e');
      }
    }
    update();
  }

  pickpretopper(ImageSource source) async {
    try {
      final image5 = await ImagePicker().pickImage(source: source);
      if (image5 == null) return;
      File? imageTemporary = File(image5.path);
      imageTemporary = await cropImage(imageTemporary);
      this.image5 = imageTemporary;
    } on PlatformException catch (e) {
      if (kDebugMode) {
        print('Failed to pick image: $e');
      }
    }

    print("------------------------$image5");
    update();
  }

  pickpreBusiness(ImageSource source) async {
    try {
      final image6 = await ImagePicker().pickImage(source: source);
      if (image6 == null) return;
      File? imageTemporary = File(image6.path);
      imageTemporary = await cropImage(imageTemporary);
      this.image6 = imageTemporary;
    } on PlatformException catch (e) {
      if (kDebugMode) {
        print('Failed to pick image: $e');
      }
    }
    update();
  }

  pickpreBusinessGroup() async {
    try {
      final List<XFile> selectedImage = await ImagePicker().pickMultiImage();
      if (selectedImage == null) return;
      if (selectedImage.isNotEmpty) {
        imageList.addAll(selectedImage);
      }
      print("----------------------------------${imageList.length}");
    } on PlatformException catch (e) {
      if (kDebugMode) {
        print('Failed to pick image: $e');
      }
    }
    update();
  }

  List<double> newlist = [];
  /* List newlist = []; */
  dynamic sum = 0;
  var checkimagesize;
  pickforImagePost() async {
    try {
      final List<XFile> imagePost =
          await ImagePicker().pickMultiImage(imageQuality: 40);
      if (imagePost == null) return;

      if (imagePost.length >= 5) {
        print("for loop chal ra hai matlab");
        Fluttertoast.showToast(
            msg: 'Maxium 5 images at a time',
            backgroundColor: Colors.black,
            textColor: Colors.white,
            fontSize: 16.0);

        imagePostList.clear();
        for (var i = 0; i < 5; i++) {
          checkimagesize = (((await imagePost[i].readAsBytes()).length) / 1024);
          newlist.add(checkimagesize);
          if (checkimagesize < 501) {
            imagePostList.add(imagePost[i]);
            imagePostPathList.add(imagePost[i].path);
          }

          /*     sum += newlist[i]; */

          print(
              "Sum of all images size------------------------------------------$sum");
          print(
              "NewList--------------------------------------------------$newlist");
          /* print("Read as Byte----------------------------------${(await imagePost[i].readAsBytes()).length}"); */
          print(
              "KB Size---1------------------------------------$checkimagesize");
        }
      } else if (imagePostList.length < 5) {
        checkimagesize =
            (((await imagePost.map((e) => e.readAsBytes())).length) / 1024);
        print("for loop chal ra hai matlab");
        print("KB Size---2------------------------------------$checkimagesize");
        imagePostList.clear();
        for (var i = 0; i < imagePost.length; i++) {
          checkimagesize = (((await imagePost[i].readAsBytes()).length) / 1024);
          newlist.add(checkimagesize);
          if (checkimagesize < 501) {
            imagePostList.add(imagePost[i]);
            imagePostPathList.add(imagePost[i].path);
          }

          /*     sum += newlist[i]; */

          print(
              "Sum of all images size------------------------------------------$sum");
          print(
              "NewList--------------------------------------------------$newlist");
          /* print("Read as Byte----------------------------------${(await imagePost[i].readAsBytes()).length}"); */
          print(
              "KB Size---2------------------------------------$checkimagesize");
        }
        /* if (checkimagesize <501) {
            imagePostList.addAll(imagePost);
        imagePostPathList.addAll(imagePost.map((e) => e.path).toList());
        } */

      }

      print("----------------------------------${imagePostList.length}");
      print("IMAGE1----------------------------------$imagePostList");
      print("IMAGE2----------------------------------$imagePost");
    } on PlatformException catch (e) {
      if (kDebugMode) {
        print('Failed to pick image: $e');
      }
    }
    update();
  }

  File? videopath;
  VideoPlayerController? videoPlayerController;
  pickforVideoPost() async {
    var picker = ImagePicker();
    XFile? video = await picker.pickVideo(
      source: ImageSource.gallery,
    );
    if (video == null) return;

    videopath = File(video.path);
    videoPlayerController = VideoPlayerController.file(videopath!)
      ..initialize().then((_) {
        videoPlayerController!.play();
      });
    print("Path----------------------------------------------${video.path}");
    print("Video----------------------------------------------$video");
    update();
  }
}


