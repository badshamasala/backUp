// ignore_for_file: avoid_print


import 'package:drishya_picker/drishya_picker.dart';
import 'package:flutter/material.dart';

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
    // ignore: todo
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
              child: const Text('btn')),
          GalleryViewField(
            onChanged: (entity, removed) {},
            onSubmitted: (list) {},
            child: Column(
              children: const [
                Icon(Icons.camera),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
