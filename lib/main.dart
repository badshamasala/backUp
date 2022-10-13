
import 'package:flutter/material.dart';
import 'package:flutter_application_1/api.dart';
import 'package:flutter_application_1/homepage/homepage.dart';
import 'package:flutter_application_1/loginpage.dart';
import 'package:flutter_application_1/uploadimage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: UploadImage(),
    );
  }
}
