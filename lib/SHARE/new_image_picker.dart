import 'dart:io';
import 'dart:ui';

import 'package:drishya_picker/drishya_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';

class NewImagePicker extends StatefulWidget {
  const NewImagePicker({Key? key}) : super(key: key);

  @override
  State<NewImagePicker> createState() => _NewImagePickerState();
}

class _NewImagePickerState extends State<NewImagePicker> {
  late final GalleryController controller;
  List selectedEntities = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = GalleryController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () async {
                var pickedImage = await controller.pick(
                  context,
                );
                print('Image ---- $pickedImage');
                /*      File file = File(2,pickedImage) */
              },
              child: Text('btn')),
          GalleryViewField(
            onChanged: (entity, removed) {},
            onSubmitted: (list) {},
            child: Column(
              children: [
                Icon(Icons.camera),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
