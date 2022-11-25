import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:screenshot/screenshot.dart';

class ScreenshotImage extends StatefulWidget {
  const ScreenshotImage({Key? key}) : super(key: key);

  @override
  State<ScreenshotImage> createState() => _ScreenshotImageState();
}

class _ScreenshotImageState extends State<ScreenshotImage> {
  ScreenshotController screenShot = ScreenshotController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Screenshot(
            controller: screenShot,
            child: Container(
                width: 100,
                height: 100,
                color: Colors.red,
                child: Center(child: Text('text'))),
          ),
          ElevatedButton(
              onPressed: () {
                SystemNavigator.pop();
                /*    screenShot
                    .capture(delay: Duration(milliseconds: 10))
                    .then((capturedImage) async {
                  ShowCapturedWidget(context, capturedImage!);
                }).catchError((onError) {
                  print(onError);
                }); */
              },
              child: Text('btn'))
        ],
      ),
    );
  }

  Future<dynamic> ShowCapturedWidget(
      BuildContext context, Uint8List capturedImage) {
    return showDialog(
      useSafeArea: false,
      context: context,
      builder: (context) => Scaffold(
        appBar: AppBar(
          title: Text("Captured widget screenshot"),
        ),
        body: Center(
            child: capturedImage != null
                ? Image.memory(capturedImage)
                : Container()),
      ),
    );
  }
}
