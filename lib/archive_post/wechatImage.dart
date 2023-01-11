import 'dart:html';

import 'package:flutter/material.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';

class WechatImage extends StatefulWidget {
  const WechatImage({Key? key}) : super(key: key);

  @override
  State<WechatImage> createState() => _WechatImageState();
}

class _WechatImageState extends State<WechatImage> {
  late final List<AssetEntity>? result;
  File? file;
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
                result = await AssetPicker.pickAssets(
                  context,
                  pickerConfig: const AssetPickerConfig(),
                );
                print(result);
              },
              child: Text("btn")),
        
        ],
      ),
    );
  }
}
