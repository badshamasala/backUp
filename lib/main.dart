import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/accounttype.dart';
import 'package:flutter_application_1/datepicker.dart';
import 'package:flutter_application_1/formfill.dart';
import 'package:flutter_application_1/hsjhjs.dart';
import 'package:flutter_application_1/loginpage.dart';
import 'package:flutter_application_1/position.dart';
import 'package:flutter_application_1/slider.dart';
import 'package:flutter_application_1/startPage.dart';
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
      home: LoginPage(),
    );
  }
}
