import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';

multiplepage(context) async {
  List<XFile>? result = (await ImagePicker().pickMultiImage());
  // FilePickerResult? result = await FilePicker.platform.pickFiles(
  //   allowMultiple: true,
  //   type: FileType.custom,
  //   allowedExtensions: ['jpg', 'png', 'jpeg', 'webp'],
  // );
  // print(result![0].path);
  List imagelistList = [];
  List multiimagelist = [];
  File _image1;

  if (result != null) {
    if (imagelistList != []) {
      multiimagelist = [];
      for (int j = 0; j < result.length; j++) {
        _image1 = File(result[j].path.toString());

        int checkinmbimage = _image1.lengthSync();
        double sizeInMbimage = checkinmbimage / (1024 * 1024);

        if (sizeInMbimage > 11) {
          Widget okButton = TextButton(
            child: Text("OK"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          );
          print('Image must be less than 10 MB');
          AlertDialog alert = AlertDialog(
            title: Text(" Alert"),
            content: Text("Image must be less than 10 MB"),
            actions: [
              okButton,
            ],
          );

          // show the dialog
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return alert;
            },
          );
        } else {
          imagelistList.add(result[j].path.toString());
        }
      }
      multiimagelist = imagelistList;

      if (imagelistList.length > 10) {
        Fluttertoast.showToast(msg: ' Max 10 images.');
        multiimagelist = [];
        for (int i = 0; i < 10; i++) {
          multiimagelist.add(imagelistList[i]);
        }
      }
    } else {
      imagelistList = result.map((path) => path.toString()).toList();
      if (imagelistList.length > 10) {
        Fluttertoast.showToast(msg: ' Max 10 images.');
        for (int i = 0; i < 10; i++) {
          multiimagelist.add(imagelistList[i]);
        }
      }
    }
    /* setState(() {
      // images = imagelistList;
      option = 'multi';
    }); */
/*     print(images); */
    print(multiimagelist);
  }
  // if (result != null) {
  //   imagelistList = result.paths.map((path) => path.toString()).toList();
  //   setState(() {});
  //   print(imagelistList);
  // }

  // print(imagelistList[0]);
}
