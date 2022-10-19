import 'package:flutter/material.dart';
import 'package:flutter_application_1/api.dart';
import 'package:flutter_application_1/homepage/api2.dart';
import 'package:flutter_application_1/homepage/api3.dart';
import 'package:flutter_application_1/homepage/api_dusra_method.dart';
import 'package:flutter_application_1/homepage/homepage.dart';
import 'package:flutter_application_1/homepage/news_api.dart';
import 'package:flutter_application_1/homepage/video_player.dart';
import 'package:flutter_application_1/provider.dart';
import 'package:provider/provider.dart';

import 'homepage/apibadsha.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ValidationProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Api123(),
      ),
    );
  }
}
